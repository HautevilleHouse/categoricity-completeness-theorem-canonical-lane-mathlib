import canonicalLaneMathlib.AdmissibleClass
open HautevilleHouse.CategoricityCompletenessTheoremCanonicalLaneLean

namespace HautevilleHouse
namespace CategoricityCompletenessTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CategoricityEvidence (A.object : CategoricityPackage) ∧ CompletenessEvidence (A.object : CompletenessPackage)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact And.intro A.object.categoricityEvidence A.object.completenessEvidence

end CategoricityCompletenessTheoremCanonicalLaneLean
end HautevilleHouse