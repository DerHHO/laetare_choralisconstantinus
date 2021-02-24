
chorpartiturTractusLaetareCConst = {
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
            \transpose c c \sopranNotenTractusLaetareCConst
          }
          \tag #'klingendepartitur {
            \clef "treble"
            \sopranNotenTractusLaetareCConst
          }
        }
        \new Lyrics \lyricsto "vsop" { \sopranTextTractusLaetareCConst }

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
            \transpose c c \altNotenTractusLaetareCConst
          }
          \tag #'klingendepartitur {
            \clef "treble"
            \altNotenTractusLaetareCConst
          }
        }
        \new Lyrics \lyricsto "valt" { \altTextTractusLaetareCConst }

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
            \transpose c c \tenorNotenTractusLaetareCConst
          }
          \tag #'klingendepartitur {
            \clef "G_8"
            \tenorNotenTractusLaetareCConst
          }
        }
        \new Lyrics \lyricsto "vten" { \tenorTextTractusLaetareCConst }

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
            \transpose c c \bassNotenTractusLaetareCConst
          }
          \tag #'klingendepartitur {
            \clef "bass"
            \bassNotenTractusLaetareCConst
          }
        }
        \new Lyrics \lyricsto "vbass" { \bassTextTractusLaetareCConst }

      >>
    >>
  >>
}

scoreTractusLaetareCConst = {
  <<
    \chorpartiturTractusLaetareCConst
  >>
}