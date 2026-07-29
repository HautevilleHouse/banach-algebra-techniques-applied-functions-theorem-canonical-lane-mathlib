import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean.BanachAlgebra
import HautevilleHouse.BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean.AppliedFunctionsTheorem

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean

structure BanachAlgebrasAdmittedObject where
  algebra : BanachAlgebra
  algebraClosed : BanachAlgebraClosed algebra
  theoremStatement : Prop
  theoremProved : theoremStatement

structure BanachAlgebrasAdmissibleClass where
  object : BanachAlgebrasAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : BanachAlgebrasAdmissibleClass) : Prop :=
  A.object.theoremStatement ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean
end HautevilleHouse