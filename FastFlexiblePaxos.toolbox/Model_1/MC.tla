---- MODULE MC ----
EXTENDS FastFlexiblePaxos, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
v1, v2
----

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
c1, c2
----

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
a1, a2
----

\* MV CONSTANT definitions Val
const_1575467832654308000 == 
{v1, v2}
----

\* MV CONSTANT definitions Coord
const_1575467832654309000 == 
{c1, c2}
----

\* MV CONSTANT definitions Acceptor
const_1575467832654310000 == 
{a1, a2}
----

\* SYMMETRY definition
symm_1575467832654311000 == 
Permutations(const_1575467832654308000) \union Permutations(const_1575467832654310000)
----

\* CONSTANT definitions @modelParameterConstants:1FastNum
const_1575467832654312000 == 
{1}
----

\* CONSTANT definitions @modelParameterConstants:4CoordOf(i)
const_1575467832654313000(i) == 
c1
----

\* CONSTANT definitions @modelParameterConstants:5QuorumP1(i)
const_1575467832654314000(i) == 
{{a1},{a2}}
----

\* CONSTANT definitions @modelParameterConstants:6QuorumP2(i)
const_1575467832654315000(i) == 
{{a1,a2}}
----

\* CONSTANT definition @modelParameterDefinitions:2
def_ov_1575467832654318000 ==
0..2
----
\* PROPERTY definition @modelCorrectnessProperties:0
prop_1575467832655322000 ==
/\ Spec 
        /\ \E Q \in SUBSET Acceptor :
               /\ \A i \in ClassicNum : 
                    /\ Q \in QuorumP1(i)
                    /\ Q \in QuorumP2(i)
               /\ \E c \in Coord : <>[]LA(c, Q)
        => <>(learned # {})
----
=============================================================================
\* Modification History
\* Created Wed Dec 04 13:57:12 GMT 2019 by heidi
