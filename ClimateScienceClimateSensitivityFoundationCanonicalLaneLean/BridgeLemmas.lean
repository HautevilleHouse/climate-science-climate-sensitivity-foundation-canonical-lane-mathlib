import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateSensitivityFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let obj := A.object
  obj.closed

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.closed

end ClimateScienceClimateSensitivityFoundationCanonicalLaneLean
end HautevilleHouse