import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialCodesLemmaCanonicalLaneLean

structure ShannonCapacity (A : Type u) (C : ErrorCorrectingCode A) where
  zeroErrorCapacity : ℝ
  zeroErrorCapacityIsSupremum : Prop
  achievability : Prop
  weakConverse : Prop

structure ShannonCapacityEvidence (A : Type u) (C : ErrorCorrectingCode A) (S : ShannonCapacity A C) where
  zeroErrorCapacityClosed : S.zeroErrorCapacityIsSupremum
  achievabilityClosed : S.achievability
  weakConverseClosed : S.weakConverse

def ShannonCapacityClosed (A : Type u) (C : ErrorCorrectingCode A) (S : ShannonCapacity A C) : Prop :=
  S.zeroErrorCapacityIsSupremum ∧ S.achievability ∧ S.weakConverse

theorem shannon_capacity_closed_from_evidence
    (A : Type u) (C : ErrorCorrectingCode A) (S : ShannonCapacity A C)
    (E : ShannonCapacityEvidence A C S) : ShannonCapacityClosed A C S := by
  exact And.intro E.zeroErrorCapacityClosed
    (And.intro E.achievabilityClosed E.weakConverseClosed)

end CombinatorialCodesLemmaCanonicalLaneLean
end HautevilleHouse
