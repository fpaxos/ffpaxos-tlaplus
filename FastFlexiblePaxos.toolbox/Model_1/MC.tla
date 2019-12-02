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
a1, a2, a3, a4
----

\* MV CONSTANT definitions Val
const_157529736173541000 == 
{v1, v2}
----

\* MV CONSTANT definitions Coord
const_157529736173542000 == 
{c1, c2}
----

\* MV CONSTANT definitions Acceptor
const_157529736173543000 == 
{a1, a2, a3, a4}
----

\* SYMMETRY definition
symm_157529736173544000 == 
Permutations(const_157529736173541000) \union Permutations(const_157529736173543000)
----

\* CONSTANT definitions @modelParameterConstants:1FastNum
const_157529736173545000 == 
{}
----

\* CONSTANT definitions @modelParameterConstants:4CoordOf(i)
const_157529736173546000(i) == 
c1
----

\* CONSTANT definitions @modelParameterConstants:5Quorum(i)
const_157529736173547000(i) == 
{{a1,a2},{a1,a3},{a2,a3}}
----

\* CONSTANT definition @modelParameterDefinitions:2
def_ov_157529736173550000 ==
0..2
----
=============================================================================
\* Modification History
\* Created Mon Dec 02 14:36:01 GMT 2019 by heidi
