\version "2.26.0"

\header {
  title = "Can't Buy Me Love"
  subtitle = "Keyboard parts inspired by Steve Nieve"
}

\score {
  <<
  % Chord symbols follow the instructor's bass chart, including both C7 bars
  % in each B section. The pickup is instructor measure 1.
  \new ChordNames {
    \chordmode {
      \partial 8 s8 |
      % Chorus intro — measures 2–7
      e1:m | a1:m | e1:m | a1:m |
      d1:m | g1 |
      % A — measures 8–19
      c1:7 | c1:7 | c1:7 | c1:7 |
      f1:7 | f1:7 | c1:7 | c1:7 |
      g1:7 | f1:7 | f1:7 | c1:7 |
      % A repeat — measures 20–31
      c1:7 | c1:7 | c1:7 | c1:7 |
      f1:7 | f1:7 | c1:7 | c1:7 |
      g1:7 | f1:7 | f1:7 | c1:7 |
      % B — measures 32–39
      e1:m | a1:m | c1:7 | c1:7 |
      e1:m | a1:m | d1:m | g1 |
      % A + tag — measures 40–52
      c1:7 | c1:7 | c1:7 | c1:7 |
      f1:7 | f1:7 | c1:7 | c1:7 |
      g1:7 | f1:7 | f1:7 | c1:7 |
      c1:7 |
      % Guitar solo — measures 53–64
      c1:7 | c1:7 | c1:7 | c1:7 |
      f1:7 | f1:7 | c1:7 | c1:7 |
      g1:7 | f1:7 | f1:7 | c1:7 |
      % B repeat — measures 65–72
      e1:m | a1:m | c1:7 | c1:7 |
      e1:m | a1:m | d1:m | g1 |
      % A return — measures 73–84
      c1:7 | c1:7 | c1:7 | c1:7 |
      f1:7 | f1:7 | c1:7 | c1:7 |
      g1:7 | f1:7 | f1:7 | c1:7 |
      % Chorus outro — measures 85–92
      e1:m | a1:m | e1:m | a1:m |
      d1:m | g1 | c1:7 | c1:7 |
    }
  }

  \new Staff \with {
    instrumentName = "Vox Continental"
    shortInstrumentName = "Vox"
  } {
    \clef treble
    \time 4/4

    % The instructor counts the eighth-note pickup as measure 1.
    % Show all bar numbers and keep the pickup's real 1/8 duration.
    \override Score.BarNumber.break-visibility = ##(#f #f #t)
    \set Score.currentBarNumber = #1

    % Instructor measure 1: eighth-note pickup
    \mark \markup { \box "ch intro" }
    \partial 8 r8 |

    % Instructor measure 2 is the first FULL measure.
    \set Score.currentBarNumber = #2

    % Measure 2: E minor
    <e' g' b'>8 r8 <e' g' b'>8 r8 r2 |

    % Measure 3: A minor
    r4 <e' a' c''>8 r8 <e' a' c''>8 r8 r4 |

    % Measure 4: E minor
    <e' g' b'>8 r8 r4 r2 |

    % Measure 5: A minor
    r4 <e' a' c''>8 r8 <e' a' c''>8 r8 r4 |

    % Measure 6: D minor
    r4 <f' a' d''>8 r8 <f' a' d''>8 r8 r4 |

    % Measure 7: G major — end of introduction
    \set Score.currentBarNumber = #7
    <g' b' d''>8 r8 <g' b' d''>2 r4 |
    \bar "||"

    % Measure 8: Section A — C7
    % Explicit anchor: the boxed A must coincide with instructor bar 8.
    \set Score.currentBarNumber = #8
    \mark \markup { \box "A" }
    <g' bes' c'' e''>2 r2 |

    % Measure 9: C7
    <g' bes' c'' e''>8 r8 <g' bes' c'' e''>2 r4 |

    % Measure 10: C7 — repeat of measure 8
    <g' bes' c'' e''>2 r2 |

    % Measure 11: C7 — melodic variation
    <g' bes' c'' e''>8 r8 <g' bes' c'' f''>2 r4 |

    % Measure 12: F7
    <a' c'' es'' f''>8 r8 <a' c'' es'' f''>8 r8 r2 |

    % Measure 13: F7 — rhythmic variation
    r4 <a' c'' es'' f''>4 <a' c'' es'' f''>8 r8 r4 |

    % Measure 14: C7
    <g' bes' c'' e''>8 r8 <g' bes' c'' e''>2 r4 |

    % Measure 15: C7 (repeat measure 14)
    <g' bes' c'' e''>8 r8 <g' bes' c'' e''>2 r4 |

    % Measure 16: G7
    <g' b' d'' f''>2 r2 |

    % Measure 17: F7 — one short eighth-note stab on beat 2
    r4 <a' c'' es'' f''>8 r8 r2 |

    % Measure 18: F7 — corrected to match the instructor's bass/guitar charts
    <a' c'' es'' f''>2 r2 |

    % Measure 19: C7 — one simple eighth-note stab on beat 2
    r4 <g' bes' c'' e''>8 r8 r2 |

    % Measure 20: Section A repeats, using the same twelve-bar material.
    \set Score.currentBarNumber = #20
    \mark \markup { \box "A" }
    <g' bes' c'' e''>2 r2 |

    % Measure 21: C7 (same as m. 9)
    <g' bes' c'' e''>8 r8 <g' bes' c'' e''>2 r4 |

    % Measure 22: C7 (same as m. 10)
    <g' bes' c'' e''>2 r2 |

    % Measure 23: C7 (same as m. 11)
    <g' bes' c'' e''>8 r8 <g' bes' c'' f''>2 r4 |

    % Measure 24: F7 (same as m. 12)
    <a' c'' es'' f''>8 r8 <a' c'' es'' f''>8 r8 r2 |

    % Measure 25: F7 (same as m. 13)
    r4 <a' c'' es'' f''>4 <a' c'' es'' f''>8 r8 r4 |

    % Measure 26: C7 (same as m. 14)
    <g' bes' c'' e''>8 r8 <g' bes' c'' e''>2 r4 |

    % Measure 27: C7 (same as m. 15)
    <g' bes' c'' e''>8 r8 <g' bes' c'' e''>2 r4 |

    % Measure 28: G7 (same as m. 16)
    <g' b' d'' f''>2 r2 |

    % Measure 29: F7 (same as m. 17)
    r4 <a' c'' es'' f''>8 r8 r2 |

    % Measure 30: F7 (same as m. 18)
    <a' c'' es'' f''>2 r2 |

    % Measure 31: C7 (same as m. 19)
    r4 <g' bes' c'' e''>8 r8 r2 |

    % Section B — measures 32–39 (eight bars on the instructor's chart).
    \set Score.currentBarNumber = #32
    \mark \markup { \box "B" }

    % 32 Em
    <e' g' b'>2 r2 |
    % 33 Am
    r4 <e' a' c''>4 r2 |
    % 34 C7
    <g' bes' c'' e''>2 r2 |
    % 35 C7
    r4 <g' bes' c'' e''>4 r2 |
    % 36 Em
    r4 <e' g' b'>4 r2 |
    % 37 Am
    <e' a' c''>2 r2 |
    % 38 Dm
    r4 <f' a' d''>4 r2 |
    % 39 G
    <g' b' d''>2 r2 |

    \bar "||"

    % Section A returns — measures 40–51; measure 52 is a C7 tag.
    \set Score.currentBarNumber = #40
    \mark \markup { \box "A" }

    % Repeat measures 8–19
    <g' bes' c'' e''>2 r2 |
    <g' bes' c'' e''>8 r8 <g' bes' c'' e''>2 r4 |
    <g' bes' c'' e''>2 r2 |
    <g' bes' c'' e''>8 r8 <g' bes' c'' f''>2 r4 |
    <a' c'' es'' f''>8 r8 <a' c'' es'' f''>8 r8 r2 |
    r4 <a' c'' es'' f''>4 <a' c'' es'' f''>8 r8 r4 |
    <g' bes' c'' e''>8 r8 <g' bes' c'' e''>2 r4 |
    <g' bes' c'' e''>8 r8 <g' bes' c'' e''>2 r4 |
    <g' b' d'' f''>2 r2 |
    r4 <a' c'' es'' f''>8 r8 r2 |
    <a' c'' es'' f''>2 r2 |
    r4 <g' bes' c'' e''>8 r8 r2 |

    \bar "||"

    % Measure 52: closing C7 tag before the guitar solo.
    \set Score.currentBarNumber = #52
    <g' bes' c'' e''>8 r8 <g' bes' c'' e''>2 r4 |

    \bar "||"

    % Guitar solo — measures 53–64
    \set Score.currentBarNumber = #53
    \mark \markup { "gtr solo" }

    % 53 — C7
    r4 <g' bes' c'' e''>8 r8 r2 |

    % 54 — C7
    r4 <g' bes' c'' e''>4 r2 |

    % 55 — C7
    r4 <bes' e'' g''>4 r2 |

    % 56 — C7
    r2 r4 <bes' e'' g''>4 |

    % 57 — F7
    r4 <a' c'' es'' f''>4 r2 |

    % 58 — F7
    r2 r4 <a' c'' es''>4 |

    % 59 — C7
    r4 <g' bes' c'' e''>4 r2 |

    % 60 — C7
    r1 |

    % 61 — G7
    r4 <g' b' d'' f''>4 r2 |

    % 62 — F7
    r4 <a' c'' es'' f''>8 r8 r2 |

    % 63 — F7
    r2 r4 <a' c'' es''>4 |

    % 64 — C7
    r4 <g' bes' c'' e''>4 r4 <bes' e'' g''>4 |

    \bar "||"

    % Return of section B — measures 65–72.
    % Repeat the eight-bar arrangement from measures 32–39.
    \set Score.currentBarNumber = #65
    \mark \markup { \box "B" }
    <e' g' b'>2 r2 |
    r4 <e' a' c''>4 r2 |
    <g' bes' c'' e''>2 r2 |
    r4 <g' bes' c'' e''>4 r2 |
    r4 <e' g' b'>4 r2 |
    <e' a' c''>2 r2 |
    r4 <f' a' d''>4 r2 |
    <g' b' d''>2 r2 |

    \bar "||"

    % Return of section A — measures 73–84.
    % Repeat measures 8–18; use the new C7 transition in measure 84.
    \set Score.currentBarNumber = #73
    \mark \markup { \box "A" }
    <g' bes' c'' e''>2 r2 |
    <g' bes' c'' e''>8 r8 <g' bes' c'' e''>2 r4 |
    <g' bes' c'' e''>2 r2 |
    <g' bes' c'' e''>8 r8 <g' bes' c'' f''>2 r4 |
    <a' c'' es'' f''>8 r8 <a' c'' es'' f''>8 r8 r2 |
    r4 <a' c'' es'' f''>4 <a' c'' es'' f''>8 r8 r4 |
    <g' bes' c'' e''>8 r8 <g' bes' c'' e''>2 r4 |
    <g' bes' c'' e''>8 r8 <g' bes' c'' e''>2 r4 |
    <g' b' d'' f''>2 r2 |
    r4 <a' c'' es'' f''>8 r8 r2 |
    <a' c'' es'' f''>2 r2 |

    % Measure 84 — C7: backbeat chord, then B-flat on beat 4 leads
    % chromatically into the B-natural of the following E minor chord.
    r4 <g' bes' c'' e''>4 r4 bes'4 |

    \bar "||"

    % Chorus outro — measures 85–92 on the instructor's bass chart.
    \set Score.currentBarNumber = #85
    \mark \markup { \box "ch outro" }

    % First playable draft: echo B, then add backbeat accents and a held ending.
    % 85 — Em: begin with a sustained chord, recalling the first B section.
    <e' g' b'>2 r2 |

    % 86 — Am: chord on beat 2.
    r4 <e' a' c''>4 r2 |

    % 87 — Em: beats 2 and 4; the second chord sits higher.
    r4 <e' g' b'>4 r4 <g' b' e''>4 |

    % 88 — Am: answer with the same rhythm and a higher inversion.
    r4 <e' a' c''>4 r4 <a' c'' e''>4 |

    % 89 — Dm: leave space for the band.
    r4 <f' a' d''>4 r2 |

    % 90 — G7: two backbeat punctuations lead into C7.
    r4 <g' b' d'' f''>4 r4 <g' b' d'' f''>4 |

    % 91 — C7: emphatic backbeats.
    r4 <g' bes' c'' e''>4 r4 <g' bes' c'' e''>4 |

    % 92 — C7: final sustained chord (the bass chart's last whole-note bar).
    <g' bes' c'' e''>1 |

    \bar "|."
  }


  % An original, monophonic keyboard hook for overdubbing.
  % Its short, angular eighth-note figure appears only in the B sections.
  \new Staff \with {
    instrumentName = "Micromoog"
    shortInstrumentName = "Moog"
  } {
    \clef treble
    \time 4/4

    % The instructor counts the eighth-note pickup as measure 1.
    \partial 8 r8 |

    % Measures 2–31: no synth during the intro or A sections.
    R1*30

    % B section, measures 32–39. Short calls on beats 2 and 4,
    % with answering eighth notes; let the organ carry the chords.
    % 32 Em
    r4 b'8 e''8 r4 d''8 b'8 |
    % 33 Am
    r4 c''8 e''8 r4 d''8 c''8 |
    % 34 C7
    r4 bes'8 e''8 r4 g''8 e''8 |
    % 35 C7
    r4 bes'8 e''8 r4 g''8 e''8 |
    % 36 Em
    r4 b'8 e''8 r4 d''8 b'8 |
    % 37 Am
    r4 c''8 e''8 r4 d''8 c''8 |
    % 38 Dm
    r4 c''8 f''8 r4 e''8 d''8 |
    % 39 G
    r4 b'8 d''8 r4 c''8 b'8 |

    % Measures 40–64: silent through A and the guitar solo.
    R1*25

    % B section returns, measures 65–72: reprise the same hook.
    % 65 Em
    r4 b'8 e''8 r4 d''8 b'8 |
    % 66 Am
    r4 c''8 e''8 r4 d''8 c''8 |
    % 67 C7
    r4 bes'8 e''8 r4 g''8 e''8 |
    % 68 C7
    r4 bes'8 e''8 r4 g''8 e''8 |
    % 69 Em
    r4 b'8 e''8 r4 d''8 b'8 |
    % 70 Am
    r4 c''8 e''8 r4 d''8 c''8 |
    % 71 Dm
    r4 c''8 f''8 r4 e''8 d''8 |
    % 72 G
    r4 b'8 d''8 r4 c''8 b'8 |

    % Measures 73–92: no synth in the final A or chorus outro.
    R1*20
  }
  >>

  \layout { }
}