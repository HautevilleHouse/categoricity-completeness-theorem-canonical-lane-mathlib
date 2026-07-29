import canonicalLaneMathlib.AdmissibleClass
open HautevilleHouse.CategoricityCompletenessTheoremCanonicalLaneLean

namespace HautevilleHouse
namespace CategoricityCompletenessTheoremCanonicalLaneLean

structure CompletenessPackage (L : Language) where
  proofSystem : ProofSystem L
  soundness : ∀ (T : Theory L) (φ : Formula L), T ⊢ φ → T ⊨ φ
  completeness : ∀ (T : Theory L) (φ : Formula L), T ⊨ φ → T ⊢ φ

structure CompletenessEvidence {L : Language} (C : CompletenessPackage L) where
  soundnessClosed : C.soundness
  completenessClosed : C.completeness

end CategoricityCompletenessTheoremCanonicalLaneLean
end HautevilleHouse