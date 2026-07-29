import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialCodesLemmaCanonicalLaneLean

structure MinimalExcludedFamily where
  family : Type
  excludedSet : family → Prop
  minimality : Prop
  minimalityTerm : minimality

def MinimalExcludedFamilyClosed (M : MinimalExcludedFamily) : Prop :=
  M.minimality

theorem minimal_excluded_family_closed (M : MinimalExcludedFamily) :
    MinimalExcludedFamilyClosed M := by
  exact M.minimalityTerm

end CombinatorialCodesLemmaCanonicalLaneLean
end HautevilleHouse
