import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateSensitivityFoundationCanonicalLaneLean

structure RadiativeForcingPackage where
  co2Concentration : ℝ
  solarIrradiance : ℝ
  albedo : ℝ
  radiativeForcing : ℝ
  forcingFormulation : Prop

structure RadiativeForcingEvidence (R : RadiativeForcingPackage) where
  forcingFormulationClosed : R.forcingFormulation

def RadiativeForcingClosed (R : RadiativeForcingPackage) : Prop :=
  R.forcingFormulation

theorem radiative_forcing_closed_from_evidence (R : RadiativeForcingPackage)
    (E : RadiativeForcingEvidence R) : RadiativeForcingClosed R :=
  E.forcingFormulationClosed

end ClimateScienceClimateSensitivityFoundationCanonicalLaneLean
end HautevilleHouse