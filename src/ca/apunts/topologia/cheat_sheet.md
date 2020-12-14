$f(\bigcup_{i\in I}A_i)=\bigcup_{i\in I} f(A_i)$
$f(\bigcap_{i\in I}A_i)\subset \bigcap_{i\in I} f(A_i)$ igualtat si f és injectiva.
$f^{-1}(\bigcup_{i\in I}A_i)=\bigcup_{i\in I} f^{-1}(A_i)$
$f^{-1}(\bigcap_{i\in I}A_i)= \bigcap_{i\in I} f^{-1}(A_i)$
$f^{-1}(A\smallsetminus B)=f^{-1}(A)\smallsetminus f^{-1}(B)$ ?? [[prop1]]
$X\subset f^{-1}(f(X))$ igualtat si f injectiva.
$f^{-1}(f(Y))\subset Y$ igualtat si f exhaustiva.

# Axiomàtica d'espai topològic
 $0, X\in \mathcal T$, $\bigcap_{i=1}^n A_i \in \mathcal T$, $\bigcup_{i\in I} A_i \in \mathcal T$

Si $\mathcal T \subset \mathcal T'$ diem que $\mathcal T'$ és mes fina que $\mathcal T$.
## Algunes topologies
- __Grollera:__ $\mathcal T=\{\emptyset,X\}$
- __Discreta:__ $\mathcal T=\operatorname{Parts}(X)$
- __Cofinita:__ $A\subset X$ obert $\Leftrightarrow A=\emptyset$ o $X-A$ és finit

__Propietat de Hausdorff:__ Donats dos punts $x\neq y$ existeixen oberts disjunts $U,V$ tals que $x\in U, y \in V$.

[[Tot_espai_metric_es_Hausdorff | Tot espai mètric és Hausdorff]].

No són Hausdorff:
    a) $X$ amb més d'un punt amb la topologia grollera. 
    b) Un espai infinit amb la topologia cofinita
    c) $\mathbb R$ amb oberts $\emptyset, \mathbb R, (-\infty,x)\quad\forall x\in \mathbb R$

## Bases d'una topologia
$\mathcal B$ és una base d'una topologia si $\forall A$ obert d'$X$ i tot punt $x\in A$, existeix un obert $B\in\B$ tal que $x\in B\subset A$. També és diu que $\B$ és una base d'oberts de $X$

**Proposició 2.2** Sigui X un conjunt $\B\subset \Parts(X)$. Si $\B$ compleix \ding{182} $\cup \mathcal B= X$ \ding{183} $\forall U,V\in \B$ i $\forall x\in U\cap V$, $\exists W\in \B$ tal que $x\in W \subset U \cap V.$
Aleshores $\exists !$ topologia $\tau a X$ que compleix

   1. $\mathcal B$ és una base de la topologia $\mathcal T$
   2. $\mathcal T$ és la topologia més fina que conté $\mathcal B$
   
## Entorns interior i adherència

$A$ és un **entorn** de $x\in X$ si existeix un obert $U$ tal que $x\in U \subset A.$

$x$ és un punt interior de $A$ si $A$ és un entorn de $x$

L'interior de $A$ és el conjunt de tots els punts interiors. 

