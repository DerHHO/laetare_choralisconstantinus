\version "2.18.2"

\include "../Noten/dynamicparams.ly"
\include "../Noten/formatangaben.ly"
\include "../Noten/mergerests.ly"
\include "../Noten/optionaltranspose.ly"
\include "../Noten/Bezeichnungen.ly"
\include "../Noten/generaldefinitions.ly"
\include "../Noten/mydrums2.ly"
\include "../Noten/drumdefinitions.ly"

tempTranspose = #(define-music-function (parser location music)
                   (ly:music?)
                   (let* ((octave (or (ly:get-option 'octave) -1))
                          (note (or (ly:get-option 'note) 0))
                          (alteration (or (ly:get-option 'alteration) 0))
                          (to (ly:make-pitch octave note alteration)))
                     #{ \transpose c c  $music #}))




globalTractusLaetareCConst = {
  \taktstil
  \accidentalStyle modern-voice
  \key b\minor
  \time 2/1

}

vorspielpausenTractusLaetareCConst = {

}

mBreak = {  }

sopranNotenTractusLaetareCConst = \tempTranspose \relative a' {
  \globalTractusLaetareCConst
  a1 a |
  a( b2 d~ |
  d4 cis b2 a b2~ |
  b a1 g2) |
  a1 r |
  g( a) | \mBreak
  a1( d |
  e) b |
  a( g |
  a b |
  a) r |
  d( b) | \mBreak
  d( e) |
  e( d) |
  r2 b2( b4 cis d2 |
  cis1 a2 b~ |
  b a4 g a1 |
  g2. a4 b2 cis) | \mBreak
  d1 r2 cis |
  d1( e b a |
  b a2 d~ |
  d cis b d~ |
  d cis4 b a1 | \mBreak
  g\breve) |
  r1 a |
  a1( g) |
  e( a) |
  a1 g2.( a4 |
  b4 cis d1 cis2 |
  b4 cis d e cis2 b | \mBreak
  a2 b1 a2~ |
  a g) a1 |
  r1 a( |
  d) d |
  cis( e |
  fis d | \mBreak
  b1 d |
  cis2 d2. cis4 d2) |
  b1( a) |
  r2 d1 cis2 |
  b2( d1 cis4 b) |
  a1( g) | \mBreak
  r1 g |
  b( d) |
  d( a |
  b a |
  g a2 b~ |
  b a) b1 | \mBreak
  r1 a( |
  \omit Staff.TimeSignature
  \time 1/1
  b)
  \bar "||"
  \undo \omit Staff.TimeSignature
  \time 3/1
   a1.( b2 cis1)  |
  d\breve ( cis1 |
  b\breve cis1 |
  d1. cis2 b1 | \mBreak
  a1 b1. a2 |
  a\breve) gis1 |
  a\breve . ~ |
  a \bar "||"
  \time 2/1
  e1( a |
  b2 d2. cis4 b a |
  b2 a1 g2) | \mBreak
  a1 r |
  R1*4 |
  a1 a |
  b2( d1) cis2 | \mBreak
  d\breve |
  R1*6 | \mBreak
  R1*2 |
  d1( b2 d~ |
  d cis4 b a1) |
  g\breve |
  R1*4 | \mBreak
  r2 d'2( cis b |
  d2. cis4 b a b2~ |
  b a1 g2 |
  a\breve ) |
  R1*4 | \mBreak
  R1*2 |
  r1 g |
  g( b2. cis4 |
  d1.) d2 |
  d1( cis d b | \mBreak
  a2. g4 a2 b~ |
  b4 a4 a1 g2 |
  \tuplet 3/2 { a1) e'2( } \tuplet 3/2 { d2. cis4 d2 } |
  \tuplet 3/2 { b1. } \tuplet 3/2 { cis2. b4 cis2 } |
  a2 d cis b~ |
  b2 a1) g2 |
  a\breve ~ |
  a \bar "|."
}

sopranTextTractusLaetareCConst = \lyricmode {
  Qui con -- fi -- dunt in __
  Do -- mi -- no __ sic -- ut __ 
  mons Sy -- on Sy -- on __
  non com -- mo -- ve -- bi __
  tur in __ æ -- ter --
  num __ \italictext in æ -- ter -- num, __
  \uprighttext qui ha -- bi -- tat
  in Je -- ru --
  sa -- lem. Mon -- 
  tes in cir -- cu -- i --
  tu
  e -- jus
  nunc __
  in se -- cu -- lum __
  se -- cu -- li. __
}

altNotenTractusLaetareCConst = \tempTranspose \relative c' {
  \globalTractusLaetareCConst
  a1 a2.( b4) |
  cis2( d1 b2~ |
  b4 cis d e cis2 d~ |
  d4 cis a2 b1 |
  a2 e') fis1( |
  e) r2 e~ | \mBreak
  e2( fis) g4( fis e d |
  cis2 a d e |
  fis1 b,2 e~ |
  e a1 g2 |
  a) fis e1 |
  r2 d( e1 | \mBreak
  fis2 a g2. fis4 |
  g2 a fis1) |
  e2( g fis e4 d) |
  a'1 r |
  r2 e2( fis1 |
  b,2 e1. | \mBreak
  d2. cis4 b2 cis |
  b1. g2~ |
  g4 a b cis d2. e4 |
  fis2 g e fis~ |
  fis e) d1 |
  r1. a2( | \mBreak
  b2 e, e'1) |
  r2 e( d) cis |
  a1 b( |
  g' fis~ |
  fis e2 g |
  fis2 e4 d e1) |
  d r | \mBreak
  r1 r2 d |
  e1 cis2( d |
  b1 a2 e' |
  fis4 e a1 g2 |
  a\breve ~ |
  a1 g~ | \mBreak
  g fis |
  e2 fis2. e4 a2~ |
  a g a fis~ |
  fis g e1) |
  d r |
  r2 a( b fis |
  e'2 fis e) g~ |
  g1 d2.( e4 |
  fis2. e4 fis g a2~ |
  a g a fis |
  e2. d4 cis2 b) |
  cis1 r2 b( | \mBreak
  e2 g fis4 e a2~ |
  \omit Staff.TimeSignature
  \time 1/1 a g) |
  \bar "||"
  \undo \omit Staff.TimeSignature
  \time 3/1 a1.( g2 e1) |
  fis\breve ( e1 |
  g1. fis2 e1 |
  d1 fis g | \mBreak
  a1 g2. fis4 e2. d4 |
  fis1) e\breve |
  e\breve . ~ |
  e
  \time 2/1
  e1( fis2 a |
  g2 fis2. e4 d cis |
  d e cis a b1) | \mBreak
  a1 r |
  R1*2 |
  r1 e' |
  e fis2( a~ |
  a g a1 | \mBreak
  fis2 d) fis1 |
  e r |
  R1*4 | \mBreak
  r1 r2 e( |
  fis a g2. fis4 |
  d2 e1 dis2) |
  e\breve |
  R1*2 |
  r2 d e1( | \mBreak
  fis e) |
  R1*2 |
  r2 d( e1 |
  fis e) |
  r1 r2 d( |
  e2) g1( fis4 e | \mBreak
  d2 e1 d2) |
  e2 e,2.( fis4 g a |
  b cis d e fis1) |
  d2.( e4 fis g a2)~ |
  a g2 a1 |
  r2 fis( g1) | \mBreak
  r2 e( fis1) |
  r2 d( e1) |
  r1 r2 fis( |
  g1) r2 e2( |
  fis1) r1 |
  r2 d( e g) |
  fis1( e) |
  e\breve \bar "|."
}

altTextTractusLaetareCConst = \lyricmode {
  Qui con -- fi -- dunt __ in __
  Do -- mi -- no si --
  cut __ mons Sy --
  on non __
  com -- mo -- ve -- bi -- tur
  in æ -- ter --
  num qui
  ha -- bi -- tat in
  Je -- ru -- 
  sa -- lem. Mon --
  tes in cir -- cu -- i
  tu 
  e -- jus ex hoc __
  nunc et __ us -- que 
  in __ se -- cu -- lum se __
  e __ e __ e __ e __
  e -- cu -- li.
}

tenorNotenTractusLaetareCConst = \tempTranspose \relative c' {
  \globalTractusLaetareCConst
  R1*6 |
  d1( e) |
  cis( d b a2 cis~ | \mBreak
  cis4 b a1) g2 |
  a1 r |
  d( e |
  cis2 d b e) |
  a,1 r2 a |
  b1 g2.( a4 |
  fis1 e2) e'~ |
  e( cis d1 |
  e1) r2 d( |
  e1 cis2 d |
  b e1 d2) |
  e1 r2 a,( | \mBreak
  b1 g2 a) |
  fis1( e) |
  r2 e' fis1 |
  d2( e cis b) |
  d2( e4 fis) g2( fis~ |
  fis4 e4 e1 d2 | \mBreak
  e2 d4 cis b2. a4 |
  b1) a |
  d1 e~ |
  e cis( |
  d) b |
  b a |
  r2 d2 e1 | \mBreak
  cis2 d( a1 |
  b) a2( d,) |
  e1( e') |
  r1 r2 d2 |
  e1 cis2.( b4 |
  cis2 d2. cis4 b4 a | \mBreak
  b1) a |
  r1 d( |
  e) cis2 d |
  b1( a) |
  R1*2 |
  r2 d2( e1) | \mBreak
  cis2 d b1~ |
  b\breve |
  r2 d2.( e4 fis2 |
  e1 cis2 d |
  b1 a2 g |
  fis1) r2 d'( | \mBreak
  e1) cis2 d |
  \omit Staff.TimeSignature
  \time 1/1
  b2( d |
  \undo \omit Staff.TimeSignature
  \time 3/1
  a1) r1*2 |
  a1.( b2 cis1) |
  d\breve ( cis1 b1 d e | \mBreak
  fis1 e1. cis2 |
  d1) b\breve |
  a\breve . ~ |
  a \bar "||" 
  \time 2/1
  R1*4 |
  r1 e( |
  a1 b2 d~ |
  d4 cis4 b a b2 a~ |
  a) g2( a2. b4 |
  cis d) e2( d) a |
  d1 e | \mBreak
  d1 r |
  cis2.( d4 e2 fis |
  d1 b |
  d2. cis4 b2 a | \mBreak
  b1 a) |
  r2 d( d4 cis b a |
  g1 a) |
  b\breve |
  g1( b2. cis4 |
  d e d1 cis2) | \mBreak
  d1 r |
  r r2 g,( |
  a1 b |
  a) r2 a |
  b1( a) |
  b2( d1 cis4 b | \mBreak
  a2 b1 a2 |
  b1) r2 g |
  g4( a b cis d1 |
  b2 d2. cis4 b a |
  b2) c a1 |
  r2 d( e1) | \mBreak
  r2 a,2( d1 |
  cis2) a b1( |
  
  a) r2 d2( |
  e1) r2 a,( |
  d1) r2 g, | \mBreak
  a1( b) |
  a\breve ~ |
  a \bar "|."
}

tenorTextTractusLaetareCConst = \lyricmode {
  In __ Do --
  mi -- no sic -- ut, \italictext sic -- ut mons, \uprighttext
  mons Sy -- on \italictext Sy --
  on si -- cut mons Sy -- on __
  non, \uprighttext non com -- mo -- ve -- bi -- tur, \italictext non com --
  mo -- ve -- bi -- tur __ \uprighttext in æ -- ter --
  num \italictext qui __ ha -- bi -- tat, \uprighttext qui  __
  ha -- bi -- tat __ in __ \italictext Hie --
  ru -- sa -- lem, __ \uprighttext Je -- ru -- 
  sa -- lem. Mon --
  tes __ in __ cir -- cu -- i --
  tu \italictext e -- _ jus \uprighttext ex __
  hoc nunc __ et us -- que __
  in se -- cu -- lum se --
  \italictext se -- cu -- li se __ e __ e __
  \uprighttext cu -- li. __
}

bassNotenTractusLaetareCConst = \tempTranspose \relative a {
  \globalTractusLaetareCConst
  a1 fis2.( g4) |
  a2( d,) g1 |
  r2 g a g |
  fis1( e) |
  r1 d( |
  e) cis2.( b4 | \mBreak
  cis2 d b1 |
  a2 a' b g) |
  fis1 e |
  r1 r2 e |
  fis2( d cis1 |
  b1 e) | \mBreak
  R1*2 |
  r2 a( b2. a4 |
  g2 e b'1 |
  a) r2 b( |
  g a fis1 |
  e1. d4 cis | \mBreak
  b2 d e a,) |
  b1 r2 e2~ |
  e4( fis4) g2 d1 |
  R1*2 |
  r2 a'2( b1) |
  g2( a) fis1( | \mBreak
  e1) r |
  e( fis~ |
  fis e) |
  r2 e fis1 |
  d( e) |
  r1 r2 a |
  b1 r2 e, | \mBreak
  a2( d,) fis1( |
  e) fis |
  g a |
  d,2 d'2.( cis4 b2 |
  a1) r2 a( |
  fis d g1~ | \mBreak
  g1 d4 e fis g |
  a2 d,2. e4 fis2) |
  e1 r |
  r1 r2 a2( |
  b1) g2( a) |
  fis1 e | \mBreak
  r1 e1~ |
  e2( g1. |
  d1) r1 |
  r2 e2( fis) d |
  e1 r |
  r2 fis( g b | \mBreak
  a2 e fis1 |
  \omit Staff.TimeSignature
  \time 1/1
  g1)
  \undo \omit Staff.TimeSignature
  \time 3/1 fis1.( g2 a1) |
  d,\breve( a'1 |
  g\breve a1 |
  b1. a2 g1 | \mBreak
  fis1 g a |
  d,) e\breve |
  a,\breve . ~ |
  a \bar "||" \time 2/1 
  R1*4 |
  r1 e'( |
  fis2 a g fis~ |
  fis4 e d cis d e cis a |
  b1) a |
  r2 a' d cis |
  b1 a | \mBreak
  r2 d,2.( e4 fis g |
  a2. b4 cis2 d2~ |
  d4 cis b a g fis e2 |
  d4 cis b a b a a'2~ | \mBreak
  a2 \ficta gis a1 |
  d,2 fis g b~ |
  b a4 g fis1) |
  e\breve |
  e2.( fis4 g a g2~ |
  g fis2 e1) | \mBreak
  d1 r |
  r2 d2( e1 |
  fis e) |
  r2 a,2.( b4 cis2 |
  d2 e fis fis |
  g b1 a4 g | \mBreak
  fis2 e) fis1 |
  e\breve |
  R1*4 |
  r1 r2 a( |
  b1) r2 e,( | \mBreak
  a1) r2 d, |
  fis1( e) |
  r2 a2( b1) |
  r2 e,( a1) |
  r2 d,( e g) |
  fis1( e) |
  a,\breve ~ |
  a \bar "|."
}

bassTextTractusLaetareCConst = \lyricmode {
  Qui con -- fi -- dunt, \italictext 
  qui con -- fi -- dunt __ \uprighttext in __ Do --
  mi -- no, sic -- ut __
  mons Sy --
  on, mons Sy -- on, \italictext mons Sy -- on __
  \uprighttext non __ com -- mo -- ve -- bi -- tur, \italictext com --
  mo -- ve -- bi -- tur \uprighttext in æ -- ter -- _
  num \italictext in __ æ -- ter -- num,
  \uprighttext qui __ ha -- bi -- tat in __
  Je -- ru -- 
  sa -- lem. Mon --
  tes in cir -- cu -- i -- tu
  e -- jus: ex __ 
  hoc nunc __ et __
  us -- que in __ \italictext se --
  cu -- lum __ se __
  e __ e --
  cu -- li. __
}

textDeutschTractusLaetareCConst = \markup {
  \center-column {
    \line { Wer auf den Herrn vertraut, gleicht dem Sionsberg, der niemals wankt, der ewig bleibt. }
    \line { Jerusalem ist von Bergen umgeben, so umhegt der Herr sein Volk von nun an bis in Ewigkeit. }
    \line { (Ps 125,1.2) }
  }
}

metronomZeileTractusLaetareCConst = \drummode {
}
\include "defTractusLaetareCConst.ly"

%***Arbeitspartitur
#(set-global-staff-size 14)
\book {
  \bookOutputName "TractusLaetareCConst-Arbeitspartitur"
  \score {
    \removeWithTag #'transponierendepartitur
    \removeWithTag #'klavierauszug
    \removeWithTag #'direction
    \removeWithTag #'einzelstimme
    \removeWithTag #'chorpartitur
    \removeWithTag #'midiausgabe
    \scoreTractusLaetareCConst
  }
}

\book {
  \bookOutputName "TractusLaetareCConst-midi"
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
    \scoreTractusLaetareCConst
  }
}
%Arbeitspartitur***
