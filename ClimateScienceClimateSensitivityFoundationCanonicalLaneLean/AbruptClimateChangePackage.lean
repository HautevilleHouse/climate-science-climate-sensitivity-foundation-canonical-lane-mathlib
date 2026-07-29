import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateSensitivityFoundationCanonicalLaneLean

structure AbruptClimateChangePackage {R : RadiativeForcingPackage}
    {M : EnergyBalanceModelPackage R} {S : ClimateSensitivityPackage R M} where
  tippingPointThreshold : ℝ
  hysteresisWidth : ℝ
  stableStates : Nat
  abruptChangeFormulation : Prop

structure AbruptClimateChangeEvidence {R : RadiativeForcingPackage}
    {M : EnergyBalanceModelPackage R} {S : ClimateSensitivityPackage R M}
    (A : AbruptClimateChangePackage R M S) where
  abruptChangeFormulationClosed : A.abruptChangeFormulation

def AbruptClimateChangeClosed {R : RadiativeForcingPackage}
    {M : EnergyBalanceModelPackage R} {S : ClimateSensitivityPackage R M}
    (A : AbruptClimateChangePackage R M S) : Prop :=
  A.abruptChangeFormulation

theorem abrupt_climate_change_closed_from_evidence {R : RadiativeForcingPackage}
    {M : EnergyBalanceModelPackage R} {S : ClimateSensitivityPackage R M}
    (A : AbruptClimateChangePackage R M S)
    (E : AbruptClimateChangeEvidence A) : AbruptClimateChangeClosed A :=
  E.abruptChangeFormulationClosed

end ClimateScienceClimateSensitivityFoundationCanonicalLaneLean
end HautevilleHouse