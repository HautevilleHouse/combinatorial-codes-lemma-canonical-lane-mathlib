import canonicalLaneMathlib.BridgeLemmas
import HautevilleHouse.CombinatorialCodesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialCodesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  closedUnderAdmissibility A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.admissibilityProof

end CombinatorialCodesLemmaCanonicalLaneLean
end HautevilleHouse