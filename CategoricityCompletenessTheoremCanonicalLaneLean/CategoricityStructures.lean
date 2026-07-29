import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricityCompletenessTheoremCanonicalLaneLean

structure ModelClass where
  language : Type u
  signature : Type v
  models : Type w
  elementaryClass : Prop
  categoricityCardinal : Cardinal

structure CategoricityCertificate (M : ModelClass) where
  cardinalCharacterization : M.categoricityCardinal = ℵ₁ ∨ M.categoricityCardinal = ℵ₀
  completenessProperty : Prop
  categoricityProof : Prop

structure CategoricityClassEvidence (M : ModelClass) (C : CategoricityCertificate M) where
  cardinalCharacterizationClosed : C.cardinalCharacterization
  completenessPropertyClosed : C.completenessProperty
  categoricityProofClosed : C.categoricityProof

def CategoricityClassClosed (M : ModelClass) (C : CategoricityCertificate M) : Prop :=
  C.cardinalCharacterization ∧ C.completenessProperty ∧ C.categoricityProof

theorem categoricity_class_closed_from_evidence (M : ModelClass) (C : CategoricityCertificate M)
    (E : CategoricityClassEvidence M C) : CategoricityClassClosed M C := by
  exact And.intro E.cardinalCharacterizationClosed
    (And.intro E.completenessPropertyClosed E.categoricityProofClosed)

end CategoricityCompletenessTheoremCanonicalLaneLean
end HautevilleHouse