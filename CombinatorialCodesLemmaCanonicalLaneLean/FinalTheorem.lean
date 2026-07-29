import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialCodesLemmaCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.CombinatorialCodesLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CombinatorialCodesLemmaCanonicalLaneLean

def ConstrainedCombinatorialCodesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_combinatorial_codes_endgame (A : AdmissibleClass) :
    ConstrainedCombinatorialCodesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CombinatorialCodesLemmaCanonicalLaneLean
end HautevilleHouse