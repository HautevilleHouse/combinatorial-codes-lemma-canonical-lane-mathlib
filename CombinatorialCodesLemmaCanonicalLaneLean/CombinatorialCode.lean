import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialCodesLemmaCanonicalLaneLean

structure CodeParameter where
  codeLength : Nat
  alphabetSize : Nat
  distance : Nat
  rate : Rat

def CodeParameterValid (p : CodeParameter) : Prop :=
  p.codeLength > 0 ∧ p.alphabetSize > 1 ∧ p.distance > 0 ∧
  p.rate = (Nat.log p.alphabetSize (2^p.codeLength)) / (p.codeLength : Rat)

end CombinatorialCodesLemmaCanonicalLaneLean
end HautevilleHouse