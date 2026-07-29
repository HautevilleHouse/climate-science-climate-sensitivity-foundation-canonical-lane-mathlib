import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClimateScienceClimateSensitivityFoundationCanonicalLaneLean.EnergyBalanceModel
import HautevilleHouse.ClimateScienceClimateSensitivityFoundationCanonicalLaneLean.PaleoclimateProxy

namespace HautevilleHouse
namespace ClimateScienceClimateSensitivityFoundationCanonicalLaneLean

structure ClimateSensitivityAdmissibleClass where
  energyBalanceModel : EnergyBalanceModelPackage
  paleoclimateProxy : PaleoclimateProxyPackage

structure AdmissibleClass where
  object : ClimateSensitivityAdmissibleClass
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EnergyBalanceModelClosed A.object.energyBalanceModel ∧
  PaleoclimateProxyClosed A.object.paleoclimateProxy

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  sorry

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedClimateSensitivityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_climate_sensitivity_endgame (A : AdmissibleClass) :
    ConstrainedClimateSensitivityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClimateScienceClimateSensitivityFoundationCanonicalLaneLean
end HautevilleHouse
