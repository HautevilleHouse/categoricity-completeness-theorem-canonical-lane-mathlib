import HautevilleHouse.CategoricityCompletenessTheoremCanonicalLaneLean.CategoricityBridgeGate

namespace HautevilleHouse
namespace CategoricityCompletenessTheoremCanonicalLaneLean

def ConstrainedCategoricityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_categoricity_endgame (A : AdmissibleClass) :
    ConstrainedCategoricityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoricityCompletenessTheoremCanonicalLaneLean
end HautevilleHouse