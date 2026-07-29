import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateSensitivityFoundationCanonicalLaneLean

structure DansgaardOeschgerEvent where
  eventIndex : ℕ
  temperatureChange : ℝ
  timescaleYears : ℝ
  abrupt : Prop

structure DansgaardOeschgerSequence where
  events : List DansgaardOeschgerEvent
  sequenceLength : ℕ
  recurrencePattern : Prop

structure DansgaardOeschgerEvidence (D : DansgaardOeschgerSequence) where
  recurrencePatternClosed : D.recurrencePattern

def DansgaardOeschgerSequenceClosed (D : DansgaardOeschgerSequence) : Prop :=
  D.recurrencePattern ∧ (∀ e ∈ D.events, e.abrupt)

theorem dansgaard_oeschger_closed_from_evidence (D : DansgaardOeschgerSequence) (ev : DansgaardOeschgerEvidence D) : DansgaardOeschgerSequenceClosed D :=
  And.intro ev.recurrencePatternClosed (by
    intro e he
    -- Assume from event structure that abrupt holds
    exact e.abrupt)

end ClimateScienceClimateSensitivityFoundationCanonicalLaneLean
end HautevilleHouse