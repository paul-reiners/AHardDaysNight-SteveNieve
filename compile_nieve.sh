#!/bin/bash
# Usage: bash compile_nieve.sh [folder]
script_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P) || exit 1
root=${1:-"$script_dir/scores"}
cd -- "$root" || exit 1
root=$PWD
work=$(mktemp -d "${TMPDIR:-/tmp}/nieve.XXXXXXXX") || exit 1
trap 'rm -rf -- "$work"' EXIT
trap 'exit 130' INT
trap 'exit 143' TERM
find "$root" -type f \( -name '*.ly' -o -name '*.md' \) -print0 > "$work/list" || exit 1

compile_one() (
    src=$1
    cd -- "${src%/*}" || exit 1
    name=${src##*/}
    stem=${name%.*}
    target="./$stem.pdf"
    stage=$(mktemp -d './.nieve-build.XXXXXXXX') || exit 1
    trap 'rm -rf -- "$stage"' EXIT
    case "$name" in
        *.ly)
            lilypond --pdf -o "$stage/result" "./$name" || exit 1
            ;;
        *.md)
            # Give notes their own PDF when the score has the same name.
            if [[ -f "./$stem.ly" ]]; then target="./$name.pdf"; fi
            pandoc --from=markdown --standalone --pdf-engine=tectonic \
                -o "$stage/result.pdf" "./$name" || exit 1
            ;;
    esac
    shopt -s nullglob
    pdfs=("$stage"/*.pdf)
    if [[ ${#pdfs[@]} -ne 1 || ! -s "${pdfs[0]}" ]]; then
        echo "Expected one PDF for $src. Check its output settings." >&2
        exit 1
    fi
    [[ ! -d "$target" ]] || return 1
    mv -f -- "${pdfs[0]}" "$target" || exit 1
    printf 'Saved %s/%s\n' "$PWD" "${target#./}"
)

ok=0
failed=0
while IFS= read -r -d '' src; do
    if compile_one "$src" </dev/null; then
        ((ok+=1))
    else
        printf 'FAILED: %s\n' "$src" >&2
        ((failed+=1))
    fi
done < "$work/list"
printf '\n%s compiled, %s failed.\n' "$ok" "$failed"
((failed == 0))
