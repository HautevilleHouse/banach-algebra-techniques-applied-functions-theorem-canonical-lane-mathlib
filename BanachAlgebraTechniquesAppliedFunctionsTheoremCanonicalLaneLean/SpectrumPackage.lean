import BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean.BanachAlgebraBasic

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean

structure SpectrumPackage {A : Type u} [BanachAlgebra A] (C : AdmissibleClass A) where
  spectrumNonempty : Prop
  spectralRadiusFinite : Prop
  resolventSetOpen : Prop
  resolventBounded : Prop

structure SpectrumEvidence {A : Type u} [BanachAlgebra A] {C : AdmissibleClass A} (S : SpectrumPackage C) where
  spectrumNonemptyClosed : S.spectrumNonempty
  spectralRadiusFiniteClosed : S.spectralRadiusFinite
  resolventSetOpenClosed : S.resolventSetOpen
  resolventBoundedClosed : S.resolventBounded

def SpectrumClosed {A : Type u} [BanachAlgebra A] {C : AdmissibleClass A} (S : SpectrumPackage C) : Prop :=
  S.spectrumNonempty ∧ S.spectralRadiusFinite ∧ S.resolventSetOpen ∧ S.resolventBounded

theorem spectrum_closed_from_evidence {A : Type u} [BanachAlgebra A] {C : AdmissibleClass A} (S : SpectrumPackage C) (E : SpectrumEvidence S) : SpectrumClosed S := by
  exact And.intro E.spectrumNonemptyClosed (And.intro E.spectralRadiusFiniteClosed (And.intro E.resolventSetOpenClosed E.resolventBoundedClosed))

end BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean
end HautevilleHouse