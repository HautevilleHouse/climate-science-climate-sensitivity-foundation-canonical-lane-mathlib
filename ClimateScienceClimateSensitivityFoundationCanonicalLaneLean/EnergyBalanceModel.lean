import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateSensitivityFoundationCanonicalLaneLean

structure EnergyBalanceModelPackage where
  solarConstant : Prop
  albedo : Prop
  opticalDepth : Prop
  surfaceTemperature : Prop
  radiativeEquilibrium : Prop
  sensitivityParameter : Prop

structure EnergyBalanceModelEvidence (E : EnergyBalanceModelPackage) where
  solarConstantClosed : E.solarConstant
  albedoClosed : E.albedo
  opticalDepthClosed : E.opticalDepth
  surfaceTemperatureClosed : E.surfaceTemperature
  radiativeEquilibriumClosed : E.radiativeEquilibrium
  sensitivityParameterClosed : E.sensitivityParameter

def EnergyBalanceModelClosed (E : EnergyBalanceModelPackage) : Prop :=
  E.solarConstant ∧ E.albedo ∧ E.opticalDepth ∧ E.surfaceTemperature ∧
  E.radiativeEquilibrium ∧ E.sensitivityParameter

theorem energy_balance_model_closed_from_evidence (E : EnergyBalanceModelPackage)
    (Ev : EnergyBalanceModelEvidence E) : EnergyBalanceModelClosed E := by
  exact And.intro Ev.solarConstantClosed
    (And.intro Ev.albedoClosed
      (And.intro Ev.opticalDepthClosed
        (And.intro Ev.surfaceTemperatureClosed
          (And.intro Ev.radiativeEquilibriumClosed Ev.sensitivityParameterClosed))))

end ClimateScienceClimateSensitivityFoundationCanonicalLaneLean
end HautevilleHouse
