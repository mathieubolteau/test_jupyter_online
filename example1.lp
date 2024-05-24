cell(c1).
cell(c2).
cell(c3).
class(early_TE).
class(medium_TE).
class(late_TE).
be_part(c1,early_TE).
be_part(c2,medium_TE).
be_part(c3,late_TE).
gene(g1).
gene(g2).
expr(c1,g1,0).
expr(c1,g2,0).
expr(c2,g1,0).
expr(c2,g2,1).
expr(c3,g1,1).
expr(c3,g2,1).
pert(C,G,S,CL) :- expr(C,G,S), cell(C), gene(G), be_part(C,CL).
{sel_pert(C,G,S,CL) : pert(C,G,S,CL)}.
:- sel_pert(_,_,_,early_TE).
#maximize{1,C,G: sel_pert(C,G,_,_), pert(C,G,_,_)}.
#show sel_pert/4.
