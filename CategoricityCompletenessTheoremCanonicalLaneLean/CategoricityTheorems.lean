import canonicalLaneMathlib.AdmissibleClass
open HautevilleHouse.CategoricityCompletenessTheoremCanonicalLaneLean

namespace HautevilleHouse
namespace CategoricityCompletenessTheoremCanonicalLaneLean

structure CategoricityPackage (L : Language) (κ : Cardinal) where
  theory : Theory L
  categoricalInPower : ∀ (M N : Structure L), M ⊧ theory → N ⊧ theory → Cardinal.mk (M.universe) = κ → Cardinal.mk (N.universe) = κ → M ≅[L] N
  uniqueness : Prop

structure CategoricityEvidence {L : Language} {κ : Cardinal} (C : CategoricityPackage L κ) where
  categoricalProof : C.categoricalInPower

end CategoricityCompletenessTheoremCanonicalLaneLean
end HautevilleHouse