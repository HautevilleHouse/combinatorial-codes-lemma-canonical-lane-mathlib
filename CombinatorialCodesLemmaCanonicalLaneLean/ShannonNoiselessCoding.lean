import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialCodesLemmaCanonicalLaneLean

structure ShannonNoiselessCodingPackage {C : CodeConstructionPackage} where
  sourceEntropy : ℝ
  optimalCodeLength : ℝ
  lowerBound : Prop
  upperBound : Prop
  averageLength : ℝ

structure ShannonNoiselessCodingEvidence {C : CodeConstructionPackage} (S : ShannonNoiselessCodingPackage C) where
  lowerBoundClosed : S.averageLength ≥ S.sourceEntropy
  upperBoundClosed : S.averageLength ≤ S.sourceEntropy + 1
  optimalityClosed : S.optimalCodeLength = S.sourceEntropy

def ShannonNoiselessCodingClosed {C : CodeConstructionPackage} (S : ShannonNoiselessCodingPackage C) : Prop :=
  S.averageLength ≥ S.sourceEntropy ∧ S.averageLength ≤ S.sourceEntropy + 1 ∧ S.optimalCodeLength = S.sourceEntropy

theorem shannon_noiseless_coding_closed_from_evidence {C : CodeConstructionPackage}
    (S : ShannonNoiselessCodingPackage C) (E : ShannonNoiselessCodingEvidence S) :
    ShannonNoiselessCodingClosed S := by
  exact And.intro E.lowerBoundClosed
    (And.intro E.upperBoundClosed E.optimalityClosed)

end CombinatorialCodesLemmaCanonicalLaneLean
end HautevilleHouse
