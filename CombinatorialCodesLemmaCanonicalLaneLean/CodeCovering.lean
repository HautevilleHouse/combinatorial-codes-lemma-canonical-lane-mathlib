import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialCodesLemmaCanonicalLaneLean

structure CodeCoveringPackage where
  alphabetSize : Nat
  blockLength : Nat
  coveringRadius : Nat
  coveringExists : Prop
  coveringConstruction : Prop
  coveringDecoding : Prop

structure CodeCoveringEvidence (C : CodeCoveringPackage) where
  coveringExistsClosed : C.coveringExists
  coveringConstructionClosed : C.coveringConstruction
  coveringDecodingClosed : C.coveringDecoding

def CodeCoveringClosed (C : CodeCoveringPackage) : Prop :=
  C.coveringExists ∧ C.coveringConstruction ∧ C.coveringDecoding

theorem code_covering_closed_from_evidence (C : CodeCoveringPackage)
    (E : CodeCoveringEvidence C) : CodeCoveringClosed C := by
  exact And.intro E.coveringExistsClosed
    (And.intro E.coveringConstructionClosed E.coveringDecodingClosed)

end CombinatorialCodesLemmaCanonicalLaneLean
end HautevilleHouse