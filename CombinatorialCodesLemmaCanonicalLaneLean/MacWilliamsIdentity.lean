import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialCodesLemmaCanonicalLaneLean

structure MacWilliamsIdentityPackage (A : AdmissibleClass) where
  code : ErrorCorrectingCodePackage A
  weightEnumerator : Polynomial ℕ → ℕ
  enumeratorDual : Polynomial ℕ → ℕ
  identity : A.weightEnumerator * (WeightEnumeratorDual) = 2^(code.blockLength) * (1 + (A.code.alphabetSize-1)*X)^(code.blockLength) * (1 + X)^(code.blockLength)

def MacWilliamsIdentityClosed (M : MacWilliamsIdentityPackage) : Prop :=
  M.identity

end CombinatorialCodesLemmaCanonicalLaneLean
end HautevilleHouse