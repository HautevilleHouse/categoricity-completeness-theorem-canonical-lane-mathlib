import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricityCompletenessTheoremCanonicalLaneLean

structure CategoricityPackage where
  theory : Type u
  models : Type v
  cardinalFixed : Cardinal
  allModelsIsomorphic : Prop
  uniquenessProof : Prop
  cardinalFixedTerm : cardinalFixed = Cardinal.mk (Set.univ : Set (models → Prop))
  allModelsIsomorphicTerm : allModelsIsomorphic
  uniquenessProofTerm : uniquenessProof

structure CategoricityEvidence (C : CategoricityPackage) where
  allModelsIsomorphicClosed : C.allModelsIsomorphic
  uniquenessProofClosed : C.uniquenessProof

def CategoricityClosed (C : CategoricityPackage) : Prop :=
  C.allModelsIsomorphic ∧ C.uniquenessProof

theorem categoricity_closed_from_evidence (C : CategoricityPackage) (E : CategoricityEvidence C) : CategoricityClosed C := by
  exact And.intro E.allModelsIsomorphicClosed E.uniquenessProofClosed

end CategoricityCompletenessTheoremCanonicalLaneLean
end HautevilleHouse