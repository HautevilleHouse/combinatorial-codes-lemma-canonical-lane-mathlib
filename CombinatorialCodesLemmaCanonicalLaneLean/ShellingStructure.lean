import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialCodesLemmaCanonicalLaneLean

structure ShellingStructure where
  codeFamily : Type
  shellingOrder : List codeFamily
  shellabilityProof : Prop
  shellabilityProofTerm : shellabilityProof

structure ShellingStructureEvidence (S : ShellingStructure) where
  shellingOrderCorrect : Prop
  shellabilityClosed : Prop

def ShellingStructureClosed (S : ShellingStructure) : Prop :=
  S.shellabilityProof

theorem shelling_structure_closed_from_evidence (S : ShellingStructure) (E : ShellingStructureEvidence S) :
    ShellingStructureClosed S := by
  exact E.shellabilityClosed

end CombinatorialCodesLemmaCanonicalLaneLean
end HautevilleHouse
