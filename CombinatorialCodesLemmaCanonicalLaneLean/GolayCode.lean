import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialCodesLemmaCanonicalLaneLean.ErrorCorrectingCode

namespace HautevilleHouse
namespace CombinatorialCodesLemmaCanonicalLaneLean

structure GolayCode where
  parameter : CodeParameter
  selfDual : Prop
  perfectCode : Prop
  generatorMatrix : List (List Nat)
  parityCheckMatrix : List (List Nat)

structure GolayCodeEvidence (G : GolayCode) where
  codeParameterValid : CodeParameterValid G.parameter
  selfDualClosed : G.selfDual
  perfectCodeClosed : G.perfectCode
  syndromesCorrect : G.generatorMatrix.length = 12 ∧ G.parityCheckMatrix.length = 12

def GolayCodeClosed (G : GolayCode) : Prop :=
  CodeParameterValid G.parameter ∧ G.selfDual ∧ G.perfectCode ∧
  G.generatorMatrix.length = 12 ∧ G.parityCheckMatrix.length = 12

theorem golay_code_closed_from_evidence (G : GolayCode) (E : GolayCodeEvidence G) : GolayCodeClosed G := by
  exact And.intro E.codeParameterValid
    (And.intro E.selfDualClosed
      (And.intro E.perfectCodeClosed
        (And.intro (by exact E.syndromesCorrect.left) (by exact E.syndromesCorrect.right))))

end CombinatorialCodesLemmaCanonicalLaneLean
end HautevilleHouse