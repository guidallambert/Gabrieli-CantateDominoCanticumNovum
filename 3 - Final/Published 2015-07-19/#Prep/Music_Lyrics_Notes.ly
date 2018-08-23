
%%%%%%%%%%%%%%%%%%
% Some useful definitions for early music
%%%%%%%%%%%%%%%%%%

italicas=\override LyricText #'font-shape = #'italic
rectas=\override LyricText #'font-shape = #'upright
ss=\once \set suggestAccidentals = ##t
ficta = \once \set suggestAccidentals = ##t
date = #(strftime "%Y-%m-%d" (localtime (current-time)))

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

StaveANotes = {

          % clef c1

          \override Score.TimeSignature.stencil =
            #(custom-time-signature "timesig.mensural22")
        \time 2/1

                \mark \markup \italic {"Prima Pars"}
        	r1
		c''\breve g'1
	r1	c''\breve g'2 g'2 a'1. g'2
	r1	f'\breve c'2 c'2 ees'1 d'2 d'1 d'2 f'2 f'1( e'2) f'\breve
	r1 r1 r2
		c''2 d''1 d''2 c''2 bes'2 a'2 a'1
	r2	c''2 c''2 c''2 \[ ees''1( d''1) \] c''\breve
	R\breve r1 r2
		g'2 c''2. bes'4 \[ a'1( c''1) \] bes'2 a'2 d''1 c''2.( bes'4 a'1)
	r1 R\breve r2
		g'2 c''2. bes'4 a'2 a'2 f'1 d'1 e'1
		c'2 f'1 e'2 f'2 f'2 g'2 bes'2 a'2
		f'2 c''2. bes'4 a'2 a'2 bes'1 g'1 a'\breve
	r1 r1 r2
		c''1 c''2 a'2 a'2 d''2.(  c''4 bes'4 a'4 g'2) a'1
	r2	g'2 g'2 e'1 e'2 f'1 e'1
	R\longa R\breve
		c'1 d'2 e'2 f'2. f'4 f'1
	R\breve r2
		f'2 g'2 a'2 bes'2. bes'4 a'2 c''1 g'2
		g'1 g'2 g'2 g'2. g'4 a'1 a'1

		\cadenzaOn

		g'\maxima*1/2
		\bar "|."
		\cadenzaOff
		\pageBreak

	R\longa % Need to split this longa rest to get the secunda pars markup in the right place
	R\longa R\longa r1
		c''1 a'2 c''1 d''2 c''2 c''2 a'2 a'2 c''2 g'2 a'2 a'2 g'1 f'2
		f'1 e'2 f'2 g'2 a'2 a'2 g'1
	r2	c''1 g'2 a'2 g'2 e'2 f'2 d'2 g'2 g'2 g'2 g'2 d''1 c''2.( \ficta b'8 a'8 \ficta b'2) c''1
	R\breve r2
		g'2 bes'2 a'2 a'2 g'2 a'1
	r1 r2	d''1 c''2 bes'2 \[ a'1( g'1) \] f'2 g'1
	r2	g'1 g'2 g'1 a'1
		c''1. c''2 c''1 f'1
	r1 r2	g'2 a'2.( g'4 f'2) e'2 e'2 d'2 e'2
		e'2 f'1. f'2 d'2.( c'4 d'4 e'4 f'1) e'2 f'\breve
	r2	c''2.( f'4 a'4. bes'8 c''\breve) a'1
	r2	c''2.( f'4 a'4. bes'8 c''\breve) a'2
		c''2 c''1 d''2 d''2 bes'2 bes'2 g'1 g'1
	r1 r2	g'2 g'2 a'2 g'2.( f'4 e'4 d'8 e'8 f'1 e'2) f'\breve
	r2	c''2 c''2 d''2 c''1. a'2
	r1 r2	c''2 c''2 g'2 a'1 a'\breve
	r1 r1 r2
		c''1 c''2 a'2 a'2 d''2.(  c''4 bes'4 a'4 g'2) a'1
	r2	g'2 g'2 e'1 e'2 f'1 e'1
	R\longa R\breve
		c'1 d'2 e'2 f'2. f'4 f'1
	R\breve r2
		f'2 g'2 a'2 bes'2. bes'4 a'2 c''1 g'2
		g'1 g'2 g'2 g'2. g'4 a'2 c''2.( bes'4 g'2) a'\maxima*1/4

	        \bar "|."

}
StaveBNotes = {
        % clef c1
  	R\breve r1
		c''\breve a'1 g'1 c'1 f'2 f'1( e'2) f'1
	r1 r1	c''\breve a'2 a'2 bes'1 c''\breve.
	R\breve r2
		g'2 a'1 a'2 bes'2 a'2 g'2 f'\breve
		a'\breve g'2 g'2 f'2.( e'8 d'8 e'1) f'\breve
	r1 R\breve r2
		f'2 c''2. bes'4 a'2 a'2 f'4( e'8 d'8 e'4 f'4 g'2) f'1( e'2) f'1
	r1 r1 r2
		d'2 g'2. f'4 e'1 c'2 c''2 a'4( bes'4 c''1 \ficta b'2) c''\breve
	r1 r1 r2
		g'2 c''2. bes'4 a'2 g'2 f'1 d'1 c'1
		c''1 c''2 a'1 a'2 bes'1 a'\breve
		f'1. f'2 d'2 d'2 f'1 g'1
	r2	c''1 c''2 a'2 d''2 g'1 a'1
	r1 R\longa
		f'1 g'2 a'2 bes'2. bes'4 a'2 a'2.( g'4 f'1 e'2) f'1
	r1 r2	g'2 a'2 a'2 g'2. g'4 c'2
		c'2 d'2 d'2 e'2. e'4 f'1 f'1 e'\maxima*1/2


	R\longa r1
		f'1 e'2 f'1 g'2 a'2 a'2 g'2 g'2 a'2 f'2 g'2.( f'8 e'8 f'2) g'2 f'4( g'4 a'4 bes'4 c''1) g'1
	r1 r2	f'1 e'2 f'2 c'2 c'2 g'2 a'1
	R\breve r2
		c''1 bes'2 c''2 a'2 g'2 g'2 f'2 d'2 c'2 c'2 g'2 d'2 e'1 g'\longa
	R\breve
		e'1 f'2. e'4  e'2 d'2 e'1
	R\breve r2
		e'2 f'1. e'2 d'2 d'2 c'2.( d'4 e'2)
		e'1 e'2 e'1 f'2
		a'1 a'2 a'1 g'2 g'2 bes'2.( c''4 d''2) bes'2 a'2 g'2 f'1
	R\breve
		g'1 bes'1. a'2 f'2 f'2 f'1
	r2	c''2.( f'4 a'4. bes'8 c''1) a'1
	r1 r1 r2
		c''2.( f'4 a'4. bes'8 c''1) a'1
		f'2.( c'4 e'4. f'8 g'2) f'2
		a'2 a'1 bes'2 f'2 g'1 g'2 c''1( \ficta b'2) c''\breve.
	R\breve
		c''\breve c''2 d''2 g'1 a'2 f'2 f'2 e'2 a'2.( g'8 f'8  e'2. d'4 e'4 c'4 f'1 e'2) f'1
		c''1 c''2 a'1 a'2 bes'1 a'\breve
		f'1. f'2 d'2 d'2 f'1 g'1
	r2	c''1 c''2 a'2 d''2 g'1 a'1
	r1 R\longa
		f'1 g'2 a'2 bes'2. bes'4 a'2 a'2.( g'4 f'1 e'2) f'1
	r1 r2	g'2 a'2 a'2 g'2. g'4 c'2
		c'2 d'2 d'2 e'2. e'4 f'2 f'1 e'2 f'\maxima*1/4



}
StaveCNotes = {

        %clef c3

  		f'\breve e'\breve
	r1	f'1 e'1. e'2 d'1 c'1 d'\breve c'1
	r1 R\breve
		bes1 a2 a2 g1 f1. f2 f'1 f'2 e'2 f'1 f'2
		g'2 f'2 e'2 \[ d'1( c'1) \]
	r1 r2	f2 g2 g2 bes1 g2
		g2 c'2. bes4 a2 c'2  bes4( a8 bes8 c'2) d'2.( c'4 bes1) a1
	r2	f2 f'2. e'4 d'2 c'2 bes1 g1 f2
		c'2 f'2 e'2 d'2 c'2 bes2 a2 c'2
		g1 c'2. bes4 a2 c'2 a2 \[g1( c'1) \] a2
		f2 f2 c'2 d'2.( c'4 bes4 a4 g2) a2
		c'2 f'2 e'2 f'2 d'2 f'2 f'2.( e'8 d'8 e'2) f'1
	r2	f'1 f'2 d'2 d'2 f'1 c'2 c'1 c'2 bes2 a2 bes1 c'\longa
	r1	c'\breve c'2 c'2 d'2. d'4 c'1 f4( g4 a4 f4 g1) a2
		a2 bes2 c'2 d'2. d'4 d'1 c'1 bes2 g2 bes2 a2 c'2
		c'2 d'2 e'2 f'2. f'4 e'2 e'2.( d'4 c'1 \ficta b2)

		c'\breve. ~ c'\maxima*1/2   % Don't like doing this as moving the barlines will break the way it's displayed.

                \mark \markup \italic {"Secunda Pars"}
		c'1 a2 c'1 d'2 c'2 c'2 a2 bes2 c'2 d'2 a2 a2 d'1 c'2
		f'1 e'2 f'2 d'2 d'2 e'2 a2 g2 a2 c'2 c'2.( d'4 e'2) d'2 f'2( e'2) d'1
	r2	c'1 a2 c'2 c'2 c'2 f2 c'2 c'2 d'2 bes2 c'2.( d'4 e'2) d'2 f'2 c'2
	r2	c'1 bes2 c'2 a2 bes2 bes2 g2 c'2 e'2 g'2 e'2 e'2 d'1 e'2
		e'2 d'2 c'2 c'2 bes2 c'1
	r1 r2	d'1 c'2 bes2 a1 g2 a1
		d'1 c'2. g4 bes2 a2 g2
		c'1 c'2 c'1 g1
	r2	f'1 f'2 f'1 e'1 d'1 f'1. e'2 c'2 c'2 c'1
	r1 r2	c'2 bes2.( c'4 d'2) c'2 bes1. a2 c'1
		c'2.( f4 a4. bes8 c'2) f1
		c'2.( f4 a4. bes8 c'4 d'4 e'1) f'2
		c'2.( f4 a4. bes8 c'2. bes4 \[ a1 g1) \] c'2
		f'2 f'1 d'2 d'2 d'1 c'1 d'1 e'\breve
		c'1 c'2 g2 c'4( bes4 a4 bes4 c'1) a1
	r2	f'2 f'2 e'2 f'4.( g'8 a'2) g'2.( f'4 e'2)
		f'2 g'2 g'2 c'\breve c'1
	r1	f'1. f'2 d'2 d'2 f'1 c'2 c'1 c'2 bes2 a2 bes1 c'\longa
	r1	c'\breve c'2 c'2 d'2. d'4 c'1 f4( g4 a4 f4 g1) a2
		a2 bes2 c'2 d'2. d'4 d'1 c'1 bes2 g2 bes2 a2 c'2
		c'2 d'2 e'2 f'2. f'4 e'2 e'2.( d'4 c'1 \ficta b2)
		c'1 ~ c'\maxima*1/2



}
StaveDNotes = {

  	% clef c4
	R\breve	c'\breve a1
	r1 R\longa
		bes\breve a1. a2 g1 f\breve.
	r1	a1 c'1 c'2 d'2 c'2 bes2 c'1
	R\breve r1 r2
		c'2 c'2 c'2 a1 bes1.
		f2 c'2. bes4 a1 c'4( bes4 a4 g4 f2) e2 d4( e4 f1 e2) f\breve
	R\longa
		f1 c'2. bes4 a2 a2 f1 e2.( f4 g1) f\breve
	r2	g1 c'2. bes4 a1 a2 d2 f1( e2) f2
		f2 f2 c'2 d'1 bes1
	r2	c'1 c'2 a2 c'2 d'2.( c'4 bes4 a4 g2) c'1
	r2	f1 f2 d2 d2 g1 f2 f1 e2 e2 g2 a1 a1
	r1	f1 g2 a2 bes2. bes4 a2 a2.( g4 f1 e2) f1
	r1 r1	d1 e2 f2 g2. g4 f1 \[ e1( g1) \] c2
		c2 c2 g2 e2. e4 d2
		g2 g2 g2 f2. f4 f2 c2.( d4 e4 f4 g1) g\maxima*1/4


	R\breve
		f1 e2 f1 g2 a2 bes2 c'2 c'2 bes2 bes2 f4( g4 a4 bes4 c'1.) bes2 g1 f2
		c'1 a2 a2 f2 e2 g2 a2.( g4 f1) g1 f1 c1 f1 g1 d1 f1
	r1 r2	f1 e2 f2 g2 a2 f2 g2 g2 c2 c2 c'2 b2 c'1 g1
	r2	g2 a2. g4 g2 f2 g2
		g2 d'2. a4 c'2 bes2 a2
		e2 f2. e4 e2 d2 e1
		d1 f2 c2 d2 d2 e2.( f4 g1)
	r2	c'1 c'2 c'\breve f1 c'1 bes1. d'2 c'2 c'2 c'2
		a1 c'1 \ficta b2 c'2 c'2 d'1
		d2 f1 d2 f1 g1 f2
		c'2.( f4 a4. bes8 c'2. bes4 a\breve) g1
		c'2.( f4 a4. bes8 c'2) f1
	r1 r2	e2 f1 f2 f1 d1 d2 e1 g2
		g2 g2 a2 g1 e2 f2 f2 e2 a2.( g8 f8 g1) f2
		f2 a2 bes2 \[ c'1( f1) \] c'1
	r1 r2	g2 g2 a2 g1 f2
		c'1 c'2 a2 c'2 d'2.( c'4 bes4 a4 g2) c'1
	r2	f1 f2 d2 d2 g1 f2 f1 e2 e2 g2 a1 a1
	r1	f1 g2 a2 bes2. bes4 a2 a2.( g4 f1 e2) f1
	r1 r1	d1 e2 f2 g2. g4 f1 \[ e1( g1) \] c2
		c2 c2 g2 e2. e4 d2
		g2.( a8 bes8 c'4 bes4 a4 f4 a2 g1) f\maxima*1/4

}
StaveENotes = {
        %clef f4
  	R\longa
		f\breve c\breve
	R\longa
		f\breve c2 c2 d1 bes,2 bes,2 f,2 f,2 c1 f,2
		f2 a1 a2 bes2 a2 g2 f1
	R\breve r1
		f\breve f2 f2 \[ ees1( bes,1) \] c1
	r2	f,2 f2. e4 d2 c2 bes,1 g,1 f,\breve.
	r1 r1	c1 c'2. bes4 a2 g2 f1 d1 c\breve
	R\breve r1
		c1 f2. e4 d2 c2 bes,1 g,1 f,1
	r1 R\breve r1
		f1. f2 d2 d2 g1 f\breve
	r1 R\breve r1
		c1. c2 a,2 a,2 d1 c1
	r2	f2 e2 f2 bes,2. bes,	4 f1 \[ d1( c1) \] f,1
	r1 R\breve
		a,1 bes,2 c2 d2. d4 c1 g,1 f,1
		c1 c2 c2 g,2. g,4 c1 f,\breve c\maxima*1/2



	R\longa R\longa r1
		c1 a,2 bes,1 c2 d2 e2 f2 f,2 f,4( g,4 a,4 bes,4 c2) bes,2 a,2 a,2 d1 c1
	r2	f1 e2 f2 d2 c2 c2 bes,2 g,2 f,2 f,2 c2 g,2 a,1 c1
	R\longa R\breve	r1
		c1 f2. c4 ees2 d2 c1
	r\breve
		a,1 d2. a,4 c2 bes,2 a,1
	r1 R\breve
		c1. c2 c\breve f,\breve
	R\longa
		c1 f1. a2 g2 g2 c1
	r1 r2	f,2 bes,1. d2 c2 c2 f,\breve
	r1 r2	f2.( f,4 a,4. bes,8 c1) f,\breve
	r2	f2.( f,4 a,4. bes,8 c1) f,1
	r2	f,2 bes,1 g,2 g,2 c2 c2 g,1 c\breve
	r1	c1 c2 d2 c1 f,1
	R\breve r1 r2
		c2 c2 d2 c\breve. f,1
		f1. f2 d2 d2 g1 f\breve
	r1 R\breve r1
		c1. c2 a,2 a,2 d1 c1
	r2	f2 e2 f2 bes,2. bes,	4 f1 \[ d1( c1) \] f,1
	r1 R\breve
		a,1 bes,2 c2 d2. d4 c1 g,1 f,1
		c1 c2 c2 g,2. g,4 c1 \[ f,1( c1) \] f,\maxima*1/4

}
StaveFNotes = { }
StaveGNotes = {  }
StaveHNotes = {  }

%%%%%%%%%%%%%%%%%%
% 4 - Score content: text / lyrics
%%%%%%%%%%%%%%%%%%

StaveALyrics = \lyricmode {
  	Pa -- ter,
	Pa -- ter pec -- ca -- vi,
	Pa -- ter pec -- ca -- vi,
	Pa -- ter pec -- ca -- vi
	in coe -- lum et co -- ram te,
	iam non sum dig -- nus
	vo -- ca -- ri fi -- li -- us tu -- us, __
	vo -- ca -- ri fi -- li -- us tu -- us,
	vo -- ca -- ri fi -- li -- us tu -- us,
	vo -- ca -- ri fi -- li -- us tu -- us,
	fac me si -- cut u -- num,
	fac me si -- cut u -- num
	ex mer -- ce -- na -- ri -- is,
	ex mer -- ce -- na -- ri -- is tu -- is,
	ex mer -- ce -- na -- ri -- is tu -- is.

	Quan -- ti mer -- ce -- na -- ri -- i in do -- mo pa -- tris me -- i,
	Quan -- ti mer -- ce -- na -- ri -- i,
	Quan -- ti mer -- ce -- na -- ri -- i in do -- mo pa -- tris me -- i
	a -- bun -- dant pa -- ni -- bus!
	a -- bun -- dant pa -- ni -- bus!
	E -- go au -- tem,
	E -- go au -- tem
	hic fa -- me pe -- re -- o,
	hic fa -- me pe -- re -- o.
	Sur -- gam,
	Sur -- gam,
	et i -- bo ad pa -- trem me -- am,
	et di -- cam e -- i,
	et di -- cam e -- i,
	et di -- cam e -- i:
	Fac me si -- cut u -- num,
	Fac me si -- cut u -- num
	ex mer -- ce -- na -- ri -- is,
	ex mer -- ce -- na -- ri -- is tu -- is,
	ex mer -- ce -- na -- ri -- is tu -- is.

}
StaveBLyrics = \lyricmode {

	Pa -- ter,
	Pa -- ter pec -- ca -- vi,
	Pa -- ter pec -- ca -- vi
	in coe -- lum et co -- ram te,
	iam non sum dig -- nus
	vo -- ca -- ri fi -- li -- us tu -- us,
	vo -- ca -- ri fi -- li -- us tu -- us,
	vo -- ca -- ri fi -- li -- us tu -- us,
	fac me si -- cut u -- num,
	fac me si -- cut u -- num,
	%italicas
	fac me si -- cut u -- num
	ex mer -- ce -- na -- ri -- is tu -- is,
	ex mer -- ce -- na -- ri -- is,
	ex mer -- ce -- na -- ri -- is tu -- is.


	Quan -- ti mer -- ce -- na -- ri -- i in do -- mo pa -- tris me -- i,
	Quan -- ti mer -- ce -- na -- ri -- i,
	Quan -- ti mer -- ce -- na -- ri -- i in do -- mo pa -- tris me -- i __
	a -- bun -- dant pa -- ni -- bus!
	a -- bun -- dant pa -- ni -- bus! __
	E -- go au -- tem,
	E -- go au -- tem
	hic fa -- me pe -- re -- o,
	hic fa -- me pe -- re -- o.
	Sur -- gam,
	Sur -- gam,
	Sur -- gam,
	et i -- bo ad pa -- trem me -- am,
	et di -- cam e -- i,
	et di -- cam e -- i:
	Fac me si -- cut u -- num,
	Fac me si -- cut u -- num,
	Fac me si -- cut u -- num
	ex mer -- ce -- na -- ri -- is tu -- is,
	ex mer -- ce -- na -- ri -- is tu -- is,
	ex mer -- ce -- na -- ri -- is tu -- is.

}
StaveCLyrics = \lyricmode {

	Pa -- ter,
	Pa -- ter pec -- ca -- vi,
	Pa -- ter,
	Pa -- ter pec -- ca -- vi
	in coe -- lum,
	in coe -- lum et co -- ram te, __
	iam non sum dig -- nus
	vo -- ca -- ri fi -- li -- us tu -- us,
	vo -- ca -- ri fi -- li -- us tu -- us,
	vo -- ca -- ri fi -- li -- us tu -- us,
	vo -- ca -- ri fi -- li -- us tu -- us,
	fi -- li -- us tu -- us,
	vo -- ca -- ri fi -- li -- us tu -- us,
	fac me si -- cut u -- num,
	fac me si -- cut u -- num
	ex mer -- ce -- na -- ri -- is tu -- is,
	ex mer -- ce -- na -- ri -- is,
	ex mer -- ce -- na -- ri -- is,
	ex mer -- ce -- na -- ri -- is tu -- is. __

	Quan -- ti mer -- ce -- na -- ri -- i in do -- mo pa -- tris me -- i,
	Quan -- ti mer -- ce -- na -- ri -- i in do -- mo pa -- tris me -- i,
	Quan -- ti mer -- ce -- na -- ri -- i in do -- mo pa -- tris me -- i,
	Quan -- ti mer -- ce -- na -- ri -- i in do -- mo pa -- tris me -- i
	a -- bun -- dant pa -- ni -- bus!
	a -- bun -- dant pa -- ni -- bus!
	a -- bun -- dant pa -- ni -- bus!
	E -- go au -- tem,
	E -- go au -- tem
	hic fa -- me pe -- re -- o,
	hic fa -- me pe -- re -- o.
	Sur -- gam,
	Sur -- gam,
	Sur -- gam,
	et i -- bo ad pa -- trem me -- am,
	et di -- cam e -- i,
	et di -- cam e -- i,
	et di -- cam e -- i:

	Fac me si -- cut u -- num,
	Fac me si -- cut u -- num
	ex mer -- ce -- na -- ri -- is tu -- is,
	ex mer -- ce -- na -- ri -- is,
	ex mer -- ce -- na -- ri -- is,
	ex mer -- ce -- na -- ri -- is tu -- is. __



}
StaveDLyrics = \lyricmode {

  	Pa -- ter,
	Pa -- ter pec -- ca -- vi,
	in coe -- lum et co -- ram te,
	iam non sum dig -- nus
	vo -- ca -- ri fi -- li -- us tu -- us,
	vo -- ca -- ri fi -- li -- us tu -- us,
	vo -- ca -- ri fi -- li -- us tu -- us,
	fi -- li -- us tu -- us,
	fac me si -- cut u -- num,
	fac me si -- cut u -- num,
	fac me si -- cut u -- num
	ex mer -- ce -- na -- ri -- is tu -- is,
	ex mer -- ce -- na -- ri -- is tu -- is,
	ex mer -- ce -- na -- ri -- is,
	ex mer -- ce -- na -- ri -- is tu -- is.

	Quan -- ti mer -- ce -- na -- ri -- i in do -- mo pa -- tris me -- i,
	Quan -- ti mer -- ce -- na -- ri -- i __ in do -- mo pa -- tris me -- i,
	Quan -- ti mer -- ce -- na -- ri -- i in do -- mo pa -- tris me -- i
	a -- bun -- dant pa -- ni -- bus!
	a -- bun -- dant pa -- ni -- bus!
	a -- bun -- dant pa -- ni -- bus!
	a -- bun -- dant pa -- ni -- bus! __
	E -- go au -- tem
	hic fa -- me pe -- re -- o,
	hic fa -- me pe -- re -- o.
	hic fa -- me pe -- re -- o.
	Sur -- gam,
	Sur -- gam,
	et i -- bo ad pa -- trem me -- am,
	et di -- cam e -- i,
	et di -- cam e -- i,
	et di -- cam e -- i,
	et di -- cam e -- i:
	Fac me si -- cut u -- num,
	Fac me si -- cut u -- num,
	Fac me si -- cut u -- num
	ex mer -- ce -- na -- ri -- is tu -- is,
	ex mer -- ce -- na -- ri -- is tu -- is,
	ex mer -- ce -- na -- ri -- is tu -- is.

}
StaveELyrics = \lyricmode {

	Pa -- ter,
	Pa -- ter pec -- ca -- vi,
	Pa -- ter pec -- ca -- vi
	in coe -- lum et co -- ram te,
	iam non sum dig -- nus
	vo -- ca -- ri fi -- li -- us tu -- us,
	vo -- ca -- ri fi -- li -- us tu -- us,
	vo -- ca -- ri fi -- li -- us tu -- us,
	fac me si -- cut u -- num,
	fac me si -- cut u -- num
	ex mer -- ce -- na -- ri -- is tu -- is,
	ex mer -- ce -- na -- ri -- is tu -- is,
	ex mer -- ce -- na -- ri -- is tu -- is.


	Quan -- ti mer -- ce -- na -- ri -- i in do -- mo pa -- tris me -- i,
	Quan -- ti mer -- ce -- na -- ri -- i in do -- mo pa -- tris me -- i
	a -- bun -- dant pa -- ni -- bus!
	a -- bun -- dant pa -- ni -- bus!
	E -- go au -- tem
	hic fa -- me pe -- re -- o,
	hic fa -- me pe -- re -- o.
	Sur -- gam,
	Sur -- gam,
	et i -- bo ad pa -- trem me -- am,
	et di -- cam e -- i,
	et di -- cam e -- i:
	Fac me si -- cut u -- num,
	Fac me si -- cut u -- num
	ex mer -- ce -- na -- ri -- is tu -- is,
	ex mer -- ce -- na -- ri -- is tu -- is,
	ex mer -- ce -- na -- ri -- is tu -- is.

}
StaveFLyrics = \lyricmode {
  Pa -- ter pec -- ca -- vi in coe -- lum et co -- ram te,
iam non sum dig -- nus vo -- ca -- ri fi -- li -- us tu -- us,
fac me si -- cut u -- num ex mer -- ce -- na -- ri -- is tu -- is.


Quan -- ti mer -- ce -- na -- ri -- i in do -- mo pa -- tris me -- i
a -- bun -- dant pa -- ni -- bus!
E -- go au -- tem
hic fa -- me pe -- re -- o.
Sur -- gam,
et i -- bo ad pa -- trem me -- am,
et di -- cam ei:
Fac me si -- cut u -- num
ex mer -- ce -- na -- ri -- is tu -- is.
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
			\line { \italic { Father, I have sinned in heaven and befure thee }}
			\line { \italic { And thus I am not worthy to be called your son; }}
			\line { \italic { make me as one among your hired men.}}
			\vspace #1
			\line { Secunda Pars}
			\line { \italic { How many hired men in my father's house have abundant bread}}
			\line { \italic { but I perish here for hunger!}}
			\line { \italic { I will arise and go to my father and say to him:}}
			\line { \italic { Make me as one among your hired men.}}
			\vspace #1
			\line { Responsory for the 2nd Sunday of Lent.  }
			\line { Parable of the Prodigal Son, cf. Luke 15:17-19.}


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
                    c''\breve
                     \bar"" \skip1
		}  \layout {\PrefatoryLayout}
	}
}
PrefStaveB = \markup {
	\score {
                \new MensuralVoice {
                    \set Staff.instrumentName=\StaveBLabel
                    \PrefatorySettings
                    \clef "petrucci-c1"
                    c''\breve
                     \bar"" \skip1
		}  \layout {\PrefatoryLayout}
	}
}
PrefStaveC = \markup {
	\score {
                \new MensuralVoice {
                    \set Staff.instrumentName=\StaveCLabel
                    \PrefatorySettings
                    \clef "petrucci-c3"
                    f'\breve
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
                    c'\breve
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
                    f\breve
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