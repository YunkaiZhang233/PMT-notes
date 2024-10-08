#import "@preview/dvdtyp:1.0.0": *

#import "../misc.typ" : *

#show: title(1)

#show link: set text(blue)

#outline()

= So Many Contradictions!

Many of the problems I found people to be confused with are with *not*, *contradiction*, 
and *proof by contradiction*. I do admit it to be hard as this is indeed confusing. Let's take a
look at them with definitions and examples.


== Definitions

First let's take a look of the definitions of these mentioned in Steffen's notes, section 1.2.

#definition("All the 'Conflict' Statement from Notes")[ 
  - *Showing 'not':*  _Assume P holds... we have a contradiction. Then 'not P' is true._
  - *From a contradiction, anything follows:* _... we have a contradiction. Then P is true._
  - *Proof by Contradiction:* _Assume that 'not P' holds... we have a contradiction. Then P is true._
]

Note that here we omit the explanations as you can look them up on your own.

From how they looks like, you can find out that their difference would be the order of $P$ and $not P$ in the assumptions and in the proof goals.

You will notice that the notes says not to abuse "proof by contradiction".
This is because that "proof by contradiction" usually involves proving something looks like
$not not P$ and then transform it back to $P$ in the process. It would be a great implementation
to minimise such redundancy. 

Another important thing is that proof by contradiction is *not applicable* in constructive logic.
See the #link(<bonus>)[bonus chapter] if you are interested. However the scope of this class is limited to classical logic, thus yes I think you can understand them essentially as the same but *proof by contradiction* is more verbose.

== Example Illustration

If it still feels confusing, take a look at this example.

#example("Proof with Sets")[
  Prove that: _If $A subset.eq B$, then $A sect B = A$_
]

Note that the proofs below are not "strict" proofs that would get 100% marks in exams.
There are written to help you understand.

0. For both approaches, we first assume that $A subset.eq B$.

=== If you are proving by contradiction

1. You first assume towards a contradiction. Therefore, you assume $A sect B != A$ holds.
2. Then there must be some element $x in A$ such that $x in.not A sect B$, namely $o$.
3. As $o in A$, $o in.not A sect B$, this means $o in.not B$
4. However, as we assumed $A subset.eq B$ in the universal step 0, by definition all elements of 
$A$ must also be in $B$. Therefore as $o in A$, $o in B$ holds. 
5. This contradicts with result in 3.
6. Remember we assumed $A sect B != A$ on our own in 1. Then we get contradiction. We say now that
  $A sect B = A$ holds and completed the proof via proof by contradiction.

=== A bit verbose, isn't it?

By taking a look of the step 4 above, you may have observed that there is a more direct way
to prove our goal! The whole point of 1-3 is to create a contradiction to apply "proof by contradiction". and 5-6 is to contradict that.

Do not use proof by contradiction for the sake of "I want to use proof by contradiction".
This is verbose and just takes excess time.

=== A cleaner approach inspired by this
(remember 0. we first assume that $A subset.eq B$ for both approaches).
To prove: $A sect B = A$
1. This means to prove $A sect B subset.eq A$ and $A subset.eq A sect B$. 
- To prove $A sect B subset.eq A$
2. For all $x in A sect B$, by definition, $x in A$ and $x in B$, 
3. thus $x in A$, proved.
- To prove $A subset.eq A sect B$
4. For all $x in A$, by assumption, $x in B$.
5. Therefore $x in A$ and $x in B$ holds. Thus $x in A sect B$. proved.
both cases are proved so problem proved

=== Note the difference?
The non-contradiction way works very similar to proof by contradiction but much less wording
and much less glitches! It also does not involve "double negation" (negation in assumption, negation via contradiction) and feels much better whilst keeping the structure.


Aside from #link(<bonus>)[the bonus chapter], #link("https://math.andrej.com/2010/03/29/proof-of-negation-and-proof-by-contradiction/")[This blog] is really helpful to understand the difference between "showing not" and "proof by contradiction". It's still good to know that they are different as a computer scientist.




= Bonus <bonus>


== (Optional, FYI, Not Examinable) on LEM and Proof by Contradiction
As Steffen mentioned in section 1.3, *Law of the Excluded Middle* and *Proof by Contradiction* is
#underline([not allowed]) in certain kinds of mathematics (like in constructive logic) whilst 
the content you will learn in this course would be classical logic.

You may be confused, how can we say that $P or not P$ is false?

#example("LEM is FALSE in constructive logic")[
  Let's define the famous Goldbach Conjecture as Proposition $P$: \
  _"There is an even number that cannot be written as the sum of two prime numbers."_

This is related to the famous Goldbach Conjecture, which hasn't been proven or disproven yet.

- *Classical Logic View:* A classical logician would say, "Either the Goldbach Conjecture is true (every even number is the sum of two primes), or it's false (there's at least one even number that isn't)." Classical logic allows us to make this statement, even though we don't know which one is true.
- *Constructive Logic View:* In constructive logic, you can't just say "P or not P" without proof. If you claim there's an even number that isn't the sum of two primes, you need to *find that number*. If you claim every even number can be written as the sum of two primes, you need to *prove it*. Since we can't do either yet, constructive logic doesn't allow us to assert "P or not P.", so LEM does not hold.
]


Proof by contradiction heavily relies on the *Law of Excluded Middle* (LEM). Here's how:

1. *Assume $not P$:* You start by assuming the negation of $P$.
2. *Derive a contradiction:* You show that this assumption leads to a contradiction.
3. *Conclude $P$:* By the Law of Excluded Middle, since $P or not P$ is always true, and $not P$ leads to a contradiction, you must conclude that $P$ is true.

Thus, similarly we cannot say proof by contradiction is true.

This reasoning is valid because, in classical logic, the Law of Excluded Middle guarantees that either $P$ or $not P$ is true, so ruling out $not P$ forces $P$ to be true.

In *constructive logic*, proof by contradiction is *not generally valid* because the Law of Excluded Middle is not accepted universally. Constructive logic requires that you provide *constructive evidence* of $P$ rather than just ruling out $not P$ through contradiction.

- If you assume $not P$ and derive a contradiction, this doesn't necessarily mean $P$ is true in constructive logic. You must constructively prove $P$ by finding a direct proof, not just by elimination of alternatives.

Constructive Logic is further related to the Curry-Howard correspondence, through which
you can correspond computational objects to proofs. This is also very useful in computer science.





= Credits

This set of notes is written by #link("https://typst.app")[typst], using the template 
#link("https://typst.app/universe/package/dvdtyp/")[dvdtyp 1.0.0].

Most of the materials are linked to Steffen's DMLR notes, available on Scientia.