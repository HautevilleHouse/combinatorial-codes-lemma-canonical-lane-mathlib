import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialCodesLemmaCanonicalLaneLean

structure McMillanTheoremPackage {C : CodeConstructionPackage} {K : KraftInequalityPackage C} where
  uniquelyDecodable : Prop
  kraftConditionSatisfied : Prop
  completeness : Prop

structure McMillanTheoremEvidence {C : CodeConstructionPackage} {K : KraftInequalityPackage C}
    (M : McMillanTheoremPackage C K) where
  uniquelyDecodableClosed : M.uniquelyDecodable
  kraftConditionSatisfiedClosed : M.kraftConditionSatisfied
  completenessClosed : M.completeness

def McMillanTheoremClosed {C : CodeConstructionPackage} {K : KraftInequalityPackage C}
    (M : McMillanTheoremPackage C K) : Prop :=
  M.uniquelyDecodable ∧ M.kraftConditionSatisfied ∧ M.completeness

theorem mc_millan_theorem_closed_from_evidence {C : CodeConstructionPackage} {K : KraftInequalityPackage C}
    (M : McMillanTheoremPackage C K) (E : McMillanTheoremEvidence M) :
    McMillanTheoremClosed M := by
  exact And.intro E.uniquelyDecodableClosed
    (And.intro E.kraftConditionSatisfiedClosed E.completenessClosed)

end CombinatorialCodesLemmaCanonicalLaneLean
end HautevilleHouse
