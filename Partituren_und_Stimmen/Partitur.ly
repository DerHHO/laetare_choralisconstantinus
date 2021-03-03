\version "2.18.2"
#(ly:set-option 'relative-includes #t)
#(set-default-paper-size "a4")
#(set-global-staff-size 17)

\include "../Noten/IntroitusLaetareCConst_Noten.ly"
\include "../Noten/TractusLaetareCConst_Noten.ly"
\include "../Noten/CommunioLaetareCConst_Noten.ly"


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




\book {
  \bookOutputName "Partitur"
  \paper {  
    
    ragged-right = ##f
    ragged-last-bottom = ##f
    left-margin = 1.3\cm
right-margin = 1.3\cm
first-page-number = 2
short-indent = 5\mm
print-all-headers = ##f
#(include-special-characters)

	
}
  \header {
    title = \titel
    subsubtitle = \untertitel
    dedication = \widmung
    composer = \komponist
    poet = \herausgeber
    arranger = \arrangeur
    tagline = \schlusszeile
    instrument = "Partitur"
  }


  \score {
    \header {
      piece = \markup { \larger \larger \larger { Introitus } }
    }
    \removeWithTag #'transponierendepartitur
    \removeWithTag #'klavierauszug
    \removeWithTag #'direction
    \removeWithTag #'einzelstimme
    \scoreIntroitusLaetareCConst

    \layout {
      \context {
        \Staff
        \override RestCollision.positioning-done = #merge-rests-on-positioning
      }
    }
  }

  \markup {
    \fill-line { \textDeutschIntroitusLaetareCConst }

  }
  \markup { \vspace #7 }

  \score {
    \header {
      piece = \markup { \larger \larger \larger { Tractus } }
    }
    \removeWithTag #'transponierendepartitur
    \removeWithTag #'klavierauszug
    \removeWithTag #'direction
    \removeWithTag #'einzelstimme
    \scoreTractusLaetareCConst

    \layout {
      \context {
        \Staff
        \override RestCollision.positioning-done = #merge-rests-on-positioning
      }
    }
  }

  \markup {
    \fill-line { \textDeutschTractusLaetareCConst }

  }
  \markup { \vspace #7 }

  \score {
    \header {
      piece = \markup { \larger \larger \larger { Communio } }
    }
    \removeWithTag #'transponierendepartitur
    \removeWithTag #'klavierauszug
    \removeWithTag #'direction
    \removeWithTag #'einzelstimme
    \scoreCommunioLaetareCConst

    \layout {
      \context {
        \Staff
        \override RestCollision.positioning-done = #merge-rests-on-positioning
      }
    }
  }
  \markup {
    \fill-line { \textDeutschCommunioLaetareCConst }

  }

}