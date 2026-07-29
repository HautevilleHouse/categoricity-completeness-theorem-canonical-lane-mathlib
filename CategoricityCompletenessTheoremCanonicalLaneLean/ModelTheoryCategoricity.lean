import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricityCompletenessTheoremCanonicalLaneLean

structure CompleteTheory where
  language : Type u
  sentences : Type v
  complete : Prop
  consistent : Prop

structure CategoricalTheory (T : CompleteTheory) where
  cardinal : ℕ
  modelExists : Prop
  uniqueness : Prop

structure CategoricityWitness (T : CompleteTheory) (C : CategoricalTheory T) where
  uncountablyCategorical : Prop
  allModelsIsomorphic : Prop
  conclusion : C.uniqueuness

def CategoricityWitnessClosed (O : CategoricityAdmittedObject) : Prop :=
  O.categoricity

end CategoricityCompletenessTheoremCanonicalLaneLean
end HautevilleHouse