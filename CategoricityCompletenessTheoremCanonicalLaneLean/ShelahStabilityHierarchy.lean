import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricityCompletenessTheoremCanonicalLaneLean

structure ShelahStabilityHierarchy where
  theory : CompleteTheory
  stableInCardinal : Set ℕ
  superstable : Prop
  NDOP : Prop
  NOTOP : Prop
  depth : ℕ

structure ShelahStabilityEvidence (S : ShelahStabilityHierarchy) where
  stableInCardinalClosed : ∀ κ, κ ∈ S.stableInCardinal ↔ True
  superstableClosed : S.superstable
  NDOPClosed : S.NDOP
  NOTOPClosed : S.NOTOP

def stabilityMainGap (S : ShelahStabilityHierarchy) : Prop :=
  (∃ κ, S.stableInCardinal κ) ∨ (¬∃ κ, S.stableInCardinal κ)

end CategoricityCompletenessTheoremCanonicalLaneLean
end HautevilleHouse