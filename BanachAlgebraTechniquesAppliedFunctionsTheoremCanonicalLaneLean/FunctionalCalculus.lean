import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean

structure FunctionalCalculusPackage (A : BanachAlgebraPackage) where
  holomorphicFunctions : Type v
  calculusMap : holomorphicFunctions → A.carrier → A.carrier
  spectralMapping : Prop
  homomorphismProperty : Prop
  continuity : Prop

structure FunctionalCalculusEvidence {A : BanachAlgebraPackage} (F : FunctionalCalculusPackage A) where
  spectralMappingClosed : F.spectralMapping
  homomorphismPropertyClosed : F.homomorphismProperty
  continuityClosed : F.continuity

def FunctionalCalculusClosed {A : BanachAlgebraPackage} (F : FunctionalCalculusPackage A) : Prop :=
  F.spectralMapping ∧ F.homomorphismProperty ∧ F.continuity

theorem functional_calculus_closed_from_evidence {A : BanachAlgebraPackage} (F : FunctionalCalculusPackage A) (E : FunctionalCalculusEvidence F) : FunctionalCalculusClosed F :=
  And.intro E.spectralMappingClosed (And.intro E.homomorphismPropertyClosed E.continuityClosed)

end BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean
end HautevilleHouse