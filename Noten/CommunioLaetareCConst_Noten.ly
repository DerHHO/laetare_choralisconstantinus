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




mBreak = {  }

globalCommunioLaetareCConst = {
  \taktstil
  \accidentalStyle modern-voice
  \undo \omit Staff.TimeSignature \time 2/1
  \cadenzaOff
  \bar "||"
  \revert Stem.length
  \undo \omit Dots
  \undo \omit Accidental
}

vorspielpausenCommunioLaetareCConst = {

}

globalInitiumCommunioLaetareCConst = {
  \taktstil
  \accidentalStyle modern-voice
  \key g\lydian
  \time 10/8
  \cadenzaOn
  \omit Staff.TimeSignature
  \override Stem.length = #0
  \hide Beam
  %\hide Slur
}

sopranNotenCommunioLaetareCConst = \tempTranspose \relative g' {
  \globalInitiumCommunioLaetareCConst
  \relative g' {
    \cadenzaOn
    g4 \melisma { e8 g } \melisma { d e } \melisma { e a b g } g\breve \bar "||"
  }
  \cadenzaOff
  \globalCommunioLaetareCConst
  R1*2 | % 2
  r1 g1 | % 3
  g1 ( e1 ) | % 4
  b'2 b2 c1 | % 5
  b1 a2 g2 ( ~ | % 6
  g4 fis4 e2 d2 g2 ) ~ \mBreak | % 7
  g2 fis2 g1 | % 8
  r1 g1 | % 9
  e1 ( g1 | \barNumberCheck #10
  fis1 ) g1 | % 11
  a1. a2 | % 12
  a1 ( b2 \ficta c2 ) ~ \mBreak | % 13
  \ficta c2 ( b1 ) a2 | % 14
  b1 r1 | % 15
  R1*4 | % 17
  r1 d1 | % 18
  a1 b1 \mBreak | % 19
  g1 a1 | \barNumberCheck #20
  fis1 r1 | % 21
  R1*2 | % 22
  b1 d1 | % 23
  d1 a1 | % 24
  R1*2 \mBreak | % 25
  R1*6 | % 28
  d1 a1 | % 29
  b1 g1 | \barNumberCheck #30
  a1 ( g2. fis4 \mBreak | % 31
  g2 a2 b2 g2 ~ | % 32
  g2 ) fis2 g1 | % 33
  R1*6 | % 36
  r2 a2 ( b2. a4  \mBreak | % 37
  g2 e2 ) fis1 | % 38
  e1 r2 g2 ( ~ | % 39
  g2 e2 g2. fis4 | \barNumberCheck #40
  e1 g2 b2 ~ | % 41
  b2 a1 \ficta gis2 ) | % 42
  \time 3/1   | % 42
  a\breve. ~ | % 43
  a\breve r1 \mBreak | % 44

  fis1. ( e2 fis2 g2 | % 45
  a1. g2 fis1 | % 46
  e1 g1 fis1 ~ | % 47
  fis1 ) e\breve | % 48
  fis\breve s1 \bar "|."
}

sopranTextCommunioLaetareCConst = \lyricmode {
  Hi -- e -- ru -- sa -- lem,
  Quae
  ae -- di -- fi -- ca -- tur ut ci --
  vi -- tas cu -- ius  par -- ti --
  ci -- pa --    ti -- "o." e -- ius in id --
  ip -- "sum:" il -- luc e -- nim tri -- "bus," tri -- bus Do --
  mi -- "ni," no --
  mi -- ni tu --
  "o,"  Do --
  mi --
  "ne."
}

anfangspauseCommunioLaetareCConst = {
  \globalInitiumCommunioLaetareCConst
  s8*8
  s1*2
  \bar "||"
}

altNotenCommunioLaetareCConst = \tempTranspose \relative g' {
  \anfangspauseCommunioLaetareCConst
  \globalCommunioLaetareCConst
  r1 g1 | % 2
  g1 ( e1 ) | % 3
  e1 ( g1 ) | % 4
  d2 g1 ( fis2 ) | % 5
  g1 r2 e2 | % 6
  d2 ( b2 d2 ) cis2 \mBreak | % 7
  d1 ( b2 g2 ~ | % 8
  g2 ) g'2. ( fis4 e2 ~ | % 9
  e2 d1 cis2 ) | \barNumberCheck #10
  d1 r2 d2 | % 11
  e1. e2 | % 12
  e1 ( fis2 g2 ) ~ \mBreak | % 13
  g2 ( fis1 ) e2 | % 14
  fis2 ( fis,2 a1 ~ | % 15
  a2 a2 a1 | % 16
  b2 \ficta c1 b2 ~ | % 17
  b2 a2 b2 ) d2 ( ~ | % 18
  d4 e4 fis2 ) g2 g,2 \mBreak | % 19
  b1 ( a2 fis2 ~ | \barNumberCheck #20
  fis4 g4 a2 g4 a4 b2 | % 21
  cis2 ) e1( d2) | % 22
  e1 r1 | % 23
  r1 r2 fis2 ~ | % 24
  fis2 d2 e2 fis2( \mBreak | % 25
  d2 g2 a2 fis2 | % 26
  e1 ) r2 cis2 ( | % 27
  e2 ) fis2 g1 | % 28
  fis1. ( a2 | % 29
  g2 ) e2. ( fis4 g2 | \barNumberCheck #30
  fis1 ) e1 \mBreak | % 31
  R1*2 | % 32
  r2 d2 b2 ( g2 ) | % 33
  g'1 g1 | % 34
  fis1 ( e1 | % 35
  fis2 ) a1 ( g2 ) | % 36
  a2 ( fis2 ) g2. ( fis4  \mBreak | % 37
  e4  d4 e1 ) \ficta dis2 | % 38
  e1 r1 | % 39
  g1 ( e2 g2 ~ | \barNumberCheck #40
  g4 fis4 ) d2 r2 e2 ( ~ | % 41
  e2 d2 e1 ) | % 42
  \time 3/1  \time 3/1 | % 42
  e\breve. ( | % 43
  d\breve ) r1 \mBreak | % 44

  d\breve. ~ | % 45
  d\breve. | % 46
  b\breve. ( | % 47
  d1 b\breve ) | % 48
  b\breve s1 \bar "|."
}

altTextCommunioLaetareCConst = \lyricmode {
  Quae
  ae -- di -- fi -- ca -- tur ut ci --
  vi -- "tas,"    cu --
  ius par -- ti -- ci -- pa --    ti --
  o
  e --   ius in id --
  ip -- "sum:"
  il -- luc e -- nim     a
  -- scen -- de -- runt  tri --
  "bus," tri -- bus ad con -- fi --  ten --
  dum no --    mi -- ni tu --
  "o," tu --   "o,"  Do
  -- mi --  "ne."
}

tenorNotenCommunioLaetareCConst = \tempTranspose \relative c' {
  \anfangspauseCommunioLaetareCConst
  \globalCommunioLaetareCConst
  R1*2 | % 2
  g1 g1 ( | % 3
  e1 ) b'2. ( a4 | % 4
  b4 cis4 ) d1 \ficta c2 | % 5
  d1 cis2 b2 ( ~ | % 6
  b4 a4 g2 fis2 g2 ) \mBreak | % 7

  a1 g1 ~ | % 8
  g1 r2 g2 ~ | % 9
  g2 b2. ( a4 g2 | \barNumberCheck #10
  a1 ) b1 | % 11
  cis1. a2 | % 12
  cis1 ( d2 e2 ) ~ \mBreak | % 13

  e4 ( d4 b2 ) \ficta c1 | % 14
  b1 ( e,1 ~ | % 15
  e2 e2 e1 | % 16
  fis2 g1 fis2 ~ | % 17
  fis2 e2 fis1 ) | % 18
  fis'1 d1 \mBreak | % 19

  e1 cis1 | \barNumberCheck #20
  d1 b1 ( | % 21
  a2. g4 fis1 | % 22
  e1 ) r1 | % 23
  b'1 d1 | % 24
  d1 a1 \mBreak | % 25

  b1 d1 | % 26
  cis2. ( b4 cis4 d4 e2 ~ | % 27
  e2 d1 cis2 ) | % 28
  d\breve | % 29
  r2 b2. ( a4 ) b2 | \barNumberCheck #30
  cis2 d2 b2. ( a4 ) \mBreak | % 31

  g2 ( fis2 ) g2 b2 | % 32
  a1 g2. ( a4 | % 33
  b4 cis4 ) d1 ( cis2 | % 34
  d2 a2 b2 cis2 ) | % 35
  a1 ( b1 ) | % 36
  r2 a2 e'1 ~ \mBreak | % 37

  e2 \ficta c2 b1 | % 38
  e,1 r2 b'2 ~ | % 39
  b2 b2 b1 ~ | \barNumberCheck #40
  b1 b2( g2  ~ | % 41
  g2 a2 b1 ) | % 42
  \time 3/1  \time 3/1 | % 42
  a\breve r1 | % 43
  fis1. ( e2 fis2 g2 \mBreak | % 44

  a1. g2 fis2 e2 | % 45
  fis1. g2 a1 | % 46
  g1. a2 b1 | % 47
  a1 ) g\breve | % 48
  fis\breve s1 \bar "|."


}

tenorTextCommunioLaetareCConst = \lyricmode {
  Quae ae -- di -- fi -- ca -- tur
  ut ci -- vi -- tas cu -- ius
  par -- ti -- ci -- pa -- ti -- o
  e -- ius in id -- ip -- sum:
  il -- luc e -- nim a -- scen -- de -- runt tri -- bus,
  tri -- bus Do -- mi -- ni,
  ad con -- fi -- ten -- dum
  ad con -- fi -- ten -- dum
  no -- mi -- ni  tu -- o,
  Do -- mi -- ne.
}

bassNotenCommunioLaetareCConst = \tempTranspose \relative g {
  \anfangspauseCommunioLaetareCConst
  \globalCommunioLaetareCConst
  g1 g1 ( | % 2
  e1 ) e1 | % 3
  g\breve | % 4
  g1 a1 | % 5
  g1 a2 ( e2 | % 6
  g1 d2 ) e2 \mBreak | % 7
  d1 r1 | % 8
  g1 e1 ( | % 9
  g1 e1 | \barNumberCheck #10
  d1 ) r1 | % 11
  R1*4 \mBreak | % 13
  R1*2 | % 14
  b1 cis1 ~ | % 15
  cis2 a2 cis1 ( | % 16
  d2 e2. d4 b2 ) | % 17
  \ficta c1 b1 ( | % 18
  d1 ) g1 \mBreak | % 19
  e1 fis1 | \barNumberCheck #20
  d1 e1 | % 21
  a,1 b1 | % 22
  e2 g2. ( a4 b2 ~ | % 23
  b4 a4 g2 fis2 d2 ~ | % 24
  d2 g1 fis2 ) \mBreak | % 25
  g1 fis2 d2 | % 26
  e2. ( d4 cis4 b4 a2 | % 27
  cis2 d2 e1 ) | % 28
  d1 r2 d2 | % 29
  g,2 g'2. ( fis4 e2 ~ | \barNumberCheck #30
  e2 ) d2 e1 ~ \mBreak | % 31
  e2 d2 g1 ( | % 32
  d1 ) r2 g2 | % 33
  g4 ( fis4 e4 d4 e1 ) | % 34
  b2 ( d1 cis2 | % 35
  d2 fis2 ) e1 | % 36
  a,1 r1 \mBreak | % 37
  R1*2 | % 38
  r2 e'1 e2 | % 39
  e\breve | \barNumberCheck #40
  g1 e1 ( ~ | % 41
  e2 fis2 e1 ) | % 42
  \time 3/1
  a,1. ( b2 cis1 | % 43
  d1. cis2 d2 e2  \mBreak | % 44

  d\breve  r1 | % 45
  d\breve d1 | % 46
  e1. fis2 d1 ) | % 47
  d1 ( e\breve ) | % 48
  b\breve s1 \bar "|."
}

bassTextCommunioLaetareCConst = \lyricmode {
  Quae ae -- di -- fi -- ca -- tur ut ci -- vi -- tas,
  cu -- ius   par -- ti -- ci -- pa -- ti -- o e -- ius
  in id -- ip -- sum:
  il -- luc e -- nim as -- cen -- de -- runt tri -- bus,
  tri -- bus Do -- mi -- ni,
  ad con -- fi --    ten -- dum
  no -- mi -- ni tu -- o,
  Do -- mi -- ne.
}

textDeutschCommunioLaetareCConst = \markup {
  \center-column {
    \line { Jerusalem, du starke Stadt, dicht gebaut und fest gefügt. }
    \line { Dorthin ziehen die Stämme hinauf, die Stämme des Herrn, den Namen des Herrn zu preisen. }
    \line { Ps 122,3.4 }
  }
}

metronomZeileCommunioLaetareCConst = \drummode {
}
\include "defCommunioLaetareCConst.ly"

%***Arbeitspartitur
#(set-global-staff-size 14)
\book {
  \bookOutputName "CommunioLaetareCConst-Arbeitspartitur"
  \score {
    \removeWithTag #'transponierendepartitur
    \removeWithTag #'klavierauszug
    \removeWithTag #'direction
    \removeWithTag #'einzelstimme
    \removeWithTag #'chorpartitur
    \removeWithTag #'midiausgabe
    \scoreCommunioLaetareCConst
  }
}

\book {
  \bookOutputName "CommunioLaetareCConst-midi"
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
    \scoreCommunioLaetareCConst
  }
}
%Arbeitspartitur***
