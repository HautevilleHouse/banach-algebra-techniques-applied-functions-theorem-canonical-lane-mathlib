import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean.BanachAlgebra

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean

structure FunctionSpace (X : Type u) [TopologicalSpace X] (A : BanachAlgebra) where
  carrier : Set (X → A.unital)
  subspace : Submodule ℂ carrier
  algebra_structure : Subalgebra ℂ carrier
  closed : Prop

structure FunctionSpaceEvidence (F : FunctionSpace) where
  closedClosed : F.closed

def FunctionSpaceClosed (F : FunctionSpace) : Prop :=
  F.closed

theorem function_space_closed_from_evidence (F : FunctionSpace) (E : FunctionSpaceEvidence F) : FunctionSpaceClosed F := by
  exact E.closedClosed

end BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean
end HautevilleHouse