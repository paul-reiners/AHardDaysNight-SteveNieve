\version "2.24.0"
\header {
  title = "I Should Have Known Better"
  subtitle = "Keyboard part transcribed from the Reiners piano–organ recording"
  tagline = ##f
}
\paper { #(set-paper-size "letter") }
chords = \chordmode {
  s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 e1:m c1 g1 b1:7 e1:m e1:m g1 g1:7 c1 d1 g1 e1:m c1 d1 g1 g1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 e1:m c1 g1 b1:7 e1:m e1:m g1 g1:7 c1 d1 g1 e1:m c1 d1 g1 g1
}
keys = {
  \key g \major \time 4/4 \clef treble
  \tempo "Approx." 4 = 131
  \set Score.barNumberVisibility = #all-bar-numbers-visible
  \mark \markup \box "Opening"
  R1*22 | % 1–22
  <e' g' b'>4-. r4 r2 | % 23
  <e' g' c''>4-. r4 r2 | % 24
  <b d' g'>4-. r4 r2 | % 25
  <dis' fis' b'>4-. r4 r2 | % 26
  <e' g' b'>4-. r4 r2 | % 27
  <e' g' b'>4-. r4 r2 | % 28
  <b d' g'>4-. r4 r2 | % 29
  <b d' g'>4-. r4 r2 | % 30
  <c' e' g'>4-. r4 r2 | % 31
  <d' fis' a'>4-. r4 r2 | % 32
  <b d' g'>4-. r4 r2 | % 33
  <e' g' b'>4-. <e' g' b'>4-. <e' g' b'>4-. <e' g' b'>4-. | % 34
  <c' e' g'>4-. r4 r2 | % 35
  <d' fis' a'>4-. r4 r2 | % 36
  <b d' g'>1 | % 37
  <b d' g'>1 | % 38
  R1*10 | % 39–48
  \mark \markup \box "Solo"
  \clef bass
  r2 a,4 d4-. | % 49
  R1*2 | % 50–51
  b,4 g,4-. r2 | % 52
  R1*1 | % 53–53
  b,4 e4-. r2 | % 54
  g,4 c4-. r2 | % 55
  a,4 d4-. r2 | % 56
  r2 a,4 d4-. | % 57
  b,2 a,2 | % 58
  R1*8 | % 59–66
  \mark \markup \box "Return"
  \clef treble
  <e' g' b'>4-. r4 r2 | % 67
  <e' g' b' c''>4-.^\markup \italic \tiny "B4?" r4 r2 | % 68
  <b d' g'>4-. r4 r2 | % 69
  <dis' fis' b'>4-. r4 r2 | % 70
  <e' g' b'>4-. r4 r2 | % 71
  <e' g' b'>4-. r4 r2 | % 72
  <b d' g'>4-. r4 r2 | % 73
  <b d' g'>4-. r4 r2 | % 74
  <c' e' g'>4-. r4 r2 | % 75
  <d' fis' a'>4-. r4 r2 | % 76
  <b d' g'>4-. r4 r2 | % 77
  <e' g' b'>4-. <e' g' b'>4-. <e' g' b'>4-. <e' g' b'>4-. | % 78
  <c' e' g'>4-. r4 r2 | % 79
  <d' fis' a'>4-. r4 r2 | % 80
  <b d' g'>1 | % 81
  <b d' g'>1 | % 82
  \bar "|."
}
\score { << \new ChordNames \chords \new Staff \compressMMRests \keys >> \layout {} }
\markup \small \wordwrap { Beat placement and releases are approximate. Solo is at sounding pitch.
At bar 68, B4 sounds with C5; whether B4 was intended is uncertain.
No further keyboard attack is apparent after bar 82. }
\score { \new Staff \with { midiInstrument = "acoustic grand" } \keys \midi {} }
