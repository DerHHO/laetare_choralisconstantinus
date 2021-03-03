\version "2.18.2"

\include "../Noten/dynamicparams.ly"
\include "../Noten/formatangaben.ly"
\include "../Noten/mergerests.ly"
\include "../Noten/optionaltranspose.ly"
\include "../Noten/Bezeichnungen.ly"
\include "../Noten/generaldefinitions.ly"
\include "../Noten/mydrums2.ly"
\include "../Noten/drumdefinitions.ly"
\include "../../../modernGregorian.ily"

tempTranspose = #(define-music-function (parser location music)
                   (ly:music?)
                   (let* ((octave (or (ly:get-option 'octave) -1))
                          (note (or (ly:get-option 'note) 0))
                          (alteration (or (ly:get-option 'alteration) 0))
                          (to (ly:make-pitch octave note alteration)))
                     #{ \transpose c c  $music #}))




globalInitiumIntroitusLaetareCConst = {
  \taktstil
  \accidentalStyle modern-voice
  \key g\major
  \time 2/1
  \cadenzaOn
  \omit Staff.TimeSignature
  \override Stem.length = #0
  \hide Beam
  %\hide Slur
}

mBreak = {  }

globalIntroitusLaetareCConst = {
  \undo \omit Staff.TimeSignature \time 2/1
  \cadenzaOff
  \bar "||"
  \revert Stem.length
  \undo \omit Dots
  \set Score.currentBarNumber = 1
}

vorspielpausenIntroitusLaetareCConst = {

}



gregorianikEinfügungIntroitusLaetareCConst = {
  \omit Staff.TimeSignature

  \time 11/4
  s4 \omit Staff.BarLine
  s4*10 |
  \time 2/1
  s1*2 |
  \undo \omit Staff.TimeSignature
  \undo \omit Staff.BarLine
  \time 2/1
}

ficta = { \once \set suggestAccidentals = ##t }

sopranNotenIntroitusLaetareCConst = \tempTranspose \relative g' {
  \globalInitiumIntroitusLaetareCConst
  \cadenzaOn
  g4 \melisma { g c' a b } \melisma { a g } s4

  \globalIntroitusLaetareCConst
  g1 g |
  b d |
  R1*2 |
  r2 d1( b2) |
  d2.( e4) fis1( |
  e2 d1 c2) |
  d\breve | \mBreak
  R1*2 |
  r1 b1( |
  d e d2. c4 b2 a~ |
  a4 g g1 fis2) |
  g\breve |
  R1*4 | \mBreak
  R1*10 |
  b1 d |
  b r |
  d a | \mBreak
  b1( c |
  d2. c4 b2 a |
  g2. fis4 g a b2~ |
  b a g a~ |
  a4 g g1) fis2 |
  g\breve |
  R1*4
  R1*8 |
  r2 b1 a2( |
  b d e1 |
  d c |
  b2 b1 a2 | \mBreak
  b1 c |
  b c2 d~ |
  d4 c b1 a2) |
  b\breve |
  R1*6 |
  r1 r2 d~ | \mBreak
  d2 c2 b d(~ |
  d4 c) b2( a4 g fis e) |
  d1 r |
  R1*8 | \mBreak
  g1 r2 g |
  a1( b) |
  b( a) |
  d\breve |
  R1*2 |
  g,1 a( |
  b) b1 | \mBreak
  a1 d( |
  e d |
  c b2 b~ |
  b a b d~ |
  d4 c b a b2 c~ |
  c4 b a1 \ficta gis2) |
  \bar "||"
  \time 3/1
  a\breve r1 |
  g\breve( a1 |
  b\breve a1
  g1 a1. g2 |
  g\breve fis1) |
  g\breve . ~
  g\breve . \bar "||"

  \omit Staff.TimeSignature

  \time 11/4
  \override Stem.length = #0
  g4 b d d
  \omit Staff.BarLine
  d d d d
  d e e |
  \time 2/1 e\breve |

  \undo \omit Staff.TimeSignature
  \undo \omit Staff.BarLine
  \time 2/1
  \revert Stem.length
  R1*4 | \mBreak
  R1*4 |
  b1 a2 b( |
  a) d1 c2 |
  d1( e |
  d2) b1 a2 |
  b\breve ~ |
  b \bar "|."

}


sopranTextIntroitusLaetareCConst = \lyricmode {
  Læ -- ta -- re
  Hie -- ru -- sa -- lem: et con -- ven -- tum
  om -- nes
  gau -- de -- te cum læ --
  ti -- ti -- a,
  fu -- i --
  stis: et __
  sa -- ti -- e -- mi -- ni
  ab u -- be -- ri -- bus con -- so -- la --
  ti -- o --
  nis e -- ius. __

  Læ -- ta -- tus sum in his, quæ di -- cta sunt mi -- hi
  In do -- mum __ Do -- mi -- ni i -- bi -- mus. __
}

altNotenIntroitusLaetareCConst = \tempTranspose \relative c' {
  \globalInitiumIntroitusLaetareCConst
  s1
  \globalIntroitusLaetareCConst
  R1*2 |
  g1 b |
  d d |
  R1*2 |
  r2 d2.( e4 fis g |
  a2) d, e1 |
  d\breve | \mBreak
  R1*2 |
  r1 r2 g2~( |
  g fis2 e g |
  fis2. e4 d c d2 |
  c4 b a g a1) |
  g\breve |
  R1*4 | \mBreak
  R1*10 |
  r2 g' g1 |
  g r |
  r2 g1( fis2 | \mBreak
  g2 d e1 |
  d) r1 |
  r2 e1 d2(~ |
  d4 c a2 b a) |
  c1( d) |
  b1 g |
  a c |
  b2( c d1 | \mBreak
  c2 b1) a2( |
  b1 c) |
  b1( c2 d~ |
  d4 c b1 a2 |
  b2 d c1 |
  b1) r1 |
  R1*2 |
  r2 fis'1( e2) | \mBreak
  fis1( g2 a |
  fis g e d |
  g1 e) |
  e\breve |
  r2 d1 c2 |
  b d2.( c4 b2 |
  a2 d1 c2 |
  d2. e4 fis2. g4 | \mBreak
  e1) d |
  R1*2 |
  r1 r2 a'2~ |
  a g fis a(~ |
  a4 g4 fis2 e g |
  fis d) e1 |
  d r2 d | \mBreak
  e2.( d4 e fis) g2~ |
  g fis g1 |
  r2 g fis( e |
  d1) r2 g |
  fis e d( g,~ |
  g g'1 fis2) |
  g1 r2 g | \mBreak
  fis2( e) d b |
  c4( a a'1 g2) |
  a1( fis2 g |
  e1) r2 g |
  fis g( g4 fis) e( d) |
  e2( f) e1 | \bar "||"
  \time 3/1
  e1( c d |
  e\breve fis1 |
  g2. fis4 g2 e1 d2 |
  e1 r2 e fis d~ |
  d c d\breve) |
  d\breve . ~ |
  d\breve .
  \bar "||" \mBreak
  \gregorianikEinfügungIntroitusLaetareCConst

  b1 a2 b( |
  a) d1 c2 | \mBreak
  d1( e |
  d2) b1 a2 |
  b2( g' fis d |
  a'1) r2 a2~ |
  a4( g fis2 e a |
  fis4 d g1) fis2 |
  g\breve ~ |
  g \bar "|."
}

altTextIntroitusLaetareCConst = \lyricmode {
  Hie -- ru -- sa -- lem: et con -- ven -- tum
  om -- nes
  gau -- de -- te cum __
  læ -- ti -- ti -- a, qui in tri -- sti --
  ti -- a __ fu --
  i -- stis: ut ex -- ul -- te --
  tis, et sa -- ti -- e -- mi -- ni ab
  u -- be -- ri -- bus con -- so -- _ la -- ti -- o -- nis con --
  so -- la -- ti -- o -- nis con -- so -- la -- ti -- o --
  nis e -- ius. __

  In do -- mum Do -- mi --
  ni i -- bi -- mus __ \italictext i -- bi -- \uprighttext mus. __

}

tenorNotenIntroitusLaetareCConst = \tempTranspose \relative g {
  \globalInitiumIntroitusLaetareCConst
  s1
  \globalIntroitusLaetareCConst
  R1*4 |
  g1 g |
  b d |
  R1*4 |
  d1( fis | \mBreak
  e2 d1) c2 |
  d1( b) |
  R1*6 |
  r2 c1 c2 |
  c1( a |
  c) b | \mBreak
  c2( d2. c4 b a |
  b2 c2. b4 a2~ |
  a g a) b~( |
  b a g a~ |
  a g1 fis2) |
  g1 b |
  d b |
  R1*2 | \mBreak
  d1 a |
  b2.( c4 d1 |
  e2. d4 c2 b~ |
  b4 c d2 g, c2~ |
  c4 b4 g2) a1 |
  g\breve |
  R1*4 | \mBreak
  R1*10 |
  r2 b1 a2( |
  b d e1 |
  d c | \mBreak
  b1 e |
  d c2 b |
  d2 e c1) |
  b\breve |
  R1*8 | \mBreak
  R1*4 |
  r2 d2.( c4 a2 |
  b1 a) |
  r2 d2 b c(~ |
  c2 b1) a2 |
  b\breve ~ | \mBreak
  b |
  r1 g |
  r2 g a1( |
  b) b( |
  a) d |
  R1*2 |
  r1 g,1 | \mBreak
  a1 b |
  a d( |
  e d |
  c1 b2. c4 |
  d2 e e4 d c b |
  c2 d b1) |
  \bar "||" \time 3/1 | \mBreak
  a\breve r1 |
  b\breve ( c1 |
  d1 g, a |
  b c d |
  g, a\breve ) |
  g\breve . ~ |
  g\breve . | \bar "||" \mBreak
  \gregorianikEinfügungIntroitusLaetareCConst

  R1*4 | \mBreak
  R1*4 |
  b1 d |
  d e |
  d c |
  d d |
  b\breve ~ |
  b \bar "|."
}

tenorTextIntroitusLaetareCConst = \lyricmode {
  Hie -- ru -- sa -- lem: fa -- ci -- te
  qui di -- li -- gi --
  tis __ e -- am: gau -- de -- te cum 
  læ -- ti -- ti -- a,
  fu -- i
  stis:
  et sa -- ti -- e -- mi -- ni __
  ab u -- be -- ri -- bus con --
  so -- la -- ti -- o --
  nis e -- ius.

  In do -- mum Do -- mi -- ni i -- bi -- mus.
}

bassNotenIntroitusLaetareCConst = \tempTranspose \relative g, {
  \globalInitiumIntroitusLaetareCConst
  s1
  \globalIntroitusLaetareCConst
  R1*6 |
  g1 g |
  b d |
  R1*2 |
  r2 d2.( e4 fis g | \mBreak
  a2 d, e1 |
  b2 d) e1 |
  b1 r |
  b( d |
  e d) |
  g,2 c1 c2 |
  c1 d |
  c4( d e fis g1 | \mBreak
  a2 b2. a4 g fis |
  e2. d4 c2 d |
  b1 a2) d(~ |
  d c b c |
  d g,) a1( |
  g) r2 g' |
  g1 g |
  r2 g( a1 | \mBreak
  g1) r |
  r2 g1( fis2 |
  e1) r2 g~ |
  g fis e a,( |
  e'1 d) |
  g, r2 g( |
  d'1) c4( d) e( fis |
  g2 a fis d | \mBreak
  e2 b) c1 |
  b2( b'1 a2 |
  b4 a g fis e2 d |
  b1 c |
  b) r |
  r2 b c1( |
  b2 b'1 a2 |
  b1) r | \mBreak
  r2 b1( a2 |
  b2 g a b |
  g1 a) |
  e\breve |
  b1 a |
  d d2.( e4 |
  fis2 g e1) |
  d\breve | \mBreak
  r1 d |
  b d |
  d( fis |
  e fis) |
  d( e |
  d2 b c1) |
  b\breve | \mBreak
  e1 e |
  d g, |
  g' r |
  r1 r2 g |
  a1 b2.( a4 |
  b2) c2 a1 |
  g1 r | \mBreak
  R1*2 |
  r2 a2 b1 |
  a1 b2( g) |
  a1( g2. a4 |
  b2 e,1 a2~ |
  a d,) e1 \bar "||" \time 3/1 \mBreak
  a1.( g2 fis1 |
  e\breve a1 |
  g1 e2 g fis1 |
  e a d, |
  e d\breve ) |
  g\breve . ~ |
  g\breve . | \bar "||" \mBreak
  \gregorianikEinfügungIntroitusLaetareCConst
  \relative b, {
    b1 d |
    d e | \mBreak
    d1 c |
    d d |
    b r2 g'( |
    fis d a'1 |
    d,) r2 a'( |
    b g) d1 |
    g\breve ~ |
    g \bar "|."
  }
}

bassTextIntroitusLaetareCConst = \lyricmode {
  Hie -- ru -- sa -- lem: fa --
  ci -- te om -- nes, qui di -- li -- gi -- tis __
  e -- am: __ gau -- de -- te cum __
  cum læ -- ti -- ti -- a, qui in -- tri --
  sti -- ti -- a __ fu -- i -- _
  stis: ut ex -- ul -- te -- tis,
  et sa -- ti -- e -- mi -- ni
  ab u -- be -- ri -- bus con -- so -- la -- ti -- o -- nis,
  \italictext con -- so -- la -- ti -- o -- nis
  \uprighttext e -- ius. __
  In do -- mum Do --
  mi -- ni i -- bi -- mus \italictext i -- _ bi -- \uprighttext mus. __
}

metronomZeileIntroitusLaetareCConst = \drummode {
}
\include "defIntroitusLaetareCConst.ly"

%***Arbeitspartitur
#(set-global-staff-size 14)
\book {
  \bookOutputName "IntroitusLaetareCConst-Arbeitspartitur"
  \score {
    \removeWithTag #'transponierendepartitur
    \removeWithTag #'klavierauszug
    \removeWithTag #'direction
    \removeWithTag #'einzelstimme
    \removeWithTag #'chorpartitur
    \removeWithTag #'midiausgabe
    \scoreIntroitusLaetareCConst
  }
}

\book {
  \bookOutputName "IntroitusLaetareCConst-midi"
  \score {

    \midi {
      \tempo 4 = 120
      \context {
        \Score
        midiChannelMapping = #'instrument
      }
    }

    \removeWithTag #'transponierendepartitur
    \removeWithTag #'klavierauszug
    \removeWithTag #'direction
    \removeWithTag #'chorpartitur
    \removeWithTag #'partitur
    \removeWithTag #'einzelstimme

    \unfoldRepeats
    \scoreIntroitusLaetareCConst
  }
}
%Arbeitspartitur***
