% afilename.mp -- do not edit, generated automatically by 1.tex
input feynmp
require_RCS_revision "1.30";
beginchar(1, 40*1.0pt#, 25*1.0pt#, 0);
"feynmf: 1";
LaTeX_unitlength:=1.0pt;
subgraph (0, 0, w, h);
vinit;
pickup pencircle scaled thin;
pickup pencircle scaled thick;
vleft (__i1, __i2);
vright (__o1, __o2);
vconnect ("fermion", __i1, __v1, __v3, __o1);
vconnect ("fermion", __o2, __v4, __v2, __i2);
vconnect ("photon", __v1, __v2);
vconnect ("photon", __v3, __v4);
vdotn (__v, 4);
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
