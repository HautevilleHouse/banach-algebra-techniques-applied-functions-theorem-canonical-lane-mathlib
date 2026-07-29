import BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean.SpectrumPackage

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean

structure HolomorphicFunctionalCalculusPackage {A : Type u} [BanachAlgebra A] {C : AdmissibleClass A} (S : SpectrumPackage C) where
  calculusDefined : Prop
  homomorphism : Prop
  spectralMapping : Prop
  composition : Prop

structure HolomorphicFunctionalCalculusEvidence {A : Type u} [BanachAlgebra A] {C : AdmissibleClass A} {S : SpectrumPackage C} (H : HolomorphicFunctionalCalculusPackage S) where
  calculusDefinedClosed : H.calculusDefined
  homomorphismClosed : H.homomorphism
  spectralMappingClosed : H.spectralMapping
  compositionClosed : H.composition

def HolomorphicFunctionalCalculusClosed {A : Type u} [BanachAlgebra A] {C : AdmissibleClass A} {S : SpectrumPackage C} (H : HolomorphicFunctionalCalculusPackage S) : Prop :=
  H.calculusDefined ∧ H.homomorphism ∧ H.spectralMapping ∧ H.composition

theorem holomorphic_functional_calculus_closed_from_evidence {A : Type u} [BanachAlgebra A] {C : AdmissibleClass A} {S : SpectrumPackage C} (H : HolomorphicFunctionalCalculusPackage S) (E : HolomorphicFunctionalCalculusEvidence H) : HolomorphicFunctionalCalculusClosed H := by
  exact And.intro E.calculusDefinedClosed (And.intro E.homomorphismClosed (And.intro E.spectralMappingClosed E.compositionClosed))

end BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean
end HautevilleHouse