1. $\operatorname{Int}(A)$ és obert.
2. $\operatorname{Int}(A)$ és la unió de tots els oberts continguts a A.
3. $\operatorname{Int}(A)$ és l'obert més gran contingut a A.
    ($B\subset A$ obert $\implies B\subset\operatorname{Int}(A)$
    \item $A$ és obert $\Leftrightarrow A=\operatorname{Int}(A)$

$x$ és un punt adherent a $A$ si tot entorn de $x$ talla $A$

L'adherència de $A$ és el conjunt de tots els punts adherents.

1. $\operatorname{Cl}(A)$ és tancat.
2.  $\operatorname{Cl}(A)$ és intersecció de tots els tancats que contenen A.
3. $\operatorname{Cl}(A)$ és el tancat més petit que conté A
    ($A\subset T$ T tancat $\implies \operatorname{Cl}(A)\subset T$)
    \item $A$ és tancat $\Leftrightarrow A=\operatorname{Cl}(A)$

**Proposició 2.5** $\operatorname{Cl}(A)=X-\operatorname{Int}(X-A)$

**Definició 2.6** $A\subset X$ és dens si $\Cl(A)=X$

**Definició 2.7** La frontera d'un conjunt $A\subset X$ és defineix com $\partial A:=\operatorname{Cl}(A)\cap \operatorname{Cl}(X-A)$

## Aplicacions contínues
$f$ és **oberta** si la imatge de tot obert és obert.

$f$ és **tancada** si la imatge de tot tancat és tancat.

$f$ és **contínua** si la antiimatge de tot obert és obert.

## Homeomorfísmes
$f:X\to Y$ diem que es homeomorfísme si compleix: f és contínua, bijectiva $f^{-1}:Y\to X$ contínua (o f és oberta)

**Teorema 3.3** Siguin $f:X\to Y$ i $g:Y\to Z$ aplicacions contínues. Suposem que es compleixen aquestes condicions:
1. f és exhaustiva i g és bijectiva
2. Z compleix la propietat de Hausdorff
3. X és homeomorf a un subesai tancat de $[0,1]^n$, $n>0$

Aleshores g és un homeomorfisme.

# Subespais
**Definició 4.1** Sigui X un espai topològic i $A\subset X$.Direm que $U\subset A$ és un obert de A si existeix un obert W (de X) tal que $U=A\cap W$

Els oberts de A formen la topologia induïda per la inclusió $A\subset X$. Diem que A és subespai de X

 1. $T\subset A$ és tancat de A $\Leftrightarrow$ existeix un tancat $K \subset X$ tal que $T=A\cap K$.
 2. Si $A$ obert, llavors $U \subset A$ obert a A $\Leftrightarrow U$ obert a $X$.
 3. Si $A$ tancat, llavors $U \subset A$ tancat a A $\Leftrightarrow U$ tancat a $X$.
 4. l'aplicació inclusió $i:A\hookrightarrow X$ és contínua.
 5. La topologia induïda sobre A és la menys fina que fa que la inclusió $i:A\hookrightarrow X$ sigui contínua.
 6.  Si $f:X\to Y$ és contínua, aleshores $f|_A:A\to X$ també ho és.
 7.  Si X espai mètric amb distància d, $A\subset X$ La topologia donada per la distància d i la topologia induïda per la topologia de X coincideixen.
 8.  $f:A\to X$ una aplicació, podem definir una topologia sobre A que tingui per oberts els conjunts $f^{-1}(U)$ per a cada obert U de X.

**Continuïtat de funcions definides a trossos** Siguin $X=A\cup B, Y$ espais topològics i sigui $f:X\to Y$ una aplicació. Suposem que $f|_A, f|_B$ són contínues. Aleshores:
1. Si A,B són oberts, f és contínua.
2. Si A, B són tancats, f és contínua.

# La topologia producte

la **topologia producte** a $X\times Y$ és la topologia que té per base els conjunts de la forma $U\times V$ on U és obert de X i V és obert de Y. Anomenem els oberts $X\times Y$ **oberts bàsics**

 1. les projeccions $\pi_X:X\times Y \to X$,$\pi_Y:X\times Y \to Y$ són contínues.
 2. Una aplicació $f:Z\to X\times Y$ és contínua si i només si els seus components són contínues, és a dir, si i només si $\pi_Xf$ i $\pi_Yf$ són aplicacións contínues. 
 3. Les projeccions $\pi_X,\pi_Y$ són obertes. (En general no són tancades).
 4.  Si $f_i:X_i\to Y_i, i=1,2$ són aplicacions contínues, aleshores $f_1 \times f_2:X_1\times X_2\to Y_1\times Y_2$ també és contínua.
 5.  Si $X_1\cong X_2$ i $Y_1\cong Y_2$, aleshores $X_1\times Y_1 \cong X_2\times Y_2$ 
 6.  $X\times \{*\} \cong X$
 7.  $X\times Y \cong Y\times X$
 8.  Si $A\subset X, B\subset Y$ i considerem $A\times B \subset X \times Y$. La topologia induïda sobre $A\times B$ com a subespai de $X\times Y$ i la topologia $A\times B$ considerant que A i B són espais topològics coincideixen.
 9.  $\mathbb R^n$ amb la topologia induïda per la distància euclidiana i la topologia producte $\mathbb R^n=\mathbb R\times \dots  \times \mathbb R$ coincideixen.
 
\begin{enumerate}[label=(\alph*)]
    \item El tor com a producte de circunferències. $T\cong S^1\times S^1$
    \item El cilindre. $\mathbb R^n-\{0\}\cong S^{n-1}\times \mathbb R$
\end{enumerate}
\subsection{El producte infinit}
La **topologia producte** a $\Pi X_i$ és la topologia que té com a base d'oberts els productes $\Pi_{i\in I}U_i$ tals que \ding{182} Cada $U_i$ és un obert de $X_i$. \ding{183} $U_i=X_i$ excepte per a un nombre finit de $i \in I$.

El **conjunt de Cantor C** és homeomorf a $\Pi_{i=1}^\infty \{a,b\}$

%La corva de peano...
# La topologia quocient
Suposem que $X$ és un espai topològic, Y és un conjunt i $p:X\to Y$ és una aplicació exhaustiva.
La **topologia quocient** a $Y$ és la topologia que té per oberts els subconjunts $U\subset Y$ que tenen la propietat que $p^{-1}(U)$ és un obert de X. Direm que \guillemotleft Y té la topologia quocient per p\guillemotright
 1. $p:X\to Y$ és continua.
 2. La topologia quocient és la topologia més fina sobre Y que fa que $p:X\to Y$ sigui continua.
 3. $T\subset Y$ és tancat si i només si $p^{-1}(T)$ és tancat de X.
 4. Sigui $f:Y\to Z$ una aplicació. Es compleix qe f és continua si i només si $f_p$ és continua.

\begin{enumerate}[label=(\alph*)]
    \item $[0,1]\cong S^1$
    \item $(0,t)\sim (1,t) \, \forall t\in[0,1]$. $I^2/\sim\cong S^1 \times [0,1]$
    \item $(0,t)\sim (1,t)$ i $(s,0)\sim (s,1) \forall s,t\in[0,1]$. $I^2/\sim\cong T^2$
    \item $(0,t)\sim (1,1-t) \, \forall t\in [0,1]$. Banda de Moebius.
    \item El disc $D^2:=\{x \in \mathbb R^2:||x|| \leq 1\}$ quocient per la relació $(x,y)\sim (x,-y) \forall (x,y) \in S^1$ és l'esfera $S^2$.
      \item $(0,t)\sim (1,t)$ i $(s,0\sim (1-s,1) \, \forall s,t\in [0,1]$. $I^2/\sim \cong$ Ampolla de Klein.
        \item El disc $D^2:=\{x \in \mathbb R^2:||x|| \leq 1\}$ quocient per la relació $(x,y)\sim (-x,-y) \forall (x,y) \in S^1$ és el pla projectiu $\mathbb RP^2$. 
      
\end{enumerate}

## L'espai projectiu
L'**espai projectiu** de dimensió n $\mathbb RP^n$ és el conjunt de rectes de $\mathbb R^{n+1}$ que passen per l'origen de coordenades.
$\mathbb RP^2 \cong D^2/\{(x,y)\sim (-x,-y)\forall (x,y)\in S^1 \subset D^2\}$
$\mathbb RP^n \cong S^n/\{-v\sim v\}$

$(M\sqcup D^2)/\sim \cong \mathbb RP^2$ on $\sim$ és la identificació natural entre $S^1\subset D^2$ i $S^1\sim \partial M$
\subsection{Acció d'un grup sobre un espai}
Una \textbf{acció d'un grup $G$ sobre un espai topològic X} consisteix en tenir, per cada $g\in G$, una aplicació continua $\theta_g:X\to X$ de manera que \ding{182} $\theta_1$ és la identitat $I:X\to X$. \ding{183} $\theta_g\theta_h=\theta_{gh} \forall g,h \in G$

\begin{enumerate}[label=(\alph*)]
    \item Hi ha una acció de $\mathbb Z$ sobre $\mathbb R$ donada per $k \cdot x:=k+x$. Un domini fonamental és $D=[0,1)$.
    \item Hi ha una acció de $\mathbb Z^n$ sobre $\mathbb R^n$ donada per $(k_1,\dots,k_n)\cdot (x_1,\dots,x_n):=(k_1+x_1,\dots, k_n+x_n)$. Un domini fonamental és el cub $D=[0,1)^n$.
\end{enumerate}
\subsection{Quocient d'un espai per l'acció d'un grup}
$x\sim y$ si i només si existeix $g\in G$ tal que gx=y. La aplicació de pas al quocient $\pi:X\to X/G:=X/\sim$ és oberta.

\begin{enumerate}[label=(\alph*)]
    \item $\mathbb R/\mathbb Z\cong S^1$ amb l'acció $k \cdot x:=k+x$
    \item $\mathbb R^n/\mathbb Z^n\cong T^n=S^1\times \dots \times S^1$ amb l'acció producte.
    \item el quocient de $S^n$ per la acció antipodal és $\mathbb RP^2$.
    \item $R^2/\langle S,R\rangle \cong K$ amb l'acció $S(x,y):=(x,y+1), T(x,y)=(x+1,-y)$
    \item $[0,1]\times \frac{[0,1/2]}{\{(x,0)\sim (1-x,1/2),(0,y)\sim (1,y):x,y\in [0,1]\}}\cong K$
\end{enumerate}

# Espais compactes
## Recobriments
 1.  $\{U_i\}_{i\in I}$ és un recobriment d'un espai X si $X=\cup U_i$
 2.  Si $U_i$ són oberts, $\{U_i\}$ és un recobriment obert.

Un espai topològic $X$ direm que és **compacte** si tot recobriment obert de X té algun subrecobriment finit.

1. La imatge d'un compacte per una aplicació continua és un compacte.
2. Un subespai tancat d'un espai compacte és compacte.
3. El producte d'una família d'espais compactes no buits és compacte si i només si cada espai ho és.
%\subsection{la topologia compacte-obert}
%Siguin $X$ i $Y$ espais topològics i definim $map(X,Y)=\{f:X\to Y: \text{f és continua}\}$.

%Per a cada $A\subset X$ i $B \subset Y$, podem consider $\mathcal{F}_{(A,B)}:=\{f\in \mathcal{F}(X,Y) : F(A)\subset B\}$
\subsection{Compactes de $\mathbb R^n$ }
\textbf{Teorema de Heine-Borel} Un subespai de $\mathbb R^n$ - topologia ordinària- és compacte si i només si és tancat i acotat.

## Compactificació per un punt
Sigui $X$ un espai topològic. Definim $\tilde{X}=X\sqcup \{*\}$. Direm que $U \subset \tilde{X}$ és un obert si es compleix una de les següents condicions: \ding{182} $U\subset{X}$ i $U$ és un obert de $X$. \ding{183} $U=U'\sqcup\{*\}$, $U'$ és un obert de $X$ i $X-U'$ és un compacte.

L'espai $X$ té la topologia induïda per la inclusió $X\subset \tilde{X}$. L'espai $\tilde{X}$ és comacte.

La compactificació per un punt de $\mathbb R^n$ és homeomorf a $S^n$

# Espais de Hausdorff
   - Espais $T_0$ o de Kolmologrov. Donats dos punts diferents, hi ha un obert que conté un d'ells i no l'altre.
    -  Espais $T_1$ o de Fréchet. Donats $x\neq y$, hi ha oberts $U,V$ tals que $x\in U-V$. Aquest axioma és equivalent a que els punts siguin tancats.
    - Els espais $T_2$ són els espais Hausdorff.
    - Espais $T_3$ o regulars. Es compleix l'axioma $T_1$ i a més donats un tancat $F$ i punt $x \not \in F$, existeixen oberts disjunts $U,V$ tals que $x\in U, F\subset V$.
    - Espais $T_4$ o normals. Es compleix l'axioma $T_1$ i a més donats tancats disjunts $A,B$, existeixen oberts disjunts $U,V$ tals que $A\subset U, B\subset V$.

 1. Si X és un espai de Hausdorff i $A\subset X$ és compacte, aleshores $A$ és tancat a $X$.
 2. Un producte d'espais no buits és Hausdorff si i només si ho són cada un dels factors.
  3. Sigui $f:X\to Y$ una aplicació contínua i bijectiva. Suposem que $X$ és un espai compacte i $Y$ és un espai Hausdorff. Aleshores, $f$ és un homeomorfisme.
  4. Tot espai compacte Hausdorff és normal.
 5. Sigui X un espai compacte Hausdorff i $A\subset X$ un subespai tancat. $X/A$ és compacte Hausdorff.
  6. Sigui $X$ un espai compacte Hausdorff i G un grup finit que actua sobre X. $X/G$ és compacte Hausdorff.

%\subsection{La topologia de Zariski}
%\begin{itemize}
%    \item Els punts són tancats, és a dir, la topologia de Zariski és $T_1$.
%    \item Si $K$ és un cos infinit, la topologia de Zariski a $K^n$ no és Hausdorff.
%    \item $K^n$ amb a topologia de Zariski i tots els seus subespais són compactes.
%\end{itemize}
# Connexió
Un espai topològic és connex si compleix
- No és unió disconnexa de dos espais-p.
-  No és unió de dos oberts-p/tancats-p disjunts
-  Si $A\subset Z$ és obert i tancat, aleshores $A=\emptyset,Z$.

 1. Siguin $Y_i\subset X, i\in I$, subespais connexos d'un espai X, tals que $\bigcap_iY_i\neq \emptyset$. Aleshores $\bigcup_iY_i$ és un espai connex.
2. Siguin $Y_i\subset X, i=0,1,2,\dots$, subespais connexos d'un espai X, tals que $\forall i, Y_i\cap Y_{i+1}\neq \emptyset$. Aleshores $\bigcup_iY_i$ és un espai connex.
3. Si $f:X\to Y$ és contínua i $A\subset X$ és connex, aleshores $f(A)$ és connex.
4. Un producte d'espais-p és connex si i només si ho és cada factor.
5. $A\subset B\subset Cl(A)\subset X$ i suposem que A és connex. Aleshores B també ho és.

## connexió per camins
Un espai $X$ és \textbf{connex per camins o arcconnex} si $\forall x,y \in X$ existeix un camí $\omega$ amb $\omega(0)=x, \omega(1)=y$.

Tot espai connex per camis és connex.

\subsection{Components connexos d'un espai}
\textbf{Teorema de la corba de Jordan} Una corba tancada simple al pla $\mathbb R^2$ divideix el pla en dos components connexos. Un d'aquests components és acotat i l'altre no. La corba és la seva frontera.
# Varietats topològiques
Un espai topològic $X\neq \emptyset$ és una varietat de dimensió n si tot punt té un entorn homeomorf a $\mathbb R^n$, si X és Hausdorff i si té una base d'oberts numerable. 

# Varietats connexes
Si $M$ és una varietat de dimensió n i $M_i, i\in I$ els seus components connexos.
1. Els $M_i$ són oberts de M
2. $I$ és numerable, si M és compacta I és finit.
3.  $M_i$ és una varietat de dimensió n.
4. M és unió disconnexa dels seus components connexos: $M=\sqcup_{i\in I}M_i$.

## Orientacions
Direm que una varietat M és \textbf{orientable} si admet un atles on totes les funcions de transició conserven l'orientació.

El producte de dues varietats orientables és orientable.
$\mathbb RP^n$ és orientable si i només si n és senar.
$S+R$ és orientable si i només si S i R són orientables.

$S_g:=S^2+T+\dots^g+T$
$N_h:=\mathbb RP^2+\dots^h+\mathbb RP^2$
$K\cong\mathbb RP^2+\mathbb RP^2$

$T+\mathbb RP^2\cong \mathbb RP^2+ \mathbb RP^2+\mathbb RP^2$ per tant, $S_g+N_h\cong N_k$ amb $k=h+2g$

Tota superfície és triangulable.

$\chi(S)=v-a+c$
$\chi(S+S')=\chi(S)+\chi(S')-2$
$\chi(S_g)=2-2g$
$\chi(N_h)=2-h$
Tota superfície compacta i connexa és homeomorfa a $S_g$ o $N_h$

Dues superfícies (compactes i connexes) són homeomorfes si i només si $\chi(S)=\chi(S')$ i tenen la mateixa orientablilitat.

---
Eloi Torrents 2018