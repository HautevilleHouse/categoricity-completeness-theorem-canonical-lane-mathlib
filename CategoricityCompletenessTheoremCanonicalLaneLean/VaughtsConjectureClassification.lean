import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricityCompletenessTheoremCanonicalLaneLean

structure VaughtsConjectureClassification where
  countableTheory : CompleteTheory
  numberModelsUpToIsomorphism : ℕ ⊕ ℕ
  continuumHypothesisAssumption : Prop
  classifiesModels : Prop

structure VaughtsConjectureEvidence (V : VaughtsConjectureClassification) where
  classificationClosed : V.classifiesModels
  cardinalComputed : V.numberModelsUpToIsomorphism = Sum.inl 1 ∨ V.numberModelsUpToIsomorphism = Sum.inr 0

end CategoricityCompletenessTheoremCanonicalLaneLean
end HautevilleHouse