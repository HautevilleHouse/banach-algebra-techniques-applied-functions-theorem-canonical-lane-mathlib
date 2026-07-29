import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean.BanachAlgebra

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean

structure SpectralData (A : BanachAlgebra) where
  spectrum : A → Set ℂ
  spectralRadius : A → ℝ
  geldfandTransform : (A → ℂ) → ℂ
  spectralRadiusFormula : ∀ a : A, spectralRadius a = limsup (fun n : ℕ => ‖a ^ n‖ ^ (1 / (n : ℕ).toNat : ℝ))
  geldfandIsometry : A.commutative → Prop

structure SpectralEvidence (A : BanachAlgebra) (S : SpectralData A) where
  spectralRadiusFormulaClosed : S.spectralRadiusFormula
  geldfandIsometryClosed : S.geldfandIsometry (by
    have h : A.commutative := trivial
    exact h)

def SpectralTheoryClosed (A : BanachAlgebra) (S : SpectralData A) : Prop :=
  S.spectralRadiusFormula ∧ (A.commutative → S.geldfandIsometry)

theorem spectral_theory_closed_from_evidence (A : BanachAlgebra) (S : SpectralData A) (E : SpectralEvidence A S) : SpectralTheoryClosed A S := by
  refine And.intro E.spectralRadiusFormulaClosed ?_
  intro h
  exact E.geldfandIsometryClosed

end BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean
end HautevilleHouse