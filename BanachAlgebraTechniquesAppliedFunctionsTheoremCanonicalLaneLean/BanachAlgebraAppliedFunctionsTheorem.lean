import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean

structure AppliedFunctionsTheoremStatement where
  targetFunction : Type u
  domain : Type v
  codomain : Type w
  theoremStatement : Prop

def appliedFunctionsTheoremClosed (S : AppliedFunctionsTheoremStatement) : Prop :=
  S.theoremStatement

theorem applied_functions_theorem_from_evidence (S : AppliedFunctionsTheoremStatement) (h : S.theoremStatement) :
    appliedFunctionsTheoremClosed S := h

end BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean
end HautevilleHouse
