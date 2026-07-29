import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateSensitivityFoundationCanonicalLaneLean

structure DansgaardOeschgerEvent where
  eventNumber : ℕ
  temperatureJump : ℝ
  duration : ℝ
  abruptTransitionModeled : Prop
  temperatureJumpClosed : temperatureJump

structure DansgaardOeschgerEventEvidence (E : DansgaardOeschgerEvent) where
  abruptTransitionModeledClosed : E.abruptTransitionModeled
  temperatureJumpClosed : E.temperatureJump

def DansgaardOeschgerEventClosed (E : DansgaardOeschgerEvent) : Prop :=
  E.abruptTransitionModeled ∧ E.temperatureJump

theorem dansgaard_oeschger_event_closed_from_evidence
    (E : DansgaardOeschgerEvent) (Ev : DansgaardOeschgerEventEvidence E) :
    DansgaardOeschgerEventClosed E := by
  exact And.intro Ev.abruptTransitionModeledClosed Ev.temperatureJumpClosed

end ClimateScienceClimateSensitivityFoundationCanonicalLaneLean
end HautevilleHouse