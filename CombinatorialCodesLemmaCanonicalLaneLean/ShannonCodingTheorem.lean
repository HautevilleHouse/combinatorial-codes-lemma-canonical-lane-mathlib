import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialCodesLemmaCanonicalLaneLean

structure ShannonCodingPackage (A : AdmissibleClass) where
  channelCapacity : ℝ
  codeRate : ℝ
  errorProbability : ℝ
  channelCodingTheorem : A.codeRate ≤ A.channelCapacity → ∃ n, ∃ code : ErrorCorrectingCodePackage A, code.blockLength = n ∧ code.codeSize ≥ 2^(A.channelCapacity * n - ε) ∧ code.minimumDistance ≥ n * (1 - H2(A.codeRate))
  converseCodingTheorem : A.codeRate > A.channelCapacity → ¬ (∃ code : ErrorCorrectingCodePackage A, code.codeSize ≥ 2^(A.channelCapacity * n))

def ShannonCodingClosed (S : ShannonCodingPackage) : Prop :=
  S.channelCodingTheorem ∧ S.converseCodingTheorem

end CombinatorialCodesLemmaCanonicalLaneLean
end HautevilleHouse