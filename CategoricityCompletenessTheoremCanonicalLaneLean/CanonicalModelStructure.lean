import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricityCompletenessTheoremCanonicalLaneLean

structure CanonicalModelStructure where
  frame : Type u
  signature : Type v
  theory : Type w
  carriers : List (frame → Prop)
  elementaryEmbeddings : Prop
  homogeneous : Prop
  existence : Prop

structure CanonicalModelEvidence (M : CanonicalModelStructure) where
  carriersClosed : ∀ (c : M.frame → Prop), c ∈ M.carriers → c
  elementaryEmbeddingsClosed : M.elementaryEmbeddings
  homogeneousClosed : M.homogeneous
  existenceClosed : M.existence

def CanonicalModelClosed (M : CanonicalModelStructure) : Prop :=
  (∀ c ∈ M.carriers, c) ∧ M.elementaryEmbeddings ∧ M.homogeneous ∧ M.existence

theorem canonical_model_closed_from_evidence (M : CanonicalModelStructure) (E : CanonicalModelEvidence M) : CanonicalModelClosed M := by
  refine And.intro ?_ (And.intro E.elementaryEmbeddingsClosed (And.intro E.homogeneousClosed E.existenceClosed))
  intro c hc
  exact E.carriersClosed c hc

end CategoricityCompletenessTheoremCanonicalLaneLean
end HautevilleHouse