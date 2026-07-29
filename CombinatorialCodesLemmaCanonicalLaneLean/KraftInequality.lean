import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialCodesLemmaCanonicalLaneLean

structure KraftInequalityPackage {C : CodeConstructionPackage} where
  codeWordLengths : List ℕ
  kraftSum : ℝ := 0
  sumLessOrEqualOne : Prop
  existsPrefixFree : Prop

structure KraftInequalityEvidence {C : CodeConstructionPackage} (K : KraftInequalityPackage C) where
  sumClosed : K.kraftSum ≤ 1
  existsPrefixFreeClosed : K.existsPrefixFree

def KraftInequalityClosed {C : CodeConstructionPackage} (K : KraftInequalityPackage C) : Prop :=
  K.kraftSum ≤ 1 ∧ K.existsPrefixFree

theorem kraft_inequality_closed_from_evidence {C : CodeConstructionPackage} (K : KraftInequalityPackage C)
    (E : KraftInequalityEvidence K) : KraftInequalityClosed K := by
  exact And.intro E.sumClosed E.existsPrefixFreeClosed

end CombinatorialCodesLemmaCanonicalLaneLean
end HautevilleHouse
