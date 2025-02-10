#import "@preview/dvdtyp:1.0.0": *

#import "../misc.typ" : *

#show: title(2)

#show link: set text(blue)

#outline()

= An additional question

This question is inspired by isomorphisms in category theory when I am learning this subject recently. Category theory is an interesting subject that connects with discrete mathematics and logic really tightly. Go for this if you are interested in theoretical foundations of computer science and Haskell!

#problem[
  Let $C$ be a set.
  Let $A$, $B$ be two sets satisfying $A, B in C$. \
  (so imagine something like $C = {{1, 2}, {3, 4, 5}}$, and $A = {1, 2}$) \
  For a relation $R$ between sets $A$ and $B$, we define
  - R is iso $eq.delta exists (S subset.eq B times A) . (S compose R = id_B) and (R compose S = id_A)$.
  - In other words, R is iso $eq.delta$ if there exists another relation S between set $B$ and $A$, such that $S compose R = id_B$, and $R compose S = id_A$.

  we denote:
  - $A tilde.equiv B eq.delta$ if there exists some $R subset.eq A times B$, such that $R$ is iso.

  Show that $tilde.equiv$ is an equivalence relation on the elements in $C$. (i.e., $tilde.equiv$ is reflexive, symmetric, and transitive),
]

// #proof[ Let's do this part by part.

//   *Reflexive*: we want to prove $forall c in C, c tilde.equiv c$.

//   Take an arbitrary $c in C$. Take $R = id_c$. It is easy to verify that $R$ is iso.

//   *Symmetry*: we want to prove $forall A, B in C, A tilde.equiv B arrow.r.double B tilde.equiv A$.
  
//   - Take arbitrary $A, B in C$, assume that $A tilde.equiv B$. Then by definition, there exists $R subset.eq A times B$ such that $R$ is iso.

//   - By definition of "iso", there exists another relation, namely $S$, between set $B$ and $A$, such that $S compose R = id_B$, and $R compose S = id_A$.

//   - To prove $B tilde.equiv A$, we need to find $R'$ such that $R'$ is iso for (B, A).

// ]
