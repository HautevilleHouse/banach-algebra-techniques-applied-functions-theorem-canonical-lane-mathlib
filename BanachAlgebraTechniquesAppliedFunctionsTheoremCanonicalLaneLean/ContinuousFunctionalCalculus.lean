import BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean.SpectralMappingTheorem

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean

structure ContinuousFunctionalCalculusPackage {A : Type u} [BanachAlgebra A] {C : AdmissibleClass A} {S : SpectrumPackage C} {H : HolomorphicFunctionalCalculusPackage S} {M : SpectralMappingPackage H} where
  calculusForContinuousFunctions : Prop
  isometric : Prop
  functionalCalculusExtension : Prop

structure ContinuousFunctionalCalculusEvidence {A : Type u} [BanachAlgebra A] {C : AdmissibleClass A} {S : SpectrumPackage C} {H : HolomorphicFunctionalCalculusPackage S} {M : SpectralMappingPackage H} (F : ContinuousFunctionalCalculusPackage M) where
  calculusForContinuousFunctionsClosed : F.calculusForContinuousFunctions
  isometricClosed : F.isometric
  functionalCalculusExtensionClosed : F.functionalCalculusExtension

def ContinuousFunctionalCalculusClosed {A : Type u} [BanachAlgebra A] {C : AdmissibleClass A} {S : SpectrumPackage C} {H : HolomorphicFunctionalCalculusPackage S} {M : SpectralMappingPackage H} (F : ContinuousFunctionalCalculusPackage M) : Prop :=
  F.calculusForContinuousFunctions ∧ F.isometric ∧ F.functionalCalculusExtension

theorem continuous_functional_calculus_closed_from_evidence {A : Type u} [BanachAlgebra A] {C : AdmissibleClass A} {S : SpectrumPackage C} {H : HolomorphicFunctionalCalculusPackage S} {M : SpectralMappingPackage H} (F : ContinuousFunctionalCalculusPackage M) (E : ContinuousFunctionalCalculusEvidence F) : ContinuousFunctionalCalculusClosed F := by
  exact And.intro E.calculusForContinuousFunctionsClosed (And.intro E.isometricClosed E.functionalCalculusExtensionClosed)

end BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean
end HautevilleHouse