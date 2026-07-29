import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateSensitivityFoundationCanonicalLaneLean

structure PaleoclimateConstraintPackage where
  paleoDataPeriod : String
  temperatureAnomaly : ℝ
  co2ConcentrationAnomaly : ℝ
  constraintFormulation : Prop

structure PaleoclimateConstraintEvidence (P : PaleoclimateConstraintPackage) where
  constraintFormulationClosed : P.constraintFormulation

def PaleoclimateConstraintClosed (P : PaleoclimateConstraintPackage) : Prop :=
  P.constraintFormulation

theorem paleoclimate_constraint_closed_from_evidence (P : PaleoclimateConstraintPackage)
    (E : PaleoclimateConstraintEvidence P) : PaleoclimateConstraintClosed P :=
  E.constraintFormulationClosed

end ClimateScienceClimateSensitivityFoundationCanonicalLaneLean
end HautevilleHouse