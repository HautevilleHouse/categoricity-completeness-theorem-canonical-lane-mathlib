import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricityCompletenessTheoremCanonicalLaneLean

structure StableEmbeddingData where
  sourceModel : Type u
  targetModel : Type v
  embedding : sourceModel → targetModel
  elementary : Prop
  stabilityUnderExtensions : Prop
  uniqueness : Prop

structure StableEmbeddingEvidence (S : StableEmbeddingData) where
  elementaryClosed : S.elementary
  stabilityUnderExtensionsClosed : S.stabilityUnderExtensions
  uniquenessClosed : S.uniqueness

def StableEmbeddingClosed (S : StableEmbeddingData) : Prop :=
  S.elementary ∧ S.stabilityUnderExtensions ∧ S.uniqueness

theorem stable_embedding_closed_from_evidence (S : StableEmbeddingData) (E : StableEmbeddingEvidence S) :
    StableEmbeddingClosed S := by
  exact And.intro E.elementaryClosed (And.intro E.stabilityUnderExtensionsClosed E.uniquenessClosed)

end CategoricityCompletenessTheoremCanonicalLaneLean
end HautevilleHouse