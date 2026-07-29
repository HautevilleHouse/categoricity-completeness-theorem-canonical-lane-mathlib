import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricityCompletenessTheoremCanonicalLaneLean

structure CategoricityAdmittedObject where
  theory : Type u
  model : Type v
  completeTheory : Prop
  categoricity : Prop
  conclusion : categoricity

structure AdmissibleClass where
  object : CategoricityAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CategoricityWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CategoricityCompletenessTheoremCanonicalLaneLean
end HautevilleHouse