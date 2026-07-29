import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialCodesLemmaCanonicalLaneLean

structure HammingCodePackage where
  blockLength : ℕ
  parityBits : ℕ
  generatorMatrix : Matrix (Fin parityBits) (Fin blockLength) (Fin 2)
  parityCheckMatrix : Matrix (Fin (blockLength - parityBits)) (Fin blockLength) (Fin 2)
  errorDetectCorrect : Prop
  minDistance : ℕ

structure HammingCodeEvidence (H : HammingCodePackage) where
  errorDetectCorrectClosed : H.errorDetectCorrect
  minDistanceClosed : H.minDistance ≥ 3

def HammingCodeClosed (H : HammingCodePackage) : Prop :=
  H.errorDetectCorrect ∧ H.minDistance ≥ 3

theorem hamming_code_closed_from_evidence (H : HammingCodePackage) (E : HammingCodeEvidence H) :
    HammingCodeClosed H := by
  exact And.intro E.errorDetectCorrectClosed E.minDistanceClosed

end CombinatorialCodesLemmaCanonicalLaneLean
end HautevilleHouse
