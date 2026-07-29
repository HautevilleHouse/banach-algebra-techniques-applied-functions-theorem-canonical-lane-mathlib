import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean

structure StoneWeierstrassPackage (A : AdmissibleClass) where
  subalgebraClosed : bridgeClosed A
  separatesPoints : Prop
  containsConstants : Prop
  denseConclusion : A.object.conclusion

def StoneWeierstrassClosed (P : StoneWeierstrassPackage A) : Prop :=
  P.subalgebraClosed ∧ P.separatesPoints ∧ P.containsConstants

theorem stone_weierstrass_closed_from_package (A : AdmissibleClass)
    (P : StoneWeierstrassPackage A) : StoneWeierstrassClosed P :=
  And.intro P.subalgebraClosed (And.intro P.separatesPoints P.containsConstants)

end BanachAlgebraTechniquesAppliedFunctionsTheoremCanonicalLaneLean
end HautevilleHouse