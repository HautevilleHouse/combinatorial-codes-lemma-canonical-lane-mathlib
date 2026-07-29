import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialCodesLemmaCanonicalLaneLean.ErrorCorrectingCode

namespace HautevilleHouse
namespace CombinatorialCodesLemmaCanonicalLaneLean

structure LinearCode where
  parameter : CodeParameter
  generatorMatrix : List (List Nat)
  parityCheckMatrix : List (List Nat)
  dimension : Nat
  dualClosed : Prop
  syndromeDecoding : Prop

structure LinearCodeEvidence (L : LinearCode) where
  codeParameterValid : CodeParameterValid L.parameter
  matrixDimensionsCorrect : L.generatorMatrix.length = L.dimension ∧
    (∀ row ∈ L.generatorMatrix, row.length = L.parameter.codeLength)
  dualClosedClosed : L.dualClosed
  syndromeDecodingClosed : L.syndromeDecoding

def LinearCodeClosed (L : LinearCode) : Prop :=
  CodeParameterValid L.parameter ∧
  L.generatorMatrix.length = L.dimension ∧
  (∀ row ∈ L.generatorMatrix, row.length = L.parameter.codeLength) ∧
  L.dualClosed ∧ L.syndromeDecoding

theorem linear_code_closed_from_evidence (L : LinearCode) (E : LinearCodeEvidence L) : LinearCodeClosed L := by
  exact And.intro E.codeParameterValid
    (And.intro (by exact E.matrixDimensionsCorrect.left)
      (And.intro (by exact E.matrixDimensionsCorrect.right)
        (And.intro E.dualClosedClosed E.syndromeDecodingClosed)))

end CombinatorialCodesLemmaCanonicalLaneLean
end HautevilleHouse