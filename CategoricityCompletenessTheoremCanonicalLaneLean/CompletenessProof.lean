import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricityCompletenessTheoremCanonicalLaneLean

structure CompletenessProofPackage where
  syntaxDefined : Prop
  proofSystem : Prop
  soundnessProved : Prop
  completenessProved : Prop
  syntaxDefinedTerm : syntaxDefined
  proofSystemTerm : proofSystem
  soundnessProvedTerm : soundnessProved
  completenessProvedTerm : completenessProved

structure CompletenessProofEvidence (C : CompletenessProofPackage) where
  syntaxDefinedClosed : C.syntaxDefined
  proofSystemClosed : C.proofSystem
  soundnessProvedClosed : C.soundnessProved
  completenessProvedClosed : C.completenessProved

def CompletenessProofClosed (C : CompletenessProofPackage) : Prop :=
  C.syntaxDefined ∧ C.proofSystem ∧ C.soundnessProved ∧ C.completenessProved

theorem completeness_proof_closed_from_evidence (C : CompletenessProofPackage) (E : CompletenessProofEvidence C) : CompletenessProofClosed C := by
  exact And.intro E.syntaxDefinedClosed (And.intro E.proofSystemClosed (And.intro E.soundnessProvedClosed E.completenessProvedClosed))

end CategoricityCompletenessTheoremCanonicalLaneLean
end HautevilleHouse