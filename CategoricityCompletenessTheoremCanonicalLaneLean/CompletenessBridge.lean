import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricityCompletenessTheoremCanonicalLaneLean

structure CompletenessBridgeData where
  syntacticConsistency : Prop
  modelExistence : Prop
  downwardLöwenheimSkolem : Prop
  completenessPrinciple : Prop

structure CompletenessBridgeEvidence (B : CompletenessBridgeData) where
  syntacticConsistencyClosed : B.syntacticConsistency
  modelExistenceClosed : B.modelExistence
  downwardLöwenheimSkolemClosed : B.downwardLöwenheimSkolem
  completenessPrincipleClosed : B.completenessPrinciple

def CompletenessBridgeClosed (B : CompletenessBridgeData) : Prop :=
  B.syntacticConsistency ∧ B.modelExistence ∧
  B.downwardLöwenheimSkolem ∧ B.completenessPrinciple

theorem completeness_bridge_closed_from_evidence (B : CompletenessBridgeData) (E : CompletenessBridgeEvidence B) :
    CompletenessBridgeClosed B := by
  exact And.intro E.syntacticConsistencyClosed (And.intro E.modelExistenceClosed
    (And.intro E.downwardLöwenheimSkolemClosed E.completenessPrincipleClosed))

end CategoricityCompletenessTheoremCanonicalLaneLean
end HautevilleHouse