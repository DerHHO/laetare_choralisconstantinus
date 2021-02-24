\version "2.18.2"
#(ly:set-option 'relative-includes #t)

#(set! paper-alist (cons '("Marschbuch" . (cons (* 148.5 mm) (* 120 mm)) ) paper-alist))

#(set-global-staff-size 16)
#(set-default-paper-size "a4")

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




\header {
  title = \titel
  subtitle = \untertitel
  dedication = \widmung
  composer = \komponist
  poet = \herausgeber
  arranger = \arrangeur
  tagline = \schlusszeile
  archivnummer = \archivNummerLaetareCConst
  qrcode = \chorpartiturQRLaetareCConst
  beistrichkomponist = \beistrichKomponistLaetareCConst
  beistrichuntertitel = \beistrichUntertitelLaetareCConst
  copyright = \copyrightLaetareCConst
}

\book {
  \bookOutputName "Chorpartitur"
  \header {
    instrument = "Chorpartitur"
  }
  

\score {
  \header {
    piece = \markup { %{<piecetitlesize>%}\larger \larger \larger %{</piecetitlesize>%} { Introitus } }
  }
  \removeWithTag #'transponierendepartitur
  \removeWithTag #'partitur
  \removeWithTag #'einzelstimme
  \removeWithTag #'klavierauszug
  \removeWithTag #'midiausgabe
  \optionalTranspose { 
    \compressFullBarRests
    \transpose c c \chorpartiturIntroitusLaetareCConst 
  }
}

\score {
  \header {
    piece = \markup { %{<piecetitlesize>%}\larger \larger \larger %{</piecetitlesize>%} { Tractus } }
  }
  \removeWithTag #'transponierendepartitur
  \removeWithTag #'partitur
  \removeWithTag #'einzelstimme
  \removeWithTag #'klavierauszug
  \removeWithTag #'midiausgabe
  \optionalTranspose { 
    \compressFullBarRests
    \transpose c c \chorpartiturTractusLaetareCConst 
  }
}

\score {
  \header {
    piece = \markup { %{<piecetitlesize>%}\larger \larger \larger %{</piecetitlesize>%} { Communio } }
  }
  \removeWithTag #'transponierendepartitur
  \removeWithTag #'partitur
  \removeWithTag #'einzelstimme
  \removeWithTag #'klavierauszug
  \removeWithTag #'midiausgabe
  \optionalTranspose { 
    \compressFullBarRests
    \transpose c c \chorpartiturCommunioLaetareCConst 
  }
}
  \paper {  
    
    ragged-right = ##f
    ragged-last-bottom = ##f
    left-margin = 1.3\cm
right-margin = 1\cm
two-sided = ##f
inner-margin = 1\cm
outer-margin = 1\cm
first-page-number = 4
tocItemMarkup = \tocItemWithDotsMarkup
tocTitleMarkup = \inhaltsMarkupMissaArti
#(include-special-characters)

	
}
}