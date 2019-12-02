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
a1, a2, a3
----

\* MV CONSTANT definitions Val
const_157530351079296000 == 
{v1, v2}
----

\* MV CONSTANT definitions Coord
const_157530351079297000 == 
{c1, c2}
----

\* MV CONSTANT definitions Acceptor
const_157530351079298000 == 
{a1, a2, a3}
----

\* SYMMETRY definition
symm_157530351079299000 == 
Permutations(const_157530351079296000) \union Permutations(const_157530351079298000)
----

\* CONSTANT definitions @modelParameterConstants:1FastNum
const_1575303510792100000 == 
{1}
----

\* CONSTANT definitions @modelParameterConstants:4CoordOf(i)
const_1575303510792101000(i) == 
c1
----

\* CONSTANT definitions @modelParameterConstants:5QuorumP1(i)
const_1575303510792102000(i) == 
{{a1,a2,a3}}
----

\* CONSTANT definitions @modelParameterConstants:6QuorumP2(i)
const_1575303510792103000(i) == 
{{a1,a2},{a2,a3},{a1,a3}}
----

\* CONSTANT definition @modelParameterDefinitions:2
def_ov_1575303510792106000 ==
0..2
----
=============================================================================
\* Modification History
\* Created Mon Dec 02 16:18:30 GMT 2019 by heidi
