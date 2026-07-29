import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateSensitivityFoundationCanonicalLaneLean

structure MilankovitchCycles where
  obliquity : ℝ
  eccentricity : ℝ
  precession : ℝ
  insolationAnomaly : ℝ
  orbitalParametersClosed : Prop
  insolationAnomalyClosed : insolationAnomaly

structure MilankovitchCyclesEvidence (C : MilankovitchCycles) where
  orbitalParametersClosed : C.orbitalParametersClosed
  insolationAnomalyClosed : C.insolationAnomaly

def MilankovitchCyclesClosed (C : MilankovitchCycles) : Prop :=
  C.orbitalParametersClosed ∧ C.insolationAnomaly

theorem milankovitch_cycles_closed_from_evidence
    (C : MilankovitchCycles) (E : MilankovitchCyclesEvidence C) :
    MilankovitchCyclesClosed C := by
  exact And.intro E.orbitalParametersClosed E.insolationAnomalyClosed

end ClimateScienceClimateSensitivityFoundationCanonicalLaneLean
end HautevilleHouse