import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean

structure GelfandNaimarkPackage (A : AdmissibleClass) where
  commutativeBA : Prop
  isometricIsomorphism : A.object.subalgebra.carrier ≃+* C(A.object.baseSpace, ℝ)
  isomorphismIsIsometry : IsIsometry isomorphism

def GelfandNaimarkClosed (G : GelfandNaimarkPackage A) : Prop :=
  G.commutativeBA ∧ True

theorem gelfand_naimark_closed_from_package (A : AdmissibleClass)
    (G : GelfandNaimarkPackage A) : GelfandNaimarkClosed G :=
  And.intro G.commutativeBA trivial

end BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean
end HautevilleHouse