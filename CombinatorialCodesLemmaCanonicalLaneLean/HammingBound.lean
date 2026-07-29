import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialCodesLemmaCanonicalLaneLean.ErrorCorrectingCode

namespace HautevilleHouse
namespace CombinatorialCodesLemmaCanonicalLaneLean

structure HammingBoundPackage (C : ErrorCorrectingCode) where
  spherePackingParameters : Nat
  hammingBoundInequality : Prop
  boundAchieved : Prop

structure HammingBoundEvidence {C : ErrorCorrectingCode} (H : HammingBoundPackage C) where
  spherePackingParametersClosed : H.spherePackingParameters = 
    (Nat.choose C.parameter.codeLength 0) + (Nat.choose C.parameter.codeLength 1) + 
    (Nat.choose C.parameter.codeLength (C.parameter.distance / 2))
  hammingBoundInequalityClosed : H.hammingBoundInequality
  boundAchievedClosed : H.boundAchieved

def HammingBoundClosed {C : ErrorCorrectingCode} (H : HammingBoundPackage C) : Prop :=
  H.hammingBoundInequality ∧ H.boundAchieved

theorem hamming_bound_closed_from_evidence {C : ErrorCorrectingCode}
    (H : HammingBoundPackage C) (E : HammingBoundEvidence H) : HammingBoundClosed H := by
  exact And.intro E.hammingBoundInequalityClosed E.boundAchievedClosed

end CombinatorialCodesLemmaCanonicalLaneLean
end HautevilleHouse