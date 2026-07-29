import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialCodesLemmaCanonicalLaneLean

structure CodeAdmittedObject where
  code : ErrorCorrectingCode Unit
  capacityClosed : ShannonCapacityClosed Unit code (by
    exact ShannonCapacity.mk 0 (by trivial) (by trivial) (by trivial))
  endgameState : Prop

structure AdmissibleClass where
  object : CodeAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.endgameState ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CombinatorialCodesLemmaCanonicalLaneLean
end HautevilleHouse
