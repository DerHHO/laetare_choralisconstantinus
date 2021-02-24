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
  qrcode = \klavierauszuggrossQRLaetareCConst
  beistrichkomponist = \beistrichKomponistLaetareCConst
  beistrichuntertitel = \beistrichUntertitelLaetareCConst
  copyright = \copyrightLaetareCConst
}

\book {
  \paper {  
    	indent = 0\cm
	short-indent = 0\cm

    ragged-right = ##f
    ragged-last-bottom = ##f
    left-margin = 1\cm
right-margin = 1\cm
bottom-margin = 0.7\cm
two-sided = ##t
inner-margin = 1\cm
outer-margin = 1.3\cm
first-page-number = 1
indent = 0\cm
short-indent = 0\mm
binding-offset = 0.0\cm
tocItemMarkup = \tocItemWithDotsMarkup
tocTitleMarkup = \inhaltsMarkupLaetareCConst
#(include-special-characters)

	
}
  
  \bookOutputName "Klavierauszug_gross"
  \header {
    instrument = "Klavierauszug"
  }
  %%{<firstscorespacing>%} \markup { \vspace #0.5 } %{</firstscorespacing>%}
  

\score {
  \header {
    piece = \markup { %{<piecetitlesize>%}\larger \larger \larger %{</piecetitlesize>%} { Introitus } }
  }
  \removeWithTag #'partitur
  \removeWithTag #'klingendepartitur
  \removeWithTag #'transponierendepartitur
  \removeWithTag #'klavierauszug
  \removeWithTag #'direction
  \removeWithTag #'chorpartitur
  \removeWithTag #'midiausgabe
  \new Staff <<
    \new Voice { 
      \optionalTranspose { \transpose c c \ablaufzeileIntroitusLaetareCConst }
    }
    \new Voice = "vKlavierauszug_gross" {
      %{<Emergency_Section>%}

%{</Emergency_Section>%}
      \compressFullBarRests
      \clef "treble"
      \optionalTranspose { \transpose c c \generic_instrumentIntroitusLaetareCConst }
    }
    \addlyrics { \stropheIIntroitusLaetareCConst }

  >>
}
%{<ausgabenpagebreak-Introitus></ausgabenpagebreak-Introitus>%}

\score {
  \header {
    piece = \markup { %{<piecetitlesize>%}\larger \larger \larger %{</piecetitlesize>%} { Tractus } }
  }
  \removeWithTag #'partitur
  \removeWithTag #'klingendepartitur
  \removeWithTag #'transponierendepartitur
  \removeWithTag #'klavierauszug
  \removeWithTag #'direction
  \removeWithTag #'chorpartitur
  \removeWithTag #'midiausgabe
  \new Staff <<
    \new Voice { 
      \optionalTranspose { \transpose c c \ablaufzeileTractusLaetareCConst }
    }
    \new Voice = "vKlavierauszug_gross" {
      %{<Emergency_Section>%}

%{</Emergency_Section>%}
      \compressFullBarRests
      \clef "treble"
      \optionalTranspose { \transpose c c \generic_instrumentTractusLaetareCConst }
    }
    \addlyrics { \stropheITractusLaetareCConst }

  >>
}
%{<ausgabenpagebreak-Tractus></ausgabenpagebreak-Tractus>%}

\score {
  \header {
    piece = \markup { %{<piecetitlesize>%}\larger \larger \larger %{</piecetitlesize>%} { Communio } }
  }
  \removeWithTag #'partitur
  \removeWithTag #'klingendepartitur
  \removeWithTag #'transponierendepartitur
  \removeWithTag #'klavierauszug
  \removeWithTag #'direction
  \removeWithTag #'chorpartitur
  \removeWithTag #'midiausgabe
  \new Staff <<
    \new Voice { 
      \optionalTranspose { \transpose c c \ablaufzeileCommunioLaetareCConst }
    }
    \new Voice = "vKlavierauszug_gross" {
      %{<Emergency_Section>%}

%{</Emergency_Section>%}
      \compressFullBarRests
      \clef "treble"
      \optionalTranspose { \transpose c c \generic_instrumentCommunioLaetareCConst }
    }
    \addlyrics { \stropheICommunioLaetareCConst }

  >>
}
%{<ausgabenpagebreak-Communio></ausgabenpagebreak-Communio>%}
  
}