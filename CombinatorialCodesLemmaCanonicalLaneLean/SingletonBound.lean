import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialCodesLemmaCanonicalLaneLean.ErrorCorrectingCode

namespace HautevilleHouse
namespace CombinatorialCodesLemmaCanonicalLaneLean

structure SingletonBoundPackage (C : ErrorCorrectingCode) where
  singletonBoundFormula : Prop
  boundAchieved : Prop

structure SingletonBoundEvidence {C : ErrorCorrectingCode} (S : SingletonBoundPackage C) where
  singletonBoundFormulaClosed : S.singletonBoundFormula
  boundAchievedClosed : S.boundAchieved

def SingletonBoundClosed {C : ErrorCorrectingCode} (S : SingletonBoundPackage C) : Prop :=
  S.singletonBoundFormula ∧ S.boundAchieved

theorem singleton_bound_closed_from_evidence {C : ErrorCorrectingCode}
    (S : SingletonBoundPackage C) (E : SingletonBoundEvidence S) : SingletonBoundClosed S := by
  exact And.intro E.singletonBoundFormulaClosed E.boundAchievedClosed

end CombinatorialCodesLemmaCanonicalLaneLean
end HautevilleHouse