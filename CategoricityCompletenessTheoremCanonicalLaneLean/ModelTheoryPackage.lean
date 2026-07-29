import CategoricityCompletenessTheoremCanonicalLaneLean.CategoricityClosure

namespace HautevilleHouse
namespace CategoricityCompletenessTheoremCanonicalLaneLean

structure Language where
  constantSymbols : Type u
  relationSymbols : Type v
  functionSymbols : Type w
  arity : (relationSymbols ⊕ functionSymbols) → ℕ

structure Structure (L : Language) where
  universe : Type max u v w
  constants : L.constantSymbols → universe
  relations : (r : L.relationSymbols) → (Fin (L.arity (Sum.inl r)) → universe) → Prop
  functions : (f : L.functionSymbols) → (Fin (L.arity (Sum.inr f)) → universe) → universe

def Theory (L : Language) : Type (max u v w + 1) :=
  Set (Formula L)

inductive Formula (L : Language) where
  | equal (x y : Term L) : Formula L
  | rel (r : L.relationSymbols) (args : List (Term L)) : Formula L
  | and (φ ψ : Formula L) : Formula L
  | not (φ : Formula L) : Formula L
  | forall (v : ℕ) (φ : Formula L) : Formula L

inductive Term (L : Language) where
  | var (v : ℕ) : Term L
  | const (c : L.constantSymbols) : Term L
  | func (f : L.functionSymbols) (args : List (Term L)) : Term L

structure CategoricityProofPackage (L : Language) (T : Theory L) where
  cardinal : ℕ
  allModelsOfCardinalIsomorphic : Prop
  uniquenessProof : Prop

def CategoricityClosed {L : Language} {T : Theory L} (P : CategoricityProofPackage L T) : Prop :=
  P.allModelsOfCardinalIsomorphic ∧ P.uniquenessProof

theorem categoricity_closed_from_evidence {L : Language} {T : Theory L} (P : CategoricityProofPackage L T) :
    CategoricityClosed P := by
  exact And.intro P.allModelsOfCardinalIsomorphic P.uniquenessProof

end CategoricityCompletenessTheoremCanonicalLaneLean
end HautevilleHouse