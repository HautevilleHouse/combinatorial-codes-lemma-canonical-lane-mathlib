import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialCodesLemmaCanonicalLaneLean.CombinatorialCode

namespace HautevilleHouse
namespace CombinatorialCodesLemmaCanonicalLaneLean

structure ErrorCorrectingCode where
  parameter : CodeParameter
  encode : String → String
  decode : String → String
  minDistanceAchieved : Prop
  errorCorrectionUpTo : Nat → Prop

structure ErrorCorrectingCodeEvidence (C : ErrorCorrectingCode) where
  codeParameterValid : CodeParameterValid C.parameter
  minDistanceAchievedClosed : C.minDistanceAchieved
  errorCorrectionUpToClosed : C.errorCorrectionUpTo (C.parameter.distance / 2)

def ErrorCorrectingCodeClosed (C : ErrorCorrectingCode) : Prop :=
  CodeParameterValid C.parameter ∧ C.minDistanceAchieved ∧
  C.errorCorrectionUpTo (C.parameter.distance / 2)

theorem error_correcting_code_closed_from_evidence (C : ErrorCorrectingCode)
    (E : ErrorCorrectingCodeEvidence C) : ErrorCorrectingCodeClosed C := by
  exact And.intro E.codeParameterValid
    (And.intro E.minDistanceAchievedClosed E.errorCorrectionUpToClosed)

end CombinatorialCodesLemmaCanonicalLaneLean
end HautevilleHouse