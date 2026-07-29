import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean

structure BanachAlgebraPackage where
  carrier : Type u
  norm : carrier → ℝ
  algebra : Algebra ℝ carrier
  complete : Prop
  multiplicative : Prop
  unitExistence : Prop

structure BanachAlgebraEvidence (A : BanachAlgebraPackage) where
  completeClosed : A.complete
  multiplicativeClosed : A.multiplicative
  unitExistenceClosed : A.unitExistence

def BanachAlgebraClosed (A : BanachAlgebraPackage) : Prop :=
  A.complete ∧ A.multiplicative ∧ A.unitExistence

theorem banach_algebra_closed_from_evidence (A : BanachAlgebraPackage) (E : BanachAlgebraEvidence A) : BanachAlgebraClosed A :=
  And.intro E.completeClosed (And.intro E.multiplicativeClosed E.unitExistenceClosed)

end BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean
end HautevilleHouse