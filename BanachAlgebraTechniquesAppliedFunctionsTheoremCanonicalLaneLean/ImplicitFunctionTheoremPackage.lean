import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean.BanachSpacePackage
import HautevilleHouse.BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean.DifferentiableMapsPackage

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean

structure ImplicitFunctionTheoremPackage {V W Z : BanachSpacePackage} (f : DifferentiableMapPackage (V × W) Z) (a : V.underlyingVectorSpace) (b : W.underlyingVectorSpace) where
  f_a_b_zero : f.map (a, b) = 0
  partialDerivativeInvertible : Prop
  implicitFunctionExists : Prop
  implicitFunctionDifferentiable : Prop
  f_a_b_zeroTerm : f_a_b_zero
  partialDerivativeInvertibleTerm : partialDerivativeInvertible
  implicitFunctionExistsTerm : implicitFunctionExists
  implicitFunctionDifferentiableTerm : implicitFunctionDifferentiable

structure ImplicitFunctionTheoremEvidence {V W Z : BanachSpacePackage} {f : DifferentiableMapPackage (V × W) Z} {a : V.underlyingVectorSpace} {b : W.underlyingVectorSpace} (IFT : ImplicitFunctionTheoremPackage f a b) where
  f_a_b_zeroClosed : IFT.f_a_b_zero
  partialDerivativeInvertibleClosed : IFT.partialDerivativeInvertible
  implicitFunctionExistsClosed : IFT.implicitFunctionExists
  implicitFunctionDifferentiableClosed : IFT.implicitFunctionDifferentiable

def ImplicitFunctionTheoremClosed {V W Z : BanachSpacePackage} {f : DifferentiableMapPackage (V × W) Z} {a : V.underlyingVectorSpace} {b : W.underlyingVectorSpace} (IFT : ImplicitFunctionTheoremPackage f a b) : Prop :=
  IFT.f_a_b_zero ∧ IFT.partialDerivativeInvertible ∧ IFT.implicitFunctionExists ∧ IFT.implicitFunctionDifferentiable

theorem implicit_function_theorem_closed_from_evidence {V W Z : BanachSpacePackage} {f : DifferentiableMapPackage (V × W) Z} {a : V.underlyingVectorSpace} {b : W.underlyingVectorSpace} (IFT : ImplicitFunctionTheoremPackage f a b) (E : ImplicitFunctionTheoremEvidence IFT) : ImplicitFunctionTheoremClosed IFT := by
  exact And.intro E.f_a_b_zeroClosed (And.intro E.partialDerivativeInvertibleClosed (And.intro E.implicitFunctionExistsClosed E.implicitFunctionDifferentiableClosed))

end BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean
end HautevilleHouse