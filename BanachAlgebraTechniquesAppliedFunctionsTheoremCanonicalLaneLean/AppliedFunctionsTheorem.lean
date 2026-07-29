import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean.BanachAlgebra
import HautevilleHouse.BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean.FunctionSpace
import HautevilleHouse.BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean.SpectralTheory
import HautevilleHouse.BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean.FunctionalCalculus

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean

structure AppliedFunctionsTheorem (A : BanachAlgebra) (F : FunctionSpace) (S : SpectralData A) (H : HolomorphicFunctionalCalculus A S) where
  statement : Prop
  proof : statement

def AppliedFunctionsTheoremStatement (A : BanachAlgebra) (F : FunctionSpace) (S : SpectralData A) (H : HolomorphicFunctionalCalculus A S) : Prop :=
  BanachAlgebraClosed A ∧ FunctionSpaceClosed F ∧ SpectralTheoryClosed A S ∧ FunctionalCalculusClosed A S H

theorem applied_functions_theorem_proved (A : BanachAlgebra) (F : FunctionSpace) (S : SpectralData A) (H : HolomorphicFunctionalCalculus A S) (E : BanachAlgebraEvidence A) (E' : FunctionSpaceEvidence F) (E'' : SpectralEvidence A S) (E''' : FunctionalCalculusEvidence A S H) : AppliedFunctionsTheoremStatement A F S H := by
  refine And.intro (banach_algebra_closed_from_evidence A E) (And.intro (function_space_closed_from_evidence F E') (And.intro (spectral_theory_closed_from_evidence A S E'') (functional_calculus_closed_from_evidence A S H E''')))

end BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean
end HautevilleHouse