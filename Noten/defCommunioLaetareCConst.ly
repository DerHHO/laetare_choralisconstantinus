
chorpartiturCommunioLaetareCConst = {
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
            \transpose c c \sopranNotenCommunioLaetareCConst
          }
          \tag #'klingendepartitur {
            \clef "treble"
            \sopranNotenCommunioLaetareCConst
          }
        }
        \new Lyrics \lyricsto "vsop" { \sopranTextCommunioLaetareCConst }

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
            \transpose c c \altNotenCommunioLaetareCConst
          }
          \tag #'klingendepartitur {
            \clef "treble"
            \altNotenCommunioLaetareCConst
          }
        }
        \new Lyrics \lyricsto "valt" { \altTextCommunioLaetareCConst }

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
            \transpose c c \tenorNotenCommunioLaetareCConst
          }
          \tag #'klingendepartitur {
            \clef "G_8"
            \tenorNotenCommunioLaetareCConst
          }
        }
        \new Lyrics \lyricsto "vten" { \tenorTextCommunioLaetareCConst }

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
            \transpose c c \bassNotenCommunioLaetareCConst
          }
          \tag #'klingendepartitur {
            \clef "bass"
            \bassNotenCommunioLaetareCConst
          }
        }
        \new Lyrics \lyricsto "vbass" { \bassTextCommunioLaetareCConst }

      >>
    >>
  >>
}

scoreCommunioLaetareCConst = {
  <<
    \chorpartiturCommunioLaetareCConst
  >>
}