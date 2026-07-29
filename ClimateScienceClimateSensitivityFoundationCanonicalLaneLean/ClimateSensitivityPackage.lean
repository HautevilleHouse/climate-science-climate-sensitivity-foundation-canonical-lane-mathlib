import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateSensitivityFoundationCanonicalLaneLean

structure ClimateSensitivityPackage {R : RadiativeForcingPackage}
    {M : EnergyBalanceModelPackage R} where
  equilibriumClimateSensitivity : ℝ
  transientClimateResponse : ℝ
  sensitivityRange : ℝ × ℝ
  sensitivityFormulation : Prop

structure ClimateSensitivityEvidence {R : RadiativeForcingPackage}
    {M : EnergyBalanceModelPackage R} (S : ClimateSensitivityPackage R M) where
  sensitivityFormulationClosed : S.sensitivityFormulation

def ClimateSensitivityClosed {R : RadiativeForcingPackage}
    {M : EnergyBalanceModelPackage R} (S : ClimateSensitivityPackage R M) : Prop :=
  S.sensitivityFormulation

theorem climate_sensitivity_closed_from_evidence {R : RadiativeForcingPackage}
    {M : EnergyBalanceModelPackage R} (S : ClimateSensitivityPackage R M)
    (E : ClimateSensitivityEvidence S) : ClimateSensitivityClosed S :=
  E.sensitivityFormulationClosed

end ClimateScienceClimateSensitivityFoundationCanonicalLaneLean
end HautevilleHouse