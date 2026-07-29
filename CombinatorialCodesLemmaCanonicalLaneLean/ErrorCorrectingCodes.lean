import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialCodesLemmaCanonicalLaneLean

structure ErrorCorrectingCode (A : Type u) where
  alphabet : Type u
  blockLength : Nat
  codeSet : Set (A → A)
  minimumDistance : Nat
  errorCorrectionCapability : Prop

structure ErrorCorrectingCodeEvidence (C : ErrorCorrectingCode α) where
  minDistancePositive : C.minimumDistance ≥ 1
  codeNonempty : Set.Nonempty C.codeSet

def ErrorCorrectingCodeClosed (C : ErrorCorrectingCode α) : Prop :=
  C.errorCorrectionCapability ∧ C.minimumDistance ≥ 1

theorem error_correcting_code_closed_from_evidence
    (C : ErrorCorrectingCode α) (E : ErrorCorrectingCodeEvidence C) :
    ErrorCorrectingCodeClosed C := by
  exact And.intro C.errorCorrectionCapability E.minDistancePositive

end CombinatorialCodesLemmaCanonicalLaneLean
end HautevilleHouse
