import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricityCompletenessTheoremCanonicalLaneLean

structure CategoricityAdmittedObject where
  model : Type u
  language : Type v
  theory : Prop
  cardinal : ℕ
  categoricityProof : Prop
  conclusion : categoricityProof

inductive CategoricityEndgameState where
  | initial
  | bridgeClosed
  | gateClosed
  | endgame

structure AdmissibleClass where
  object : CategoricityAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CategoricityWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def CategoricityWitnessClosed (O : CategoricityAdmittedObject) : Prop :=
  O.categoricityProof

end CategoricityCompletenessTheoremCanonicalLaneLean
end HautevilleHouse