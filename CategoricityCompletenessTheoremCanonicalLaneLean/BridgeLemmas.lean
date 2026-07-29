import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricityCompletenessTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CategoricityWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CategoricityCompletenessTheoremCanonicalLaneLean
end HautevilleHouse