import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricityCompletenessTheoremCanonicalLaneLean

structure StructurePackage where
  language : Type u
  domain : Type v
  interpretation : language → domain → Prop
  cardinal : Cardinal
  countableLanguage : Prop
  countableDomain : Prop
  countableLanguageTerm : countableLanguage
  countableDomainTerm : countableDomain

structure StructureEvidence (S : StructurePackage) where
  countableLanguageClosed : S.countableLanguage
  countableDomainClosed : S.countableDomain

def StructureClosed (S : StructurePackage) : Prop := S.countableLanguage ∧ S.countableDomain

theorem structure_closed_from_evidence (S : StructurePackage) (E : StructureEvidence S) : StructureClosed S := by
  exact And.intro E.countableLanguageClosed E.countableDomainClosed

end CategoricityCompletenessTheoremCanonicalLaneLean
end HautevilleHouse