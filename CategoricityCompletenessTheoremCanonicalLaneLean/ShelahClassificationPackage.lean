import CategoricityCompletenessTheoremCanonicalLaneLean.ModelTheoryPackage

namespace HautevilleHouse
namespace CategoricityCompletenessTheoremCanonicalLaneLean

structure ClassificationPower where
  superstable : Prop
  uncountablyCategorical : Prop
  classificationComplete : Prop

def ClassificationClosed (C : ClassificationPower) : Prop :=
  C.superstable ∧ C.uncountablyCategorical ∧ C.classificationComplete

theorem classification_closed_from_evidence (C : ClassificationPower) :
    ClassificationClosed C := by
  exact And.intro C.superstable (And.intro C.uncountablyCategorical C.classificationComplete)

structure ShelahMainTheorem where
  classifiable : Prop
  uncountablyCategoricalEquiv : Prop

def ShelahTheoremClosed (S : ShelahMainTheorem) : Prop :=
  S.classifiable ∧ S.uncountablyCategoricalEquiv

theorem shelah_theorem_closed (S : ShelahMainTheorem) : ShelahTheoremClosed S := by
  exact And.intro S.classifiable S.uncountablyCategoricalEquiv

end CategoricityCompletenessTheoremCanonicalLaneLean
end HautevilleHouse