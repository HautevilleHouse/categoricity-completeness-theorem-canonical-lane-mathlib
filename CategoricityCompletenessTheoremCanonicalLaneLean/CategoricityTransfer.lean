import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricityCompletenessTheoremCanonicalLaneLean

structure CategoricityTransferData where
  sourceTheory : Type u
  targetTheory : Type v
  translation : sourceTheory → targetTheory
  backwardTranslation : targetTheory → sourceTheory
  biInterpretability : Prop
  categoricityPreserved : Prop
  completenessPreserved : Prop

structure CategoricityTransferEvidence (T : CategoricityTransferData) where
  translationConsistency : ∀ (s : T.sourceTheory), T.backwardTranslation (T.translation s) = s
  backwardConsistency : ∀ (t : T.targetTheory), T.translation (T.backwardTranslation t) = t
  categoricityPreservedClosed : T.categoricityPreserved
  completenessPreservedClosed : T.completenessPreserved

def CategoricityTransferClosed (T : CategoricityTransferData) : Prop :=
  (∀ s, T.backwardTranslation (T.translation s) = s) ∧
  (∀ t, T.translation (T.backwardTranslation t) = t) ∧
  T.categoricityPreserved ∧ T.completenessPreserved

theorem categoricity_transfer_closed_from_evidence (T : CategoricityTransferData) (E : CategoricityTransferEvidence T) :
    CategoricityTransferClosed T := by
  exact And.intro E.translationConsistency (And.intro E.backwardConsistency
    (And.intro E.categoricityPreservedClosed E.completenessPreservedClosed))

end CategoricityCompletenessTheoremCanonicalLaneLean
end HautevilleHouse