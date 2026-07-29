import BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean.HolomorphicFunctionalCalculus

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean

structure SpectralMappingPackage {A : Type u} [BanachAlgebra A] {C : AdmissibleClass A} {S : SpectrumPackage C} {H : HolomorphicFunctionalCalculusPackage S} where
  spectralMappingForPolynomials : Prop
  spectralMappingForHolomorphic : Prop

structure SpectralMappingEvidence {A : Type u} [BanachAlgebra A] {C : AdmissibleClass A} {S : SpectrumPackage C} {H : HolomorphicFunctionalCalculusPackage S} (M : SpectralMappingPackage H) where
  spectralMappingForPolynomialsClosed : M.spectralMappingForPolynomials
  spectralMappingForHolomorphicClosed : M.spectralMappingForHolomorphic

def SpectralMappingClosed {A : Type u} [BanachAlgebra A] {C : AdmissibleClass A} {S : SpectrumPackage C} {H : HolomorphicFunctionalCalculusPackage S} (M : SpectralMappingPackage H) : Prop :=
  M.spectralMappingForPolynomials ∧ M.spectralMappingForHolomorphic

theorem spectral_mapping_closed_from_evidence {A : Type u} [BanachAlgebra A] {C : AdmissibleClass A} {S : SpectrumPackage C} {H : HolomorphicFunctionalCalculusPackage S} (M : SpectralMappingPackage H) (E : SpectralMappingEvidence M) : SpectralMappingClosed M := by
  exact And.intro E.spectralMappingForPolynomialsClosed E.spectralMappingForHolomorphicClosed

end BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean
end HautevilleHouse