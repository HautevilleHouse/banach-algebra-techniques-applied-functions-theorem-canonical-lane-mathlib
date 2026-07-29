import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean.BanachSpacePackage

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean

structure DifferentiableMapPackage (V W : BanachSpacePackage) where
  map : V.underlyingVectorSpace → W.underlyingVectorSpace
  frechetDerivativeExists : Prop
  derivativeContinuous : Prop
  frechetDerivativeExistsTerm : frechetDerivativeExists
  derivativeContinuousTerm : derivativeContinuous

structure DifferentiableMapEvidence {V W : BanachSpacePackage} (f : DifferentiableMapPackage V W) where
  frechetDerivativeExistsClosed : f.frechetDerivativeExists
  derivativeContinuousClosed : f.derivativeContinuous

def DifferentiableMapClosed {V W : BanachSpacePackage} (f : DifferentiableMapPackage V W) : Prop :=
  f.frechetDerivativeExists ∧ f.derivativeContinuous

theorem differentiable_map_closed_from_evidence {V W : BanachSpacePackage} (f : DifferentiableMapPackage V W) (E : DifferentiableMapEvidence f) : DifferentiableMapClosed f := by
  exact And.intro E.frechetDerivativeExistsClosed E.derivativeContinuousClosed

end BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean
end HautevilleHouse