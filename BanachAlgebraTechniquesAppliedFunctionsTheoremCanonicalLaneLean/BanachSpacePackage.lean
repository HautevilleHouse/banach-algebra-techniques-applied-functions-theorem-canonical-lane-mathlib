import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean

structure BanachSpacePackage where
  underlyingVectorSpace : Type u
  norm : underlyingVectorSpace → ℝ
  normedAddCommGroup : NormedAddCommGroup underlyingVectorSpace
  complete : Prop
  completeTerm : complete

structure BanachSpaceEvidence (V : BanachSpacePackage) where
  completeClosed : V.complete

def BanachSpaceClosed (V : BanachSpacePackage) : Prop := V.complete

theorem banach_space_closed_from_evidence (V : BanachSpacePackage) (E : BanachSpaceEvidence V) : BanachSpaceClosed V := by
  exact E.completeClosed

end BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean
end HautevilleHouse