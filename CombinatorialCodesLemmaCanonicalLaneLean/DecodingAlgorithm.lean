import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialCodesLemmaCanonicalLaneLean

structure DecodingAlgorithmPackage where
  algorithmDescription : String
  errorCorrectionCapability : Nat
  decodingExists : Prop
  correctionGuaranteed : Prop
  complexityBound : Prop

structure DecodingAlgorithmEvidence (D : DecodingAlgorithmPackage) where
  decodingExistsClosed : D.decodingExists
  correctionGuaranteedClosed : D.correctionGuaranteed
  complexityBoundClosed : D.complexityBound

def DecodingAlgorithmClosed (D : DecodingAlgorithmPackage) : Prop :=
  D.decodingExists ∧ D.correctionGuaranteed ∧ D.complexityBound

theorem decoding_algorithm_closed_from_evidence (D : DecodingAlgorithmPackage)
    (E : DecodingAlgorithmEvidence D) : DecodingAlgorithmClosed D := by
  exact And.intro E.decodingExistsClosed
    (And.intro E.correctionGuaranteedClosed E.complexityBoundClosed)

end CombinatorialCodesLemmaCanonicalLaneLean
end HautevilleHouse