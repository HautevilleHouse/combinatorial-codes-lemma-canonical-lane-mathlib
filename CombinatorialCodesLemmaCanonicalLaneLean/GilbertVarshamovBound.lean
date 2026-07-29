import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialCodesLemmaCanonicalLaneLean.HammingBound

namespace HautevilleHouse
namespace CombinatorialCodesLemmaCanonicalLaneLean

structure GilbertVarshamovBoundPackage {C : ErrorCorrectingCode} (H : HammingBoundPackage C) where
  constructedCodeExists : Prop
  gvBoundQuality : Prop

structure GilbertVarshamovBoundEvidence {C : ErrorCorrectingCode} {H : HammingBoundPackage C}
    (G : GilbertVarshamovBoundPackage H) where
  constructedCodeExistsClosed : G.constructedCodeExists
  gvBoundQualityClosed : G.gvBoundQuality

def GilbertVarshamovBoundClosed {C : ErrorCorrectingCode} {H : HammingBoundPackage C}
    (G : GilbertVarshamovBoundPackage H) : Prop :=
  G.constructedCodeExists ∧ G.gvBoundQuality

theorem gilbert_varshamov_bound_closed_from_evidence {C : ErrorCorrectingCode}
    {H : HammingBoundPackage C} (G : GilbertVarshamovBoundPackage H)
    (E : GilbertVarshamovBoundEvidence G) : GilbertVarshamovBoundClosed G := by
  exact And.intro E.constructedCodeExistsClosed E.gvBoundQualityClosed

end CombinatorialCodesLemmaCanonicalLaneLean
end HautevilleHouse