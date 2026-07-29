import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoricityCompletenessTheoremCanonicalLaneLean

structure LosConjecturePackage where
  theory : CompleteTheory
  stabilityOrder : Type u
  categoricityAtCardinal : ℕ → Prop
  morleyRank : Prop
  vaughtsConjectureCondition : Prop

structure LosConjectureEvidence (L : LosConjecturePackage) where
  stabilityOrderClosed : L.stabilityOrder
  morleyRankClosed : L.morleyRank
  categoricityTransferClosed : ∀ κ, L.categoricityAtCardinal κ → L.categoricityAtCardinal (κ + 1)
  vaughtsConjectureConditionClosed : L.vaughtsConjectureCondition

end CategoricityCompletenessTheoremCanonicalLaneLean
end HautevilleHouse