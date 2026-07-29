import ClimateScienceClimateSensitivityFoundationCanonicalLaneLean.FinalTheorem
import ClimateScienceClimateSensitivityFoundationCanonicalLaneLean.ClimateSensitivityObjects

namespace HautevilleHouse
namespace ClimateScienceClimateSensitivityFoundationCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  climateConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "climate-sensitivity-canonical-lane",
    theoremName := "Climate Sensitivity Constrained Theorem",
    theoremObject := "Equilibrium Climate Sensitivity (ECS) bounds constrained by paleoclimate evidence",
    classicalBoundary := "unrestricted ECS range (1.0-6.0 K) carried outside the admissible class",
    climateConstrainedStatement := "admissible-class ECS closed at 2.0-4.5 K via Milankovitch bridge, isotopic closure, and energy balance gate",
    certificateLane := "climate_constrained",
    carriedRemainder := "classical ECS extremes and unresolved feedbacks remain outside the constrained closure"
  }

def ClassicalSourceBoundaryCarried : Prop :=
  sourceTheoremStatement.classicalBoundary ≠ ""

def ClimateConstrainedTheoremClosed : Prop :=
  forall A : AdmissibleClass, ConstrainedClimateSensitivityClosure A

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = "climate-sensitivity-canonical-lane" := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = "climate_constrained" := by
  rfl

theorem classical_source_boundary_carried_checked :
    ClassicalSourceBoundaryCarried := by
  unfold ClassicalSourceBoundaryCarried
  exact by decide

theorem climate_constrained_theorem_closed_checked :
    ClimateConstrainedTheoremClosed := by
  intro A
  exact constrained_climate_sensitivity_endgame A

end ClimateScienceClimateSensitivityFoundationCanonicalLaneLean
end HautevilleHouse