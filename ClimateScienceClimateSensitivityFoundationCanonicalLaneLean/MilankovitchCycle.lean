import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateSensitivityFoundationCanonicalLaneLean

structure MilankovitchCycle where
  eccentricity : ℝ
  obliquity : ℝ
  precession : ℝ
  insolationAnomaly : ℝ
  cycleClosed : Prop

theorem milankovitch_cycle_closed (M : MilankovitchCycle) : M.cycleClosed := by
  exact M.cycleClosed

end ClimateScienceClimateSensitivityFoundationCanonicalLaneLean
end HautevilleHouse