% Start of pscat.pro -- prolog for troff translator
% Copyright (c) 1985,1987 Adobe Systems Incorporated. All Rights Reserved. 
% GOVERNMENT END USERS: See Notice file in TranScript library directory
% -- probably /usr/lib/ps/Notice
% RCS: $Header: pscat.pro,v 2.2 87/11/17 16:40:32 byron Rel $
save /pscatsave exch def
/$pscat 50 dict def
$pscat begin
/fm [1 0 0 1 0 0] def
/xo 0 def /yo 0 def
/M /moveto load def
/R /show load def
/S {exch currentpoint exch pop moveto show}def
/T {exch currentpoint pop exch moveto show}def
/U {3 1 roll moveto show}def
/siz 0 def
/font 0 def
/Z {/siz exch def SF}def
/F {/font exch def SF}def
/SF{font 0 ne
    {catfonts font 1 sub get fm 0 siz put fm 3 siz neg put 
     fm makefont setfont}if}def
/BP{save/catsv exch def 0 792 translate 72 432 div dup neg scale 
  xo yo translate 0 0 moveto}def
/EP{catsv restore showpage}def

% definitions for PPROC callback functions
% each PPROC is called with the following number on the stack:
% pointsize charcode railmag pswidth pschar x y wid
/$pprocs 50 dict def
/fractm [.65 0 0 .6 0 0] def
% fractions
/PS1{gsave $pprocs begin
    /wid exch def pop pop pop pop pop /ch exch def /size exch def
    /pair $pprocs ch get def /cf currentfont def
    cf fractm makefont setfont
    0 .3 size mul 6 mul 2 copy neg rmoveto pair 0 get show rmoveto
    currentfont cf setfont (\244) show setfont
    pair 1 get show grestore wid .06 div 0 rmoveto end}def
$pprocs begin
8#34 [(1)(4)] def
8#36 [(1)(2)] def
8#46 [(3)(4)] def
end
% DIThacks fonts for some special chars
50 dict dup begin
/FontType 3 def
/FontName /DIThacks def
/FontMatrix [.001 0.0 0.0 .001 0.0 0.0] def
/FontBBox [-220 -280 900 900] def% a lie but ...
/Encoding 256 array def
0 1 255{Encoding exch /.notdef put}for
Encoding
 dup 8#040/space put %space
 dup 8#110/rc put %right ceil
 dup 8#111/lt put %left  top curl
 dup 8#112/bv put %bold vert
 dup 8#113/lk put %left  mid curl
 dup 8#114/lb put %left  bot curl
 dup 8#115/rt put %right top curl
 dup 8#116/rk put %right mid curl
 dup 8#117/rb put %right bot curl
 dup 8#120/rf put %right floor
 dup 8#121/lf put %left  floor
 dup 8#122/lc put %left  ceil
 dup 8#140/sq put %square
 dup 8#141/bx put %box
 dup 8#142/ci put %circle
 dup 8#143/br put %box rule
 dup 8#144/rn put %root extender
 dup 8#145/vr put %vertical rule
 dup 8#146/ob put %outline bullet
 dup 8#147/bu put %bullet
 dup 8#150/ru put %rule
 dup 8#151/ul put %underline
 pop
/DITfd 100 dict def
/BuildChar{0 begin
 /cc exch def /fd exch def
 /charname fd /Encoding get cc get def
 /charwid fd /Metrics get charname get def
 /charproc fd /CharProcs get charname get def
 charwid 0 fd /FontBBox get aload pop setcachedevice
 40 setlinewidth
 newpath 0 0 moveto gsave charproc grestore
 end}def
/BuildChar load 0 DITfd put
%/UniqueID 5 def
/CharProcs 50 dict def
CharProcs begin
/space{}def
/.notdef{}def
/ru{500 0 rls}def
/rn{0 750 moveto 500 0 rls}def
/vr{20 800 moveto 0 -770 rls}def
/bv{20 800 moveto 0 -1000 rls}def
/br{20 770 moveto 0 -1040 rls}def
/ul{0 -250 moveto 500 0 rls}def
/ob{200 250 rmoveto currentpoint newpath 200 0 360 arc closepath stroke}def
/bu{200 250 rmoveto currentpoint newpath 200 0 360 arc closepath fill}def
/sq{80 0 rmoveto currentpoint dround newpath moveto
    640 0 rlineto 0 640 rlineto -640 0 rlineto closepath stroke}def
/bx{80 0 rmoveto currentpoint dround newpath moveto
    640 0 rlineto 0 640 rlineto -640 0 rlineto closepath fill}def
/ci{355 333 rmoveto currentpoint newpath 333 0 360 arc
    50 setlinewidth stroke}def

/lt{20 -200 moveto 0 550 rlineto currx 800 2cx s4 add exch s4 a4p stroke}def
/lb{20 800 moveto 0 -550 rlineto currx -200 2cx s4 add exch s4 a4p stroke}def
/rt{20 -200 moveto 0 550 rlineto currx 800 2cx s4 sub exch s4 a4p stroke}def
/rb{20 800 moveto 0 -500 rlineto currx -200 2cx s4 sub exch s4 a4p stroke}def
/lk{20 800 moveto 20 300 -280 300 s4 arcto pop pop 1000 sub
    currentpoint stroke moveto
    20 300 4 2 roll s4 a4p 20 -200 lineto stroke}def
/rk{20 800 moveto 20 300 320 300 s4 arcto pop pop 1000 sub
    currentpoint stroke moveto
    20 300 4 2 roll s4 a4p 20 -200 lineto stroke}def
/lf{20 800 moveto 0 -1000 rlineto s4 0 rls}def
/rf{20 800 moveto 0 -1000 rlineto s4 neg 0 rls}def
/lc{20 -200 moveto 0 1000 rlineto s4 0 rls}def
/rc{20 -200 moveto 0 1000 rlineto s4 neg 0 rls}def
end

/Metrics 50 dict def Metrics begin
/.notdef 0 def
/space 500 def
/ru 500 def
/br 0 def
/lt 250 def
/lb 250 def
/rt 250 def
/rb 250 def
/lk 250 def
/rk 250 def
/rc 250 def
/lc 250 def
/rf 250 def
/lf 250 def
/bv 250 def
/ob 350 def
/bu 350 def
/ci 750 def
/bx 750 def
/sq 750 def
/rn 500 def
/ul 500 def
/vr 0 def
end

DITfd begin
/s2 500 def /s4 250 def /s3 333 def
/a4p{arcto pop pop pop pop}def
/2cx{2 copy exch}def
/rls{rlineto stroke}def
/currx{currentpoint pop}def
/dround{transform round exch round exch itransform} def
end
end
/DIThacks exch definefont pop
