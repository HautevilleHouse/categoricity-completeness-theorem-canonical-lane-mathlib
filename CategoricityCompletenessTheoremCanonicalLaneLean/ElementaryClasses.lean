import canonicalLaneMathlib.AdmissibleClass
open HautevilleHouse.CategoricityCompletenessTheoremCanonicalLaneLean

namespace HautevilleHouse
namespace CategoricityCompletenessTheoremCanonicalLaneLean

structure ElementaryClass (L : Language) where
  axioms : Set (Formula L)
  isElementary : Prop

structure ElementaryClassEvidence {L : Language} (C : ElementaryClass L) where
  axiomsDefined : C.axioms ≠ ∅

end CategoricityCompletenessTheoremCanonicalLaneLean
end HautevilleHouse