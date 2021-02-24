
chorpartiturIntroitusLaetareCConst = {
  \new ChoirStaff <<
    <<

      \new Staff \with {
        instrumentName = "Sopran"
        shortInstrumentName = "S"
        midiInstrument = "acoustic grand"

      }
      <<
        \new Voice = "vsop" {
          \tag #'transponierendepartitur {
            \clef "treble"
            \transpose c c \sopranNotenIntroitusLaetareCConst
          }
          \tag #'klingendepartitur {
            \clef "treble"
            \sopranNotenIntroitusLaetareCConst
          }
        }
        \new Lyrics \lyricsto "vsop" { \sopranTextIntroitusLaetareCConst }

      >>


      \new Staff \with {
        instrumentName = "Alt"
        shortInstrumentName = "A"
        midiInstrument = "acoustic grand"

      }
      <<
        \new Voice = "valt" {
          \tag #'transponierendepartitur {
            \clef "treble"
            \transpose c c \altNotenIntroitusLaetareCConst
          }
          \tag #'klingendepartitur {
            \clef "treble"
            \altNotenIntroitusLaetareCConst
          }
        }
        \new Lyrics \lyricsto "valt" { \altTextIntroitusLaetareCConst }

      >>


      \new Staff \with {
        instrumentName = "Tenor"
        shortInstrumentName = "T"
        midiInstrument = "acoustic grand"

      }
      <<
        \new Voice = "vten" {
          \tag #'transponierendepartitur {
            \clef "G_8"
            \transpose c c \tenorNotenIntroitusLaetareCConst
          }
          \tag #'klingendepartitur {
            \clef "G_8"
            \tenorNotenIntroitusLaetareCConst
          }
        }
        \new Lyrics \lyricsto "vten" { \tenorTextIntroitusLaetareCConst }

      >>


      \new Staff \with {
        instrumentName = "Bass"
        shortInstrumentName = "B"
        midiInstrument = "acoustic grand"

      }
      <<
        \new Voice = "vbass" {
          \tag #'transponierendepartitur {
            \clef "bass"
            \transpose c c \bassNotenIntroitusLaetareCConst
          }
          \tag #'klingendepartitur {
            \clef "bass"
            \bassNotenIntroitusLaetareCConst
          }
        }
        \new Lyrics \lyricsto "vbass" { \bassTextIntroitusLaetareCConst }

      >>
    >>
  >>
}

scoreIntroitusLaetareCConst = {
  <<
    \chorpartiturIntroitusLaetareCConst
  >>
}