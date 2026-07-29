import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean.BanachSpacePackage
import HautevilleHouse.BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean.DifferentiableMapsPackage

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean

structure InverseFunctionTheoremPackage {V W : BanachSpacePackage} (f : DifferentiableMapPackage V W) where
  derivativeInvertible : Prop
  localInverseExists : Prop
  localInverseDifferentiable : Prop
  derivativeInvertibleTerm : derivativeInvertible
  localInverseExistsTerm : localInverseExists
  localInverseDifferentiableTerm : localInverseDifferentiable

structure InverseFunctionTheoremEvidence {V W : BanachSpacePackage} {f : DifferentiableMapPackage V W} (IFT : InverseFunctionTheoremPackage f) where
  derivativeInvertibleClosed : IFT.derivativeInvertible
  localInverseExistsClosed : IFT.localInverseExists
  localInverseDifferentiableClosed : IFT.localInverseDifferentiable

def InverseFunctionTheoremClosed {V W : BanachSpacePackage} {f : DifferentiableMapPackage V W} (IFT : InverseFunctionTheoremPackage f) : Prop :=
  IFT.derivativeInvertible ∧ IFT.localInverseExists ∧ IFT.localInverseDifferentiable

theorem inverse_function_theorem_closed_from_evidence {V W : BanachSpacePackage} {f : DifferentiableMapPackage V W} (IFT : InverseFunctionTheoremPackage f) (E : InverseFunctionTheoremEvidence IFT) : InverseFunctionTheoremClosed IFT := by
  exact And.intro E.derivativeInvertibleClosed (And.intro E.localInverseExistsClosed E.localInverseDifferentiableClosed)

end BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean
end HautevilleHouse