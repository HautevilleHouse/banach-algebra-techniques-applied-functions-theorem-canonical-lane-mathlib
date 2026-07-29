import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean.BanachSpacePackage

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean

structure BanachAlgebraPackage (V : BanachSpacePackage) where
  multiplication : V.underlyingVectorSpace → V.underlyingVectorSpace → V.underlyingVectorSpace
  associative : Prop
  distributive : Prop
  submultiplicativeNorm : Prop
  associativeTerm : associative
  distributiveTerm : distributive
  submultiplicativeNormTerm : submultiplicativeNorm

structure BanachAlgebraEvidence {V : BanachSpacePackage} (A : BanachAlgebraPackage V) where
  associativeClosed : A.associative
  distributiveClosed : A.distributive
  submultiplicativeNormClosed : A.submultiplicativeNorm

def BanachAlgebraClosed {V : BanachSpacePackage} (A : BanachAlgebraPackage V) : Prop :=
  A.associative ∧ A.distributive ∧ A.submultiplicativeNorm

theorem banach_algebra_closed_from_evidence {V : BanachSpacePackage} (A : BanachAlgebraPackage V) (E : BanachAlgebraEvidence A) : BanachAlgebraClosed A := by
  exact And.intro E.associativeClosed (And.intro E.distributiveClosed E.submultiplicativeNormClosed)

end BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean
end HautevilleHouse