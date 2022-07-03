(* ::Package:: *)

(*
t represents the time;
tr means trigonometric form;
ti means \[Theta]i;
w means \[Omega] and in the variables, it indicates that the differintiation of t in the following expression has been replaced by w;
a means \[Alpha] and in the variables, it indicates that the differintiation of w in the following expression has been replaced by a;
the a after t, w , and a means answer;
sddot means Overscript[s, ..];
u means that the indicated variable has been entered by user;
*)

(*The mechanism starts its movement from the position shown in the Adams/View model, so the theta equation of the driver link should start from Pi/2 and rise in negative 
direction to get a movement like the one in Adams/View simulation *)
(* beta is the vertex angle of the plane (the vertex is located on point A)*)
(*First Loop*)

ClearAll [t, t1, t2, t3, t4, ta3, ta4, w2, w3, w4, wa3, wa4, a2, a3, a4, aa3, aa4, a, b, c, d]

(*Displacement*)
d1=a Exp[I t1]+b Exp[I t2]-c Exp[I t3]-d Exp[I t4]

d1tr=ExpToTrig[d1]
d1r=a Cos[t1]+b Cos[t2]-c Cos[t3]-d Cos[t4]
d1i=a Sin[t1]+b Sin[t2]-c Sin[t3]-d Sin[t4]

sd1=Solve[{d1r==0, d1i==0},{t3,t4}]
ta3=t3/.sd1[[1]]
ta4=t4/.sd1[[1]]

(*Velocity*)
v1=D[d1,t,NonConstants->{t2,t3,t4}]

v1tr=ExpToTrig[v1]
v1trw=v1tr/.{D[t2,t,NonConstants->{t2,t3,t4}]->w2, D[t3,t,NonConstants->{t2,t3,t4}]->w3, D[t4,t,NonConstants->{t2,t3,t4}]->w4}

v1rw=-b w2 Sin[t2]+c w3 Sin[t3]+d w4 Sin[t4]
v1iw=b Cos[t2] w2-c Cos[t3] w3-d Cos[t4] w4

sv1=Solve[{v1rw==0,v1iw==0},{w3,w4}]
wa3=w3/.sv1[[1]]
wa4=w4/.sv1[[1]]

(*Acceleration*)
a1tr=D[v1tr,t,NonConstants->{t2,t3,t4}]
a1trwa=a1tr/.{D[t2,t,NonConstants->{t2,t3,t4}]->w2, D[t3,t,NonConstants->{t2,t3,t4}]->w3, D[t4,t,NonConstants->{t2,t3,t4}]->w4, D[t2,{t,2},NonConstants->{t2,t3,t4}]->a2, 
D[t3,{t,2},NonConstants->{t2,t3,t4}]->a3, D[t4,{t,2},NonConstants->{t2,t3,t4}]->a4}

a1rwa=-b w2^2 Cos[t2]+c w3^2 Cos[t3]+d w4^2 Cos[t4]-a2 b Sin[t2]+a3 c Sin[t3]+a4 d Sin[t4]
a1iwa=a2 b Cos[t2]-a3 c Cos[t3]-a4 d Cos[t4]-b w2^2 Sin[t2]+c w3^2 Sin[t3]+d w4^2 Sin[t4]

sa1=Solve[{a1rwa==0, a1iwa==0},{a3,a4}]
aa3=a3/.sa1[[1]]
aa4=a4/.sa1[[1]]

t1=Pi/2
au=Input["Enter the length of link 1 (a):"]
bu=Input["Enter the length of link 2 (b):"]
cu=Input["Enter the length of link 3 (c):"]
du=Input["Enter the length of link 4-1 (d):"]
fu=Input["Enter the length of link 4-2 (f):"]
eu=Input["Enter the length of link 7 (e):"]
beta=Input["Enter the vertex angle of link 4 (beta):"]
t2u=Input["Enter theta function of the driver link (note that Theta2(0) is Pi/2 and Theta2 rises in negative direction):"]
tu=Input["Enter the desired time to calculate desired characteristics (t):"]
x2u=Input["Enter the distance of an arbitary point from point B on link 2 to calculate its linear velocity:"]
x3u=Input["Enter the distance of an arbitary point from point C on link 3 to calculate its linear velocity:"]
x4u=Input["Enter the distance of an arbitary point from point A on link 4 to calculate its linear velocity:"]
x7u=Input["Enter the distance of an arbitary point from point F on link 7 to calculate its linear velocity:"]

(*Final Answers (1)*)
t2f=N[t2u/.t->tu]
t3f=N[ta3/.{a->au,b->bu,c->cu,d->du,t2->t2f,t->tu,C[1]->1}]
t4f=N[ta4/.{a->au,b->bu,c->cu,d->du,t2->t2f,t->tu,C[2]->1}]

w2f=D[t2u,t]/.t->tu
w3f=N[wa3/.{a->au,b->bu,c->cu,d->du,t2->t2f,t3->t3f,t4->t4f,w2->w2f,t->tu}]
w4f=N[wa4/.{a->au,b->bu,c->cu,d->du,t2->t2f,t3->t3f,t4->t4f,w2->w2f,t->tu}]

a2f=D[t2u,{t,2}]/.t->tu
a3f=N[aa3/.{a->au,b->bu,c->cu,d->du,t2->t2f,t3->t3f,t4->t4f,w2->w2f,w3->w3f,w4->w4f,a2->a2f,t->tu}]
a4f=N[aa4/.{a->au,b->bu,c->cu,d->du,t2->t2f,t3->t3f,t4->t4f,w2->w2f,w3->w3f,w4->w4f,a2->a2f,t->tu}]

(*Second Loop*)

ClearAll [t, t5, t7, ta7, t8, f, e, s, w7, w7a, w8, sdot, sdota, a7, a7a, a8, sddot, sddota, t7f, sf]

t8=Pi/2
(*Displacement*)
d2=f Exp[I t5]-s Exp[I t8]+e Exp[I t7]
d2tr=ExpToTrig[d2]

d2r=f Cos[t5]+e Cos[t7]-s Cos[t8]
d2i=f Sin[t5]+e Sin[t7]-s Sin[t8]

sd2=Solve[{d2r==0, d2i==0},{t7,s}]

sa=s/.sd2[[1]]
ta7=t7/.sd2[[1]]

(*Velocity*)
v2=D[d2,t,NonConstants->{t5,t7,s}]

v2tr=ExpToTrig[v2]
v2trw=v2tr/.{D[t5,t,NonConstants->{t5,t7,s}]->w5, D[t7,t,NonConstants->{t5,t7,s}]->w7, D[s,t,NonConstants->{t5,t7,s}]->sdot}

v2rw=-Cos[t8] sdot-f w5 Sin[t5]-e w7 Sin[t7]
v2iw=f w5 Cos[t5]+e w7 Cos[t7]-sdot Sin[t8]

sv2=Solve[{v2rw==0,v2iw==0},{w7,sdot}]
wa7=w7/.sv2[[1]]
sdota=sdot/.sv2[[1]]

(*Acceleration*)
a2tr=D[v2tr,t,NonConstants->{t5,t7,s}]
a2trwa=a2tr/.{D[t5,t,NonConstants->{t5,t7,s}]->w5, D[t7,t,NonConstants->{t5,t7,s}]->w7, D[s,t,NonConstants->{t5,t7,s}]->sdot, D[t5,{t,2},NonConstants->{t5,t7,s}]->a5, 
D[t7,{t,2},NonConstants->{t5,t7,s}]->a7, D[s,{t,2},NonConstants->{t5,t7,s}]->sddot}

a2rwa=-f w5^2 Cos[t5]-e w7^2 Cos[t7]-sddot Cos[t8]-a5 f Sin[t5]-a7 e Sin[t7]
a2iwa=a5 f Cos[t5]-sddot Sin[t8]+a7 e Cos[t7]-f w5^2 Sin[t5]-e w7^2 Sin[t7]

sa2=Solve[{a2rwa==0, a2iwa==0},{a7,sddot}]
aa7=a7/.sa2[[1]]
sddota=sddot/.sa2[[1]]

t5f=Pi-(beta-t4f)

(*Final Answers (2)*)
t7f=ta7/.{e->eu,f->fu,t5->t5f,C[1]->1,t->tu}
sf=sa/.{e->eu,f->fu,t5->t5f,t->tu}

w5f=w4f
w7f=N[wa7/.{e->eu,f->fu,t5->t5f,t7->t7f,w5->w5f,t->tu}]
sdotf=N[sdota/.{e->eu,f->fu,t5->t5f,t7->t7f,w5->w5f,t->tu}]

a5f=a4f
a7f=N[aa7/.{e->eu,f->fu,t5->t5f,t7->t7f,w5->w5f,w7->w7f,a5->a5f,t->tu}]
sddotf=N[sddota/.{e->eu,f->fu,t5->t5f,t7->t7f,w5->w5f,w7->w7f,a5->a5f,t->tu}]



(*linear velocity of an arbitary point on every link*)

(*Link 2*)
LVX2=x2*w2f/.x2->x2u

(*Link 3*)
(*-Displacement-*)
dx3=b Exp[I t2]-y3 Exp[I t10]-x3 Exp[I t3]
dx3tr=ExpToTrig[dx3]
dx3r=-y3 Cos[t10]+b Cos[t2]-x3 Cos[t3]
dx3i=-y3 Sin[t10]+b Sin[t2]-x3 Sin[t3]
sdx3=Solve[{dx3r==0,dx3i==0},{t10,y3}]
ta10=t10/.sdx3[[1]]
ya3=y3/.sdx3[[1]]
(*-Velocity-*)
vx3=D[dx3,t,NonConstants->{t2,t3,t10,y3}]
vx3tr=ExpToTrig[vx3]
vx3trw=vx3tr/.{D[t2,t,NonConstants->{t2,t3,t10,y3}]->w2, D[t3,t,NonConstants->{t2,t3,t10,y3}]->w3, D[t10,t,NonConstants->{t2,t3,t10,y3}]->w10, D[y3,t,NonConstants->{t2,t3,t10,y3}]->ydot3}

vx3rw=-ydot3 Cos[t10]+w10 y3 Sin[t10]-b w2 Sin[t2]+w3 x3 Sin[t3]
vx3iw=b w2 Cos[t2]-w3 x3 Cos[t3]-w10 y3 Cos[t10]-ydot3 Sin[t10]

svx3=Solve[{vx3rw==0,vx3iw==0},{w10,ydot3}]
wa10=w10/.svx3[[1]]
ydota3=ydot3/.svx3[[1]]
LVX3=Sqrt[(ya3*wa10)^2+(ydota3)^2]/.{w2->w2f, w3->w3f,y3->ya3}/.{t10->ta10}/.{t3->ta3}/.{C[1]->1,C[2]->1}/.{a->au,b->bu,c->cu,d->du,e->eu,f->fu,t2->t2u}/.{t->tu,x3->x3u}

(*Link 4*)
LVX4=x4*w4f/.x4->x4u

(*Link 7*)
(*-Displacement-*)
dx7=x7 Exp[I t7]+y7 Exp[I t9]-s Exp[I t8]
dx7tr=ExpToTrig[dx7]
dx7r=y7 Cos[t9]+x7 Cos[t7]
dx7i=x7 Sin[t7]+y7 Sin[t9]-s
sdx7=Solve[{dx7r==0,dx7i==0},{t9,y7}]
ta9=t9/.sdx7[[1]]
ya7=y7/.sdx7[[1]]
(*-Velocity-*)
vx7=D[dx7,t,NonConstants->{t7,t9,s,y7}]
vx7tr=ExpToTrig[vx7]
vx7trw=vx7tr/.{D[t7,t,NonConstants->{t7,t9,s,y7}]->w7, D[t9,t,NonConstants->{t7,t9,s,y7}]->w9, D[s,t,NonConstants->{t7,t9,s,y7}]->sdot, D[y7,t,NonConstants->{t7,t9,s,y7}]->ydot7}

vx7rw=ydot7 Cos[t9]-x7 w7 Sin[t7]-w9 y7 Sin[t9]
vx7iw=-sdot+x7 w7 Cos[t7]+w9 y7 Cos[t9]+ydot7 Sin[t9]

svx7=Solve[{vx7rw==0,vx7iw==0},{w9,ydot7}]
wa9=w9/.svx7[[1]]
ydota7=ydot7/.svx7[[1]]
LVX7=Sqrt[(ya7*wa9)^2+(ydota7)^2]/.{sdot->sdotf,w7->w7f,t9->ta9,y7->ya7}/.{C[1]->1,t7->t7f,s->sf}/.{t->tu,x7->x7u}


Print["The Angle of link 2 is: ",t2f," (radian)"]
Print["The Angle of link 3 is: ",t3f," (radian)"]
Print["The Angle of link 4 is: ",t4f," (radian)"]
Print["The Angle of link 5 is: ",t5f," (radian)"]
Print["The Height of the Slider relative to point A is: ",sf," (meter)"]
Print["The Angle of link 7 is: ",t7f," (radian)"]

Print["The Anglular Velocity of link 2 is: ",w2f," (radian/sec)"]
Print["The Anglular Velocity of link 3 is: ",w3f," (radian/sec)"]
Print["The Anglular Velocity of link 4 is: ",w4f," (radian/sec)"]
Print["The Anglular Velocity of link 5 is: ",w4f," (radian/sec)"]
Print["The Linear Velocity of the Slider is: ",sdotf," (meter/sec)"]
Print["The Anglular Velocity of link 7 is: ",w7f," (radian/sec)"]

Print["The Anglular Acceleration of link 2 is: ",a2f," (radian/sec^2)"]
Print["The Anglular Acceleration of link 3 is: ",a3f," (radian/sec^2)"]
Print["The Anglular Acceleration of link 4 is: ",a4f," (radian/sec^2)"]
Print["The Anglular Acceleration of link 5 is: ",a5f," (radian/sec^2)"]
Print["The Linear Acceleration of the Slider is: ",sddotf," (meter/sec^2)"]
Print["The Anglular Acceleration of link 7 is: ",a4f," (radian/sec^2)"]


(*Simplifying [some of] the expressions to plot*)
w2temp=D[t2u,t]
a2temp=D[t2u,{t,2}]

simptoplott2=Simplify[t2u]
simptoplott3=Simplify[ta3/.{a->au,b->bu,c->cu,d->du,t2->t2u,t1->Pi/2,C[1]->1}]
simptoplott4=Simplify[ta4/.{a->au,b->bu,c->cu,d->du,t2->t2u,t1->Pi/2,C[2]->1}]
simptoplott7=Simplify[ta7/.{t5->ta4}/.{a->au,b->bu,c->cu,d->du,e->eu,f->fu,t2->t2u,t1->Pi/2,C[1]->1,C[2]->1}]
simptoplots=Simplify[sa/.{t5->ta4}/.{C[2]->1,a->au,b->bu,c->cu,d->du,e->eu,f->fu,t2->t2u}]

simptoplotw2=w2temp
simptoplotw3=Simplify[wa3/.{w2->w2temp,t4->ta4,t3->ta3}/.{C[2]->1,C[1]->1,a->au,b->bu,c->cu,d->du,e->eu,f->fu,t2->t2u}]
simptoplotw4=Simplify[wa4/.{w2->w2temp,t4->ta4,t3->ta3}/.{C[2]->1,C[1]->1,a->au,b->bu,c->cu,d->du,e->eu,f->fu,t2->t2u}]
simptoplotw7=Simplify[wa7/.{t7->ta7,t5->ta4,w5->wa4}/.{C[1]->1,C[2]->1}/.{t5->ta4,t3->ta3,t4->ta4}/.{a->au,b->bu,c->cu,d->du,e->eu,f->fu,w2->w2temp}/.{C[1]->1,C[2]->3,t2->t2u}]
simptoplotsdot=Simplify[sa/.{t5->ta4}/.{C[1]->1,C[2]->1,a->au,b->bu,c->cu,d->du,e->eu,f->fu,t2->t2u}]

simptoplota2=a2temp
simptoplota3=aa3/.{t3->ta3,t4->ta4}/.{C[1]->1,C[2]->1}/.{w3->wa3,w4->wa4}/.{C[1]->1,C[2]->1}/.{t3->ta3,t4->ta4}/.{C[1]->1,C[2]->1}/.{w2->w2temp,a2->a2temp,t2->t2u,a->au,b->bu,c->cu,d->du,e->eu,f->fu}
simptoplota4=aa4/.{t3->ta3,t4->ta4,w3->wa3,w4->wa4}/.{C[1]->1,C[2]->1}/.{t3->ta3,t4->ta4}/.{C[1]->1,C[2]->1}/.{a->au,b->bu,c->cu,d->du,e->eu,f->fu,w2->w2temp,a2->a2temp,t2->t2u}
simptoplota7=aa7/.{t7->ta7}/.{C[1]->1,C[2]->1}/.{w5->wa4,w7->wa7}/.{t5->ta4,t3->ta3,t4->ta4,t7->ta7}/.{C[1]->1,C[2]->1}/.{t5->ta4,w4->wa4,w5->wa4,a5->aa4}/.{C[2]->1,t3->ta3,t4->ta4}/.{C[1]->1,C[2]->1,w3->wa3,w4->wa4}/.{t3->ta3,t4->ta4}/.{C[1]->1,C[2]->1}/.{a->au,b->bu,c->cu,d->du,e->eu,f->fu,w2->w2temp,a2->a2temp,t2->t2u}
simptoplotsddot=sddota/.{t7->ta7}/.{C[1]->1,C[2]->1}/.{w5->wa4,w7->wa7}/.{t5->ta4,t3->ta3,t4->ta4,t7->ta7}/.{C[1]->1,C[2]->1}/.{t5->ta4,w4->wa4,w5->wa4,a5->aa4}/.{C[2]->1,t3->ta3,t4->ta4}/.{C[1]->1,C[2]->1,w3->wa3,w4->wa4}/.{t3->ta3,t4->ta4}/.{C[1]->1,C[2]->1}/.{a->au,b->bu,c->cu,d->du,e->eu,f->fu,w2->w2temp,a2->a2temp,t2->t2u}

LVX2toplot=x2*w2f
LVX3toplot=Sqrt[(ya3*wa10)^2+(ydota3)^2]/.{w2->w2f, w3->w3f,y3->ya3}/.{t10->ta10}/.{t3->ta3}/.{C[1]->1,C[2]->1}/.{a->au,b->bu,c->cu,d->du,e->eu,f->fu,t2->t2u}/.{t->tu}
LVX4toplot=x4*w4f
LVX7toplot=Simplify[Sqrt[(ya7*wa9)^2+(ydota7)^2]/.{sdot->sdotf,w7->w7f,t9->ta9,y7->ya7}/.{C[1]->1,t7->t7f,s->sf}/.{t->tu}]


(*
Plot[simptoplott2,{t,0,4}]
Plot[simptoplott3,{t,0,4}]
Plot[simptoplott4,{t,0,4}]
Plot[simptoplott7,{t,0,4}]
Plot[simptoplots,{t,0,4}]
*)
Plot[simptoplotw2,{t,0,4}]
Plot[simptoplotw3,{t,0,4}]
Plot[simptoplotw4,{t,0,4}]
Plot[simptoplotw7,{t,0,4},PlotRange->{-2,2}]
Plot[simptoplotsdot,{t,0,4}]

Plot[simptoplota2,{t,0,4}]
Plot[simptoplota3,{t,0,4},PlotRange->{-20,20}]
Plot[simptoplota4,{t,0,4},PlotRange->{-20,20}]
Plot[simptoplota7,{t,0,4},PlotRange->{-6,15}]
Plot[simptoplotsddot,{t,0,4},PlotRange->{-5,10}]

Plot[LVX2toplot,{x2,0,bu}]
Plot[LVX3toplot,{x3,0,cu}]
Plot[LVX4toplot,{x4,0,du}]
Plot[LVX7toplot,{x7,0,eu}]


(* ::InheritFromParent:: *)
(**)


(* ::InheritFromParent:: *)
(**)


(* ::InheritFromParent:: *)
(**)


(* ::InheritFromParent:: *)
(**)


(* ::InheritFromParent:: *)
(**)


(* ::InheritFromParent:: *)
(**)


(* ::InheritFromParent:: *)
(**)


(* ::InheritFromParent:: *)
(**)


(* ::InheritFromParent:: *)
(**)


(* ::InheritFromParent:: *)
(**)


(* ::InheritFromParent:: *)
(**)


(* ::InheritFromParent:: *)
(**)


(* ::InheritFromParent:: *)
(**)


(* ::InheritFromParent:: *)
(**)


(* ::InheritFromParent:: *)
(**)


(* ::InheritFromParent:: *)
(**)


(* ::InheritFromParent:: *)
(**)


(* ::InheritFromParent:: *)
(**)


(* ::InheritFromParent:: *)
(**)


(* ::InheritFromParent:: *)
(**)


(* ::InheritFromParent:: *)
(**)


(* ::InheritFromParent:: *)
(**)


(* ::InheritFromParent:: *)
(**)


(* ::InheritFromParent:: *)
(**)


(* ::InheritFromParent:: *)
(**)


(* ::InheritFromParent:: *)
(**)


(* ::InheritFromParent:: *)
(**)


(* ::InheritFromParent:: *)
(**)


(* ::InheritFromParent:: *)
(**)


(* ::InheritFromParent:: *)
(**)
