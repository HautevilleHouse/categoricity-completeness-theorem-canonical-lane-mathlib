import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricityCompletenessTheoremCanonicalLaneLean

structure Language where
  relationSymbols : Type u
  functionSymbols : Type v
  arity : (relationSymbols ⊕ functionSymbols) → ℕ

structure Structure (L : Language) where
  universe : Type w
  relations : (r : L.relationSymbols) → (L.arity (Sum.inl r) → universe) → Prop
  functions : (f : L.functionSymbols) → (L.arity (Sum.inr f) → universe) → universe

end CategoricityCompletenessTheoremCanonicalLaneLean
end HautevilleHouse