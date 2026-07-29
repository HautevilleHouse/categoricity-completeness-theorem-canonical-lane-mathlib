import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoricityCompletenessTheoremCanonicalLaneLean.CategoricityStructures

namespace HautevilleHouse
namespace CategoricityCompletenessTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let M : ModelClass := A.object  -- object is a ModelClass
  M.elementaryClass

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  -- A.object is a ModelClass with elementaryClass true
  exact A.object.elementaryClass

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end CategoricityCompletenessTheoremCanonicalLaneLean
end HautevilleHouse