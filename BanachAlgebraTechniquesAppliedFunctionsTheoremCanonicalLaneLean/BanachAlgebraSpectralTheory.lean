import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean

structure SpectralTheoryPackage {B : BanachAlgebraPackage} {F : FunctionalCalculusPackage B} where
  spectrumNonempty : Prop
  spectralRadiusFormula : Prop
  spectralMappingTheorem : Prop
  invariantSubspaceDecomposition : Prop

structure SpectralTheoryEvidence {B : BanachAlgebraPackage} {F : FunctionalCalculusPackage B} (S : SpectralTheoryPackage B F) where
  spectrumNonemptyClosed : S.spectrumNonempty
  spectralRadiusFormulaClosed : S.spectralRadiusFormula
  spectralMappingTheoremClosed : S.spectralMappingTheorem
  invariantSubspaceDecompositionClosed : S.invariantSubspaceDecomposition

def SpectralTheoryClosed {B : BanachAlgebraPackage} {F : FunctionalCalculusPackage B} (S : SpectralTheoryPackage B F) : Prop :=
  S.spectrumNonempty ∧ S.spectralRadiusFormula ∧ S.spectralMappingTheorem ∧ S.invariantSubspaceDecomposition

theorem spectral_theory_closed_from_evidence {B : BanachAlgebraPackage} {F : FunctionalCalculusPackage B} (S : SpectralTheoryPackage B F) (E : SpectralTheoryEvidence S) :
    SpectralTheoryClosed S := by
  exact And.intro E.spectrumNonemptyClosed (And.intro E.spectralRadiusFormulaClosed (And.intro E.spectralMappingTheoremClosed E.invariantSubspaceDecompositionClosed))

end BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean
end HautevilleHouse
