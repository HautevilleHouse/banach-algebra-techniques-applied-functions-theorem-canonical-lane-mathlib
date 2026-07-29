import Mathlib.Analysis.Calculus.MeanInequalities
import Mathlib.Analysis.InnerProductSpace.Basic

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean

structure BanachAlgebra (A : Type u) [NormedRing A] [NormedAlgebra ℝ A] [CompleteSpace A] where
  normedRing : NormedRing A
  normedAlgebra : NormedAlgebra ℝ A
  complete : CompleteSpace A

structure AdmissibleClass (A : Type u) [BanachAlgebra A] where
  algebra : BanachAlgebra A
  spectra : Set ℂ
  functionClass : Set (ℂ → ℂ)
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : Type u) [BanachAlgebra A] (C : AdmissibleClass A) : Prop :=
  (∀ a : A, spectrum ℝ a ⊆ C.spectra) ∧ (C.endpointSatisfied ∨ C.remainderRecorded)

end BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean
end HautevilleHouse