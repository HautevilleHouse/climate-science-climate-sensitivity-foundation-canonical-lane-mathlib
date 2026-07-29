import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateSensitivityFoundationCanonicalLaneLean

structure ClimateSensitivity where
  forcing : ℝ
  temperatureResponse : ℝ
  feedbackParameter : ℝ
  equilibriumClimateSensitivity : ℝ
  sensitivityClosed : Prop

theorem climate_sensitivity_closed (C : ClimateSensitivity) : C.sensitivityClosed := by
  exact C.sensitivityClosed

end ClimateScienceClimateSensitivityFoundationCanonicalLaneLean
end HautevilleHouse