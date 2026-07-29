import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean

structure BanachAlgebraPackage where
  algebraType : Type u
  norm : algebraType → ℝ
  complete : Prop
  unitMultiplicative : Prop
  spectrumCompact : Prop
  functionalCalculusExists : Prop

structure BanachAlgebraEvidence (B : BanachAlgebraPackage) where
  completeClosed : B.complete
  unitMultiplicativeClosed : B.unitMultiplicative
  spectrumCompactClosed : B.spectrumCompact
  functionalCalculusExistsClosed : B.functionalCalculusExists

def BanachAlgebraClosed (B : BanachAlgebraPackage) : Prop :=
  B.complete ∧ B.unitMultiplicative ∧ B.spectrumCompact ∧ B.functionalCalculusExists

theorem banach_algebra_closed_from_evidence (B : BanachAlgebraPackage) (E : BanachAlgebraEvidence B) :
    BanachAlgebraClosed B := by
  exact And.intro E.completeClosed (And.intro E.unitMultiplicativeClosed (And.intro E.spectrumCompactClosed E.functionalCalculusExistsClosed))

end BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean
end HautevilleHouse
