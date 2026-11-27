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
      % A section, played twice (8–19 and 20–31).
      \repeat volta 2 {
        c1:7 | c1:7 | c1:7 | c1:7 |
        f1:7 | f1:7 | c1:7 | c1:7 |
        g1:7 | f1:7 | f1:7 | c1:7 |
      }
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
    R1 |

    % Measure 3: A minor
    R1 |

    % Measure 4: E minor
    R1 |

    % Measure 5: A minor
    R1 |

    % Measure 6: D minor
    R1 |

    % Measure 7: G major — end of introduction
    \set Score.currentBarNumber = #7
    R1 |

    % First A section (instructor bars 8–19), played twice (8–19, 20–31).
    % The twelve bars on both passes were verified to be identical.
    \set Score.currentBarNumber = #8
    \mark \markup { \box "A" }
    \repeat volta 2 {
        R1 |
        R1 |
        R1 |
        r2 <g' bes' c'' e''>4 <g' bes' c'' e''>8 r8 |
        R1 |
        R1 |
        R1 |
        r2 r4 <g' bes' c'' e''>8 r8 |
        R1 |
        <a' c'' es'' f''>8 r8 r2. |
        R1 |
        R1 |
    }

    % Section B — measures 32–39 (eight bars on the instructor's chart).
    \set Score.currentBarNumber = #32
    \mark \markup { \box "B" }

    % 32 Em
    R1 |
    % 33 Am
    R1 |
    % 34 C7
    R1 |
    % 35 C7
    R1 |
    % 36 Em
    R1 |
    % 37 Am
    R1 |
    % 38 Dm
    R1 |
    % 39 G
    R1 |

    \bar "||"

    % Section A returns — measures 40–51; measure 52 is a C7 tag.
    \set Score.currentBarNumber = #40
    \mark \markup { \box "A" }

    % Repeat measures 8–19
    R1 |

    % Measure 21: C7 (same as m. 9)
    R1 |

    % Measure 22: C7 (same as m. 10)
    R1 |

    % Measure 23: C7 (same as m. 11)
    r2 <g' bes' c'' e''>4 <g' bes' c'' e''>8 r8 |

    % Measure 24: F7 (same as m. 12)
    R1 |

    % Measure 25: F7 (same as m. 13)
    R1 |

    % Measure 26: C7 (same as m. 14)
    R1 |

    % Measure 27: C7
    r2 r4 <g' bes' c'' e''>8 r8 |

    % Measure 28: G7 (same as m. 16)
    R1 |

    % Measure 29: F7 (same as m. 17)
    <a' c'' es'' f''>8 r8 r2. |

    % Measure 30: F7 (same as m. 18)
    R1 |

    % Measure 31: C7 (same as m. 19)
    R1 |

    % Measure 52: closing C7 tag before the guitar solo.
    \set Score.currentBarNumber = #52
    R1 |

    \bar "||"

    % Guitar solo — measures 53–64
    \set Score.currentBarNumber = #53
    \mark \markup { "gtr solo" }

    % 53 — C7
    R1 |

    % 54 — C7
    R1 |

    % 55 — C7
    R1 |

    % 56 — C7
    R1 |

    % 57 — F7
    R1 |

    % 58 — F7
    R1 |

    % 59 — C7
    R1 |

    % 60 — C7
    R1 |

    % 61 — G7
    R1 |

    % 62 — F7
    R1 |

    % 63 — F7
    R1 |

    % 64 — C7
    R1 |

    \bar "||"

    % Return of section B — measures 65–72.
    % Repeat the eight-bar arrangement from measures 32–39.
    \set Score.currentBarNumber = #65
    \mark \markup { \box "B" }
    R1 |
    R1 |
    R1 |
    R1 |
    R1 |
    R1 |
    R1 |
    R1 |

    \bar "||"

    % Return of section A — measures 73–84.
    % Repeat measures 8–18; use the new C7 transition in measure 84.
    \set Score.currentBarNumber = #73
    \mark \markup { \box "A" }
    R1 |

    % Measure 21: C7 (same as m. 9)
    R1 |

    % Measure 22: C7 (same as m. 10)
    R1 |

    % Measure 23: C7 (same as m. 11)
    r2 <g' bes' c'' e''>4 <g' bes' c'' e''>8 r8 |

    % Measure 24: F7 (same as m. 12)
    R1 |

    % Measure 25: F7 (same as m. 13)
    R1 |

    % Measure 26: C7 (same as m. 14)
    R1 |

    % Measure 27: C7
    r2 r4 <g' bes' c'' e''>8 r8 |

    % Measure 28: G7 (same as m. 16)
    R1 |

    % Measure 29: F7 (same as m. 17)
    <a' c'' es'' f''>8 r8 r2. |

    % Measure 30: F7 (same as m. 18)
    R1 |

    % Measure 31: C7 (same as m. 19)
    R1 |

    \bar "||"

    % Chorus outro — measures 85–92 on the instructor's bass chart.
    \set Score.currentBarNumber = #85
    \mark \markup { \box "ch outro" }

    % First playable draft: echo B, then add backbeat accents and a held ending.
    % 85 — Em: begin with a sustained chord, recalling the first B section.
    R1 |

    % 86 — Am: chord on beat 2.
    R1 |

    % 87 — Em: beats 2 and 4; the second chord sits higher.
    R1 |

    % 88 — Am: answer with the same rhythm and a higher inversion.
    R1 |

    % 89 — Dm: leave space for the band.
    R1 |

    % 90 — G7: two backbeat punctuations lead into C7.
    R1 |

    % 91 — C7: emphatic backbeats.
    R1 |

    % 92 — C7: final sustained chord (the bass chart's last whole-note bar).
    <g' bes' c'' e''>1 |

    \bar "|."
  }


  % An original, monophonic keyboard hook for overdubbing.
  % Its short, angular eighth-note figure appears only in the B sections.
  % Micromoog is notated on a linked treble/bass pair of staves.
  % The bass staff is a blank template for future low-register notes.
  \new PianoStaff \with {
    instrumentName = "Micromoog"
    shortInstrumentName = "Moog"
  } <<
    \new Staff = "MicromoogTreble" {
      \clef treble
      \time 4/4

    % The instructor counts the eighth-note pickup as measure 1.
    \partial 8 r8 |

    % Intro bars 2–7 and two passes of A: no synth.
    R1*6
    \repeat volta 2 { R1*12 }

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

    \set Staff.ottavationMarkups = #ottavation-ordinals
    % Measures 40–53: silent. Measure 54: C8 whole note from beat 1.
    R1*14
    \ottava #2
    c'''''1 |  % 54: C8 (sounding), notated two octaves lower with 15ma
    \ottava #0
    % Measures 55–64: silent.
    R1*10

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

    \new Staff = "MicromoogBass" {
      \clef bass
      \time 4/4
      \partial 8 r8 |
      R1*6
      \repeat volta 2 { R1*12 }
      R1*8
      R1*14
      \ottava #-2
      \set Staff.ottavation = "15mb"
      c,,4
      \ottava #0
      r2. |
      R1*10
      R1*8
      R1*20
    }
  >>
  >>

  \layout { }
}