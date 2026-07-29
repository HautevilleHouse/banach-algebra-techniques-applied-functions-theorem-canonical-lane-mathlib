import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean

def gateClosed (A : BanachAlgebrasAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : BanachAlgebrasAdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean
end HautevilleHouse