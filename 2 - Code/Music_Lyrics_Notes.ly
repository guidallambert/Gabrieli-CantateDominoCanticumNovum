
%%%%%%%%%%%%%%%%%%
% Some useful definitions for early music
%%%%%%%%%%%%%%%%%%

italicas=\override LyricText #'font-shape = #'italic
rectas=\override LyricText #'font-shape = #'upright
ss=\once \set suggestAccidentals = ##t
ficta = \once \set suggestAccidentals = ##t
date = #(strftime "%Y-%m-%d" (localtime (current-time)))
%m0 = \melismaEnd
%m1 = \melisma

%% Defining graphics for unusual mensural time signatures!
#(
  define ((double-time-signature2 glyph a) grob) (
       grob-interpret-markup grob (
          markup  (
            #:line ( #:musicglyph glyph #:number #:vcenter a )
          )
       )
  )
)
#(
  define ((double-time-signature3 glyph a b) grob) (
       grob-interpret-markup grob (
          markup  (
            #:line ( #:musicglyph glyph #:vcenter #:column (a b) )
          )
       )
  )
)
#(
  define ((custom-time-signature glyph) grob) (
       grob-interpret-markup grob (
          markup  (
            #:line ( #:musicglyph glyph)
          )
       )
  )
)


%%%%%%%%%%%%%%%%%%
% 3 - Score content: notes
%%%%%%%%%%%%%%%%%%

%\language "english"

StaveANotes = {  % QCed against source

  % clef c1

  \override Score.TimeSignature.stencil =
    #(custom-time-signature "timesig.mensural22")
  \time 2/1

  \mark \markup \italic {"Prima Pars"}

  R\longa R\breve
        g'1 bes'2 c''2 d''2. d''4 d''2 c''2. c''4 a'2 bes'\breve a'2 a'2 fis'2 fis'2 g'2. g'4 g'2  c''2. \melisma bes'4 a'4 g'4 f'2 \melismaEnd d'2 d'1 d'1
  r2	g'2 bes'2 bes'2 a'2 g'2 a'\breve
  R\breve r2
        a'2 fis'2 fis'2 g'2. g'4 g'2 g'2 a'2 a'2 a'2. a'4 a'2 bes'2. bes'4 g'2 fis'1 g'\breve
  r1 R\breve r1
        e'1 fis'2 a'2 g'1 fis'1
  r\breve r2
        g'2 a'2 c''2 bes'1 a'1
  r2	f'2 a'2 a'2 bes'2 bes'1 \melisma a'2 \melismaEnd bes'1
  R\breve r1 r2
        f'2 a'2 a'2 bes'2 bes'1 \melisma a'2 \melismaEnd bes'1
        bes'2. bes'4 a'4 g'4 fis'2 g'1
  r2	d''1 d''2 bes'2 bes'2 a'1 a'2 c''1 c''2 a'2 a'2 c''1 c''2 g'1 g'2 bes'2 bes'2 a'\breve a'\maxima*1/4

    \break \bar "||"

	% Secunda Pars
	\mark \markup \italic {"              Secunda Pars"} \break

  R\breve r1
        a'1 a'2 bes'2 a'1 a'2 a'1 a'2 g'1 g'2 g'2. g'4 g'2 c''2. \melisma bes'8 a'8 bes'4 a'4 a'1 g'2 \melismaEnd a'1
  r1 R\longa R\longa r1
        a'2 a'1 a'2 a'1. bes'1 bes'2 a'1
  r2	a'1 a'2 d''1 d''2 d''2 c''1 a'1
  r2	a'1 g'2 a'4 \melisma bes'4 c''2 \melismaEnd c''2 f'2 bes'\breve a'2 a'1 a'2 d''1 d''2 d''1 bes'2. \melisma a'4 g'1 \ficta fis'2 \melismaEnd g'1
  r\longa
        a'2. a'4 a'2 bes'2 a'2 g'1 a'2 a'1
  r	d''2 d''2 d''2. d''4 d''2 bes'1 \melisma a'2 \melismaEnd bes'\breve
  r1 r2	g'2 c''1. bes'2 a'2 a'2 d'2 g'2 f'2 a'2 a'1 a'2 f'1 bes'1 bes'2 g'\breve
  r1 r2	g'1 d''1 c''2 bes'2 a'2 g'2 f'2 g'2 a'2 bes'4 \melisma c''4 d''1 \ficta cis''2 \melismaEnd  d''1
  R\breve r2
        f'2 bes'1. a'2 g'2 f'2 bes'2 c''2 d''1 g'1 a'2 \melisma g'1 \ficta fis'2 \melismaEnd g'1
  R\longa R\breve r2
        a'2 bes'1. bes'2 g'2 g'2 c''2 d''2 \ficta ees''2 d''2 c''\breve


 % \cadenzaOn

    b'\maxima*1/4
    \bar "|."
  %\cadenzaOff


}
StaveBNotes = {  % QCed against source
         g1 bes2 c'2 d'2. d'4 d'2 c'2 bes2 a2 f'2. f'4 d'2 d'1 f'1 f'2 f'2 g'2 c'2 f'2. f'4 d'1 d'1 \melisma \ficta cis'2 \melismaEnd  d'2
         d'2 b2 b2 c'2. c'4 c'1 d'2 d'2 bes1 a1 d'1 f'2 g'2 f'2 d'2 e'2. \melisma d'8 e'8 f'1 d'1 \melismaEnd
   r2	 d'2 cis'2 cis'2 d'2. d'4 d'1 \[ g1  \melisma c'1 \melismaEnd \] d'1. d'2 bes2. \melisma c'4 d'2 \melismaEnd a2
   r2	d'2 e'2 e'2 f'2 c'2 f'2 f'2. f'4 f'1 d'1 \melisma \ficta cis'2 \melismaEnd  d'\breve
   R\breve r2
         d'2 e'2 g'2 f'1 d'2
         d'2 f'2 e'2 d'1 c'2 a2 d'2. \melisma e'4 f'1 \melismaEnd f'2
         f'2 f'1 g'2 g'2 ees'1 d'1
         c'2 f'2. \melisma e'8 d'8 e'2 \melismaEnd f'\breve
         f'2. f'4 f'4 d'4 d'2 d'4
         d'2 d'4 d'4 c'4 d'2 bes2. \melisma c'4 d'2 \melismaEnd
         g'1 f'2 e'2 e'2 e'1 f'1
   r2	f'1 e'2 d'2 d'2 d'\breve. cis'\maxima*1/4

   % secunda pars
   R\breve
         d'1 d'2 cis'2 d'1 a2 d'1 c'2 a1 b\breve
   r2	c'2. c'4 c'2 f'2. \melisma e'4 d'4 c'4 d'1 \ficta cis'2 \melismaEnd d'2
        d'2 d'2 f'2 e'1 e'2 e'1 e'2 d'1 d'2
        e'2. e'4 e'2 f'2. \melisma e'4 d'1 \melismaEnd cis'2
        cis'2 cis'1 cis'2 cis'2  d'2 f'2 f'1
   r1	f'1. f'2 g'1 f'2 d'2 f'2 e'2
        f'1 f'2 f'1 d'2 e'1 f'1 f'1
   r1	e'1 f'2 f'1 f'2 d'2 g4 \melisma a4 bes4 c'4 d'2. c'8 bes8 c'2 \melismaEnd d'1
         d'2. d'4 e'2 f'2 e'2  d'1 e'2 e'1
         e'2. e'4 fis'2 g'2 fis'2 d'1 f'2 f'1
         e'2 e'2 d'2. d'4 f'2 f'1 f'2
   r2	f1 f'1 f'2 d'2 c'2 d'2 e'2 f'2 c'2 g'1 f'1
   r2	d'1 f'1 e'2 d'2 c'2 d'2 d'2 bes2 g2 bes1 c'2
         d'2 g'1. g'2 g'\breve f'1 d'1. d'2 d'2 f'2 e'1 d'1
         a1 d'1. d'2 d'\breve
   r2	d'2 g'1. f'2 ees'2 d'2 \ficta ees'2 \ficta ees'2 d'2 d'2 d'1 d'1
        d'1 ees'1. d'2 d'1
   r2	d'2 d'1. d'2 bes2 g1 g'1 g'2 g'2. \melisma f'4 ees'2 \melismaEnd  ees'2 ees'1 d'\maxima*1/4



}
StaveCNotes = {  % QCed against source

    R\breve r2
         d2 d2 e2 f2. f4 d2
         d'2 bes2 bes2 g2 a2 bes2 f2. f4 c'2 a4. \melisma bes8 c'2 \melismaEnd bes2
         f2. f4 g2 e1 d2
         d'2 d'2 d'2 g2. g4 a1 d1 d2 g1 \melisma \ficta fis2 \melismaEnd g2
         g2 d'1 d'2 d'1 c'2 d'2
         a2 a2 bes2 a2 g2 a\breve
    r2	g2 e2 e2 f2. f4 d2 d2. d4 d2 ees1 d2
        d1 g1 g2 a2. a4 d'2 d'2. d'4 d2 \[ f1 \melisma e1 \] \melismaEnd d2
        fis2 g2 bes2 a1 g2 g2 f4 \melisma g4 a4 bes4 c'1 \melismaEnd c'2 a2 bes4 \melisma c'4 d'1 \melismaEnd c'2
    r2	a2 a2 c'2 bes2 g2 c'1 d'1 c'2. \melisma d'4 \ficta ees'2 \melismaEnd bes2 c'1 f1
    R\longa
        bes2. bes4 f4 g4 d2 g4
        bes2 bes4 a4 g4 fis2 g2
        d'1 d'2 d'2 d'2 c'1 c'2
        c'1 a2 a2 a2 g1 g2
        d1 d2 f2 f2 f1 e\maxima*1/4

     % seconda pars
         d1 f2 g2 \[ f1  \melisma e1 \] \melismaEnd d2 f1 a2 a2. \melisma g4 fis4 e4 fis2 \melismaEnd g2
         d'2. d'4 d'2 g1 a1 d'2. \melisma c'4 bes1 \melismaEnd a2
         a2 a2 bes2 a1 a2 a1 a2 g1 g2
         g2. g4 g2 c'2. \melisma bes8 a8 bes4 a4 a1 g2 \melismaEnd a2
         e2 e1. e2 d1 d'2 d'2 c'\breve
    R\breve r1 r2
        a1 a2 d'1 d'2 d'2 c'1 a2
        d'1 d2 g1 a2 a2 d'2. \melisma c'4 bes2 \melismaEnd a2
    R\longa
        g2. g4 g2 a2 g2 fis1 g2 g1
        a2. a4 d2 g2 d2 g1 f2 f1
        g2 g2 bes2. bes4 d'\breve c'1 bes1
    r1	f1 bes1. a2 g4 \melisma a4 bes4 c'4 d'2 \melismaEnd a2 bes2 g2 d'2 d'2 a1 f2
        f2 bes2. a4 g1
    r1 r2
        bes2 ees'1. d'2 c'2
        bes2 \ficta ees'2. \ficta ees'4 d'2 d'2 d'2 d2 g2 fis2 g2 a2
    r2	e2 f1. e2 d2
        f2 bes1. a2 g2 f2 bes2. \melisma a4 g4 f4 ees2 \melismaEnd d1 c2 g2 \[ c1  \melisma d1 \] \melismaEnd g\breve
    r1	bes1 c'2 bes2 g2 f2 f2 bes2 a2 a2 d'4 \melisma c'4 bes4 a4 g2. a4 bes1 \melismaEnd c'2
        g1 g2 g\breve g\maxima*1/4

}
StaveENotes = {  % QCed against source

    R\breve
        g,1 bes,2 c2 d1. d2 g,1
    r1	bes,1 d2 e2 f2. f4 bes,2 bes,2. bes,4 g,2 a,1 d2
        d2 g,2 g,2 c2. c4 a,1 bes,1 g,1 d1 g,1
    R\breve
        a,1 d1. bes,2 c2 bes,2 a,1
    r2	d2 b,2 b,2 c2. c4 f,1
    r1 R\breve r1
        g,1 c2 c2 f2. f4 d1 bes,1 d2 d2 a,1 d1
    r1	d1 e2 g2 d1 c1
    R\breve
        a,1 bes,2 d2 a,1 g,1
    r1	bes,1 f1 ees2 ees2 c1 bes,2
        bes,2 f1 g2 g2 f1 bes,\breve
    r1	g,2. g,4 d4 ees4 d2 g,2
        g,1 g,2 d2 d2 a,2. \melisma bes,4 c1 \melismaEnd f,2
        f,1 f,2 c1 g,\breve d\breve a,\maxima*1/4

    %Secunda pars
    r2	d2 d2 g,2 d1 a,1 d1. d2 \[ a,1  \melisma d1 \] \melismaEnd g,2 g,2. g,4 g,2 c1 a,1
    R\breve
        a,1 d2 d2 d1 a,1 a,2 a,2 c1 g,1
    r2	c2. c4 c2 d2. \melisma c4 bes,1 \melismaEnd a,1
        a,2 a,1 a,2 d2 bes,1 bes,2 f,\breve
    R\longa
        d1. d2 bes1 a2 a2 f4 \melisma e4 d4 c4 bes,1 \melismaEnd g,1
    r1	d1. d2 g1 g2 g2 ees1 d1
        g,2. g,4 c2 f2 c2 d1 c2 c1
    r1 R\longa
        c2 c2 bes,2. bes,4 bes,1 d2. \melisma e4 f1 \melismaEnd bes,2
        bes,2 bes1. a2 g2 g2 f2 f2 g2. \melisma f4 d2 \melismaEnd f2 g1 d1
    R\breve
        bes,1 \ficta ees1. d2 c2 bes,2 c1 g1 c2 g,2 c1 d1
    r1 R\breve
        a,1 d1. c2 bes,\breve
    r1 R\breve R\longa r2
        d2 bes1. a2 g2 f2 ees2 d2 c2 g,2 g,4 \melisma a,4 bes,4 c4 d\breve \melismaEnd g,2
        g,2 ees1. ees2 c2 b,2 c2 g,2 c2 c2 c1 g,\maxima*1/4

}
StaveDNotes = {  % QCed against source

  %%% prima pars - line 1
    r2	g2 g2 a2 bes2. bes4 g1   r2	d'2 bes2 a2 g2. g4 g2 f2. f4 bes2 a2 g2
    r1	d2. d4 d1 a1 a2 a2 g2 g2

  % line 2
    e2. e4 e2 f1 f2 g2 d2     r2 	a2 bes1. g2 d2 bes2 a1
    r2	d2 f2 f2 e2 d2 e2 e2 d2 d2 d2. d4 e2 c1 f2 f1 \[ f1  \melisma g1 \] \melismaEnd a2   d'2 b2 b2

  % line 3
    c'2. c'4 c'2 a2. a4 a2 bes1 a1    r1	a1 bes2 d'2 d'1 c'2 bes2 a4 \melisma g4 f2 \melismaEnd g2
    e2 \[ f1 \melisma g1 \] \melismaEnd a1 f1 e2 e2 g1 f1. f2 a2 a2 bes2 bes1 \melisma a2 \melismaEnd bes2 bes2

  % line 4
    c'1 bes2 g2 c'1 bes2 d'1 d'2 c'4 bes4 a2 g4 g2 g4 f4 g4 a2 g2 g1 d1 a1 a2 g1 f2
    c'1 c'2 c'2 c'2 bes2. \melisma a4 g1 \melismaEnd a\longa

  %%% secunda pars - line 1
    a1 a2 bes2 a1 a2 a4 \melisma g4 f4 e4 d2 \melismaEnd f1 e1 d2 d2. d4 d2 g1 e2  e2. e4 e2 d1 g1
    e1 f2 f2 f4 \melisma g4 a4 bes4

  % line 2
    c'1 \melismaEnd c'2 c'1 c'2 b1. c'2 g2. g4 f2 f2. \melisma e4 d2 \melismaEnd e2
    a2 a1 a2 a2 f1 f1 f2 a1 a2 d'1 bes2 g2 bes1 a1    R\breve r1 r2		a1 a2 d'1 d'2 d'2 c'1

  % line 3
    a2 d'1 d'2 bes1 bes2 g2 g1 a1  b2. b4 c'2 c'2 c'2 a1 c'2 c'1   cis'2. cis'4 d'2 d'2 d'2 b1 c'2 c'\breve
        f2 f2 bes2. bes4 a2 f1 \melisma c'2 \melismaEnd d'\breve  r1 r1 r2   a2

  % line 4
    d'1. c'2 bes1  a1 c'2. bes4 a1  r1 r2  bes2 \ficta ees'1. d'2 c'2 c'2 bes2 bes2 \ficta ees'2 d'2 g1 d'2
    d2 bes1. a2 g2 d2 a1. a2 d2 e2 f\breve g1   r2  d2 d'1. c'2

  % line 5
    bes2 a2 c'2 b2 c'2 c'2 a1 g2  g2 bes1. a2 g2 f2 g2 g2 bes1 a2 g1 \melisma \ficta fis2 \melismaEnd g1  r2
    bes2 \ficta ees'1. d'2 c'2 bes2 c'2 c'2 c'2 c2 d1 d\maxima*1/8
}
StaveFNotes = {  }
StaveGNotes = {  }
StaveHNotes = {  }

% Convenient overrides - comment and uncomment to add and remove staves for quick debugging / rendering purposes:
% StaveANotes = {  }
% StaveBNotes = {  }
% StaveCNotes = {  }
% StaveDNotes = {  }
% StaveENotes = {  }
% StaveFNotes = {  }
% StaveGNotes = {  }
% StaveHNotes = {  }

%%%%%%%%%%%%%%%%%%
% 4 - Score content: text / lyrics
%%%%%%%%%%%%%%%%%%

StaveALyrics = \lyricmode {  % QCed against source
    %prima pars
    Can -- ta -- te Do -- mi -- no can -- ti -- cum no -- vum,
    Can -- ta -- te Do -- mi -- no om -- nis ter -- ra,
    Can -- ta -- te Do -- mi -- no
    et be -- ne -- di -- ci -- te,
    et be -- ne -- di -- ci -- te
    no -- mi -- ni e -- ius
    An -- nun -- ti -- a -- te,
    An -- nun -- ti -- a -- te
    de di -- e in di -- em,
    de di -- e in di -- em sa -- lu -- ta -- re e -- ius,
    sa -- lu -- ta -- re e -- ius,
    sa -- lu -- ta -- re e -- ius,
    sa -- lu -- ta -- re e -- ius.

    % secunda pars
    An -- nun -- ti -- a -- te in -- ter gen -- tes glo -- ri -- am e -- ius.
    In om -- ni -- bus po -- pu -- lis mi -- ra -- bi -- li -- a e -- ius,
    mi -- ra -- bi -- li -- a e -- ius,
    mi -- ra -- bi -- li -- a e -- ius.
    Quo -- ni -- am mag -- nus Do -- mi -- nus
    Et lau -- da -- bi -- lis ni -- mis
    Ter -- ri -- bi -- lis est
    su -- per om -- nes de -- os,
    Ter -- ri -- bi -- lis,
    Ter -- ri -- bi -- lis est
    su -- per om -- nes de -- os,
    Ter -- ri -- bi -- lis est
    su -- per om -- nes de -- os,
    Ter -- ri -- bi -- lis est
    su -- per om -- nes de -- os.
}
StaveBLyrics = \lyricmode {   % QCed against source

    Can -- ta -- te Do -- mi -- no,
    Can -- ta -- te Do -- mi -- no,
    Can -- ta -- te Do -- mi -- no can -- ti -- cum no -- vum,
    Can -- ta -- te Do -- mi -- no om -- nis ter -- ra,
    Can -- ta -- te Do -- mi -- no __
    et be -- ne -- di -- ci -- te no -- mi -- ni e -- ius,
    et be -- ne -- di -- ci -- te no -- mi -- ni e -- ius.

    An -- nun -- ti -- a -- te,
    An -- nun -- ti -- a -- te
    de di -- e in di -- em,
    de di -- e in di -- em sa -- lu -- ta -- re e -- ius,
    sa -- lu -- ta -- re e -- ius, __
    sa -- lu -- ta -- re e -- ius,
    sa -- lu -- ta -- re e -- ius.

    % secunda pars
    An -- nun -- ti -- a -- te in -- ter gen -- tes glo -- ri -- am e -- ius,
    An -- nun -- ti -- a -- te in -- ter gen -- tes glo -- ri -- am e -- ius.
    In om -- ni -- bus po -- pu -- lis mi -- ra -- bi -- li -- a e -- ius,
    mi -- ra -- bi -- li -- a e -- ius,
    mi -- ra -- bi -- li -- a e -- ius.
    Quo -- ni -- am mag -- nus Do -- mi -- nus,
    Quo -- ni -- am mag -- nus Do -- mi -- nus
    Et lau -- da -- bi -- lis ni -- mis
    Ter -- ri -- bi -- lis est su -- per om -- nes de -- os,
    Ter -- ri -- bi -- lis est su -- per om -- nes de -- os,
    Ter -- ri -- bi -- lis est su -- per om -- nes de -- os,
    Ter -- ri -- bi -- lis,
    Ter -- ri -- bi -- lis est su -- per om -- nes de -- os,
    Ter -- ri -- bi -- lis,
    Ter -- ri -- bi -- lis est su -- per om -- nes de -- os.

}
StaveCLyrics = \lyricmode {


    Can -- ta -- te Do -- mi -- no,
    Can -- ta -- te Do -- mi -- no can -- ti -- cum no -- vum,
    can -- ti -- cum no -- vum,
    Can -- ta -- te Do -- mi -- no om -- nis ter -- ra,
    Can -- ta -- te Do -- mi -- no,
    Can -- ta -- te Do -- mi -- no
    et be -- ne -- di -- ci -- te no -- mi -- ni e -- ius,
    et be -- ne -- di -- ci -- te no -- mi -- ni e -- ius.

    An -- nun -- ti -- a -- te
    de di -- e in di -- em,
    An -- nun -- ti -- a -- te
    de di -- e __ in di -- em,
    sa -- lu -- ta -- re e -- ius,
    sa -- lu -- ta -- re e -- ius,
    sa -- lu -- ta -- re e -- ius,
    sa -- lu -- ta -- re e -- ius,
    sa -- lu -- ta -- re e -- ius.

    % secunda pars
    An -- nun -- ti -- a -- te in -- ter gen -- tes glo -- ri -- am e -- ius,
    e -- ius,
    An -- nun -- ti -- a -- te in -- ter gen -- tes glo -- ri -- am e -- ius.
    In om -- ni -- bus po -- pu -- lis mi -- ra -- bi -- li -- a e -- ius,
    mi -- ra -- bi -- li -- a e -- ius.
    Quo -- ni -- am mag -- nus Do -- mi -- nus,
    Quo -- ni -- am mag -- nus Do -- mi -- nus
    Et lau -- da -- bi -- lis ni -- mis
    Ter -- ri -- bi -- lis __ est su -- per om -- nes de -- os,
    Ter -- ri -- bi -- lis,
    Ter -- ri -- bi -- lis,
    Ter -- ri -- bi -- lis est su -- per om -- nes de -- os,
    Ter -- ri -- bi -- lis,
    Ter -- ri -- bi -- lis est su -- per om -- nes de -- os,
    Ter -- ri -- bi -- lis,
    Ter -- ri -- bi -- lis est su -- per om -- nes de -- os.


}
StaveDLyrics = \lyricmode {

    Can -- ta -- te Do -- mi -- no,
    Can -- ta -- te Do -- mi -- no can -- ti -- cum no -- vum,
    can -- ti -- cum no -- vum,
    Can -- ta -- te Do -- mi -- no om -- nis ter -- ra,
    Can -- ta -- te Do -- mi -- no,
    Can -- ta -- te Do -- mi -- no
    et be -- ne -- di -- ci -- te no -- mi -- ni e -- ius,
    et be -- ne -- di -- ci -- te no -- mi -- ni e -- ius,

    An -- nun -- ti -- a -- te de di -- e in di -- em,
    An -- nun -- ti -- a -- te de di -- e in di -- em,
    de di -- e in di -- em
    sa -- lu -- ta -- re e -- ius,
    sa -- lu -- ta -- re e -- ius,
    sa -- lu -- ta -- re e -- ius,
    sa -- lu -- ta -- re e -- ius. __

    % secunda pars
    An -- nun -- ti -- a -- te in -- ter gen -- tes glo -- ri -- am e -- ius,
    glo -- ri -- am e -- ius,
    An -- nun -- ti -- a -- te in -- ter gen -- tes glo -- ri -- am e -- ius.
    In om -- ni -- bus po -- pu -- lis mi -- ra -- bi -- li -- a e -- ius,
    mi -- ra -- bi -- li -- a e -- ius,
    mi -- ra -- bi -- li -- a e -- ius.
    Quo -- ni -- am mag -- nus Do -- mi -- nus,
    Quo -- ni -- am mag -- nus Do -- mi -- nus
    Et lau -- da -- bi -- lis ni -- mis
    Ter -- ri -- bi -- lis,
    Ter -- ri -- bi -- lis,
    Ter -- ri -- bi -- lis est su -- per om -- nes de -- os,
    Ter -- ri -- bi -- lis est su -- per om -- nes de -- os,
    Ter -- ri -- bi -- lis est su -- per om -- nes de -- os,
    Ter -- ri -- bi -- lis est su -- per om -- nes de -- os,
    Ter -- ri -- bi -- lis est su -- per om -- nes de -- os.

}
StaveELyrics = \lyricmode {

    Can -- ta -- te Do -- mi -- no,
    Can -- ta -- te Do -- mi -- no can -- ti -- cum no -- vum,
    Can -- ta -- te Do -- mi -- no om -- nis ter -- ra,
    Can -- ta -- te Do -- mi -- no
    et be -- ne -- di -- ci -- te,
    et be -- ne -- di -- ci -- te no -- mi -- ni e -- ius,

    An -- nun -- ti -- a -- te,
    An -- nun -- ti -- a -- te
    de di -- e in di -- em,
    de di -- e in di -- em
    sa -- lu -- ta -- re e -- ius,
    sa -- lu -- ta -- re e -- ius,
    sa -- lu -- ta -- re e -- ius.

    % secunda pars
    An -- nun -- ti -- a -- te in -- ter gen -- tes glo -- ri -- am e -- ius,
    An -- nun -- ti -- a -- te in -- ter gen -- tes glo -- ri -- am e -- ius.
    In om -- ni -- bus po -- pu -- lis mi -- ra -- bi -- li -- a e -- ius,
    mi -- ra -- bi -- li -- a e -- ius.
    Quo -- ni -- am mag -- nus Do -- mi -- nus
    Et lau -- da -- bi -- lis ni -- mis
    Ter -- ri -- bi -- lis est su -- per om -- nes de -- os,
    Ter -- ri -- bi -- lis est su -- per om -- nes de -- os,
    Ter -- ri -- bi -- lis,
    Ter -- ri -- bi -- lis est su -- per om -- nes de -- os,
    Ter -- ri -- bi -- lis est su -- per om -- nes de -- os.

}
StaveFLyrics = \lyricmode {

}
StaveGLyrics = \lyricmode { A }
StaveHLyrics = \lyricmode { A }

 % Tanslation and attribution of text
 \markup {
        \vspace #1
	\fill-line {
		\column {
                        \vspace #1
			\line { Prima Pars }
			\line { \italic { O sing unto the Lord a new song : O sing unto the Lord all the earth. }}
			\line { \italic { O sing unto the Lord and bless his name : Declare his salvation day by day. }}
			\vspace #1
			\line { Secunda Pars}
			\line { \italic { Declare his glory among the nations : His marvels in all the peoples }}
			\line { \italic { For the Lord is great and exceeding to be praised : He is to be feared above all the gods.}}

			\vspace #1
			\line { Ps. 95 (KJV 96), vv 1 - 4  }


		}
	}
}


%%%%%%%%%%%%%%%%%%
% 5 - Editorial content, including prefatory stave / incipit settings and notes
%%%%%%%%%%%%%%%%%%

 %  Should very rarely need to be touched once a given piece has been typeset

% 5a Editorial method and comments
\markup {
    \vspace #3
    \column {
          %\wordwrap  { \italic { Music source and editorial comments go here.} }

          \wordwrap  {
              \italic {Andreae Gabrielis Sacrae Cantiones [...], Liber Primus}
              , published Antonio Gardano, Venice 1565;
              acknowledgements to the Bavarian State Library,
              whose website \italic{(http://bildsuche.digitale-sammlungen.de)} contains a scan of the whole publication.
          }
          \vspace #1
          \wordwrap  {
              Barlines are editorial (one bar per \italic {tempus}, ie. breve); ficta, ligature brackets, cautionary and
              courtesy accidentals are above the stave where applicable. Original note-values
              have been preserved as far as possible.
              Original mensuration marks are presented rather than imposing modern time signatures.
              Editorial underlay is in italics where applicable;
              Latin spelling has been modernised in places to aid legibility, and punctuation has been
              added.
          }
          \vspace #1
          \wordwrap {
              This is Gabrieli's first published collection of his compositions
              and shows his early style.  1565 is an interesting date as Gabrieli's
              star was just rising in Venice - he had travelled to Munich in 1562,
              befriending Lassus, and then he became organist at S Marco in 1566.
              Quite possibly this collection,  deidcated to Prince Albert, Duke of Bavaria
              and probably at least partially composed while in Munich,
              helped Gabrieli to gain the post.
          }
          \vspace #1
          \wordwrap {
              As suggested on the 1565 title page, instrumental support or substitution
              is optional but worth considering.

          %\wordwrap  { \italic { Barlines and time signatures are editorial; ficta, cautionary and courtesy accidentals are above the stave where applicable.}
	  }
	  \vspace #3
	  .
    }
}

%% 5b - Plainsong incipit - obviously, comment out as required.
%\score   {
%    \transpose c \TranspositionInterval <<
%          \new Staff \with { \remove "Time_signature_engraver" \remove "Ambitus_engraver" } {
%                \set Staff.instrumentName = "Intonation"
%                \clef "treble_8"  \global  \cadenzaOn              <<  {
%                          \override Voice.Slur #'tran%sparent = ##f
%                          f4 s8 f4 s8 f4( g4) s8 g4.
%                      }\addlyrics {  In -- ci -- pit here. }
%               >>
%          }
%     >>
%    \layout {\context { \Voice \remove "Stem_engraver" } }
%}


% 5c - Prefatory staves
\layout {   % Need to modify a couple of settings in the main score layout as well
             indent=4\cm
              \context { \Staff
                         \override InstrumentName #'padding = 2
                         \override InstrumentName #'self-alignment-X = #RIGHT
              }
}
PrefatorySettings = {
  		%\override NoteHead   #'style = #'neomensural      % ie. can set to either Mensural or Neomensural
		%\override Rest #'style = #'neomensural
		%\override Staff.TimeSignature #'style = #'neomensural
                \override Flag #'style = #'mensural
                \autoBeamOff
                 \override Staff.InstrumentName #'Y-extent = #'(-4 . 4)
                 \override Staff.InstrumentName #'self-alignment-X = #RIGHT
                \override Staff.InstrumentName #'padding = 2
                % Uncomment these if you want eg. double b flat in key sig using c2 or f3 clef etc
                % May also have to tweak the numbers (4 vs 5 etc)
                \override Staff.KeySignature.flat-positions = #'((-4 . 4))
                \override Staff.KeySignature.sharp-positions = #'((-4 . 4))
                \cadenzaOn
                \key f \major
		\time 2/2
                \huge
}
PrefatoryLayout = \layout {   % Set the layout inside the incipit
		\context {\Voice
			\remove Ligature_bracket_engraver
			\consists Mensural_ligature_engraver

		}
                \context { \Staff \remove Ambitus_engraver}
		line-width=5
                indent =  0
                ragged-right = ##f
		ragged-last = ##f
                system-count = #1
}
PrefStaveA = \markup {
	\score {
                \new MensuralVoice {
                    \set Staff.instrumentName=\StaveALabel
                    \PrefatorySettings
                    \clef "petrucci-c1"
                    g'1
                     \bar"" \skip1
		}  \layout {\PrefatoryLayout}
	}
}
PrefStaveB = \markup {
	\score {
                \new MensuralVoice {
                    \set Staff.instrumentName=\StaveBLabel
                    \PrefatorySettings
                    \clef "petrucci-c3"
                    g1
                     \bar"" \skip1
		}  \layout {\PrefatoryLayout}
	}
}
PrefStaveC = \markup {
	\score {
                \new MensuralVoice {
                    \set Staff.instrumentName=\StaveCLabel
                    \PrefatorySettings
                    \clef "petrucci-c4"
                    d2
                     \bar"" \skip1
		}  \layout {\PrefatoryLayout}
	}
}
PrefStaveD = \markup {
	\score {
                \new MensuralVoice {
                    \set Staff.instrumentName=\StaveDLabel
                    \PrefatorySettings
                    \clef "petrucci-c4"
                    g2
                     \bar"" \skip1
		}  \layout {\PrefatoryLayout}
	}
}
PrefStaveE = \markup {
	\score {
          \new MensuralVoice {
                    \set Staff.instrumentName=\StaveELabel
                    \PrefatorySettings
                    \clef "petrucci-f4"
                    g,1
                     \bar"" \skip1
		}  \layout {\PrefatoryLayout}
	}
}
PrefStaveF = \markup {
	\score {
                \new MensuralVoice {
                    \set Staff.instrumentName=\StaveFLabel
                    \PrefatorySettings
                    \clef "petrucci-f4"
                    g2
                     \bar"" \skip1
		}  \layout {\PrefatoryLayout}
	}
}
PrefStaveG = \markup {
	\score {
                \new MensuralVoice {
                    \set Staff.instrumentName=\StaveGLabel
                    \PrefatorySettings
                    \clef "petrucci-f4"
                    g2
                     \bar"" \skip1
		}  \layout {\PrefatoryLayout}
	}
}
PrefStaveH = \markup {
	\score {
                \new MensuralVoice {
                    \set Staff.instrumentName=\StaveHLabel
                    \PrefatorySettings
                    \clef "petrucci-f4"
                    f2
                     \bar"" \skip1
		}  \layout {\PrefatoryLayout}
	}
}





\version "2.18"