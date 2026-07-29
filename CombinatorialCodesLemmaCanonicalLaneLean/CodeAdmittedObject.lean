import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialCodesLemmaCanonicalLaneLean

structure CodeAdmittedObject where
  codeFamily : Type
  codeFamilyCardinality : Nat
  shellability : Prop
  minimalExcluded : Type
  conclusion : shellability

end CombinatorialCodesLemmaCanonicalLaneLean
end HautevilleHouse
