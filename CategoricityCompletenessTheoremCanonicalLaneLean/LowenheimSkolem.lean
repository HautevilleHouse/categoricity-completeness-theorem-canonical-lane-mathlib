import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricityCompletenessTheoremCanonicalLaneLean

structure LowenheimSkolemPackage where
  theory : Type u
  model : Type v
  cardinal : Cardinal
  downardTheorem : Prop
  upwardTheorem : Prop
  downardTheoremTerm : downardTheorem
  upwardTheoremTerm : upwardTheorem

structure LowenheimSkolemEvidence (L : LowenheimSkolemPackage) where
  downardTheoremClosed : L.downardTheorem
  upwardTheoremClosed : L.upwardTheorem

def LowenheimSkolemClosed (L : LowenheimSkolemPackage) : Prop :=
  L.downardTheorem ∧ L.upwardTheorem

theorem lowenheim_skolem_closed_from_evidence (L : LowenheimSkolemPackage) (E : LowenheimSkolemEvidence L) : LowenheimSkolemClosed L := by
  exact And.intro E.downardTheoremClosed E.upwardTheoremClosed

end CategoricityCompletenessTheoremCanonicalLaneLean
end HautevilleHouse