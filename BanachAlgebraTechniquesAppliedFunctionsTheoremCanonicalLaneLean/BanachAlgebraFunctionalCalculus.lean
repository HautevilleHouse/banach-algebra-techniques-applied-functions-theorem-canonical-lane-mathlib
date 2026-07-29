import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean

structure FunctionalCalculusPackage {B : BanachAlgebraPackage} where
  holomorphicCalculus : Prop
  continuousCalculus : Prop
  borelCalculus : Prop
  spectralMapping : Prop

structure FunctionalCalculusEvidence {B : BanachAlgebraPackage} (F : FunctionalCalculusPackage B) where
  holomorphicCalculusClosed : F.holomorphicCalculus
  continuousCalculusClosed : F.continuousCalculus
  borelCalculusClosed : F.borelCalculus
  spectralMappingClosed : F.spectralMapping

def FunctionalCalculusClosed {B : BanachAlgebraPackage} (F : FunctionalCalculusPackage B) : Prop :=
  F.holomorphicCalculus ∧ F.continuousCalculus ∧ F.borelCalculus ∧ F.spectralMapping

theorem functional_calculus_closed_from_evidence {B : BanachAlgebraPackage} (F : FunctionalCalculusPackage B) (E : FunctionalCalculusEvidence F) :
    FunctionalCalculusClosed F := by
  exact And.intro E.holomorphicCalculusClosed (And.intro E.continuousCalculusClosed (And.intro E.borelCalculusClosed E.spectralMappingClosed))

end BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean
end HautevilleHouse
