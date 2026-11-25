\version "2.24.0"
\header {
  title = "If I Fell"
  subtitle = "Piano part inspired by Steve Nieve"
  tagline = ##f
}
harmonies = \chordmode {
dis1:m |
d1 |
cis1 |
ais1:m |
dis1:m |
d1 |
e1:m |
a1:7 |
d2 e2:m |
fis1:m |
e1:m |
a1:7 |
d2 e2:m |
fis1:m |
e1:m |
a1:7 |
d1 |
g2:m a2:7 |
d2 e2:m |
fis1:m |
e1:m |
a1:7 |
d2 e2:m |
fis1:m |
e1:m |
a1:7 |
d1:7 |
d1:7 |
g1 |
g1:m |
g1:m |
d1 |
a1:7 |
d2 e2:m |
fis1:m |
e1:m |
a1:7 |
d2 e2:m |
fis1:m |
e1:m |
a1:7 |
d1:7 |
d1:7 |
g1 |
g1:m |
g1:m |
d1 |
a1:7 |
d2 e2:m |
fis1:m |
e1:m |
a1:7 |
d2 e2:m |
fis1:m |
e1:m |
a1:7 |
d1 |
g1:m |
d1 |
g1:m |
d1 |
}
part = {
  \clef treble \key d \major \time 4/4
  % Bar 1
  \mark \markup \box "Intro" R1 |
  % Bar 2
  R1 |
  % Bar 3
  R1 |
  % Bar 4
  R1 |
  % Bar 5
  r2 fis'2 |
  % Bar 6
  fis'1 |
  % Bar 7
  r2 e'4 g'4 |
  % Bar 8
  e'2 r2 |
  % Bar 9
  \mark \markup \box "A" R1 |
  % Bar 10
  r2 a'2 |
  % Bar 11
  g'2 r2 |
  % Bar 12
  R1 |
  % Bar 13
  r2 e'2 |
  % Bar 14
  fis'1 |
  % Bar 15
  r2 b'4 a'4 |
  % Bar 16
  g'2 r2 |
  % Bar 17
  fis'2 r2 |
  % Bar 18
  R1 |
  % Bar 19
  \mark \markup \box "A" R1 |
  % Bar 20
  r2 cis''2 |
  % Bar 21
  b'1 |
  % Bar 22
  R1 |
  % Bar 23
  r2 g'2 |
  % Bar 24
  a'2 r2 |
  % Bar 25
  <g' b'>2 r2 |
  % Bar 26
  r2 e'4 g'4 |
  % Bar 27
  \mark \markup \box "B" <fis' c''>1 |
  % Bar 28
  r2 c''2 |
  % Bar 29
  <g'~ b'>1 |
  % Bar 30
  <g' bes'>1 |
  % Bar 31
  R1 |
  % Bar 32
  <fis' a'>1 |
  % Bar 33
  <e' g'>2 r2 |
  % Bar 34
  \mark \markup \box "A" R1 |
  % Bar 35
  r2 a'2 |
  % Bar 36
  b'2 g'2 |
  % Bar 37
  R1 |
  % Bar 38
  r2 b'2 |
  % Bar 39
  cis''2 a'2 |
  % Bar 40
  r2 g'4 b'4 |
  % Bar 41
  a'2 g'2 |
  % Bar 42
  \mark \markup \box "B" <fis' c''>1 |
  % Bar 43
  r2 a'4 c''4 |
  % Bar 44
  <g'~ b'>1 |
  % Bar 45
  <g' bes'>1 |
  % Bar 46
  r2 d''4 bes'4 |
  % Bar 47
  <fis' a'>1 |
  % Bar 48
  <e' g'>2 r2 |
  % Bar 49
  \mark \markup \box "A" R1 |
  % Bar 50
  R1 |
  % Bar 51
  r2 g'2 |
  % Bar 52
  e'2 r2 |
  % Bar 53
  R1 |
  % Bar 54
  r2 a'2 |
  % Bar 55
  g'1 |
  % Bar 56
  R1 |
  % Bar 57
  \mark \markup \box "Coda" <fis' a'>1 |
  % Bar 58
  <g' bes'>2 r2 |
  % Bar 59
  <fis' a'>2 r2 |
  % Bar 60
  R1 |
  % Bar 61
  R1 |
  \bar "|."
}
\score { << \new ChordNames \harmonies \new Staff \part >> \layout {} }
