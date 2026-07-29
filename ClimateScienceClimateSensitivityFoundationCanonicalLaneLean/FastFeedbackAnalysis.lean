import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateSensitivityFoundationCanonicalLaneLean

structure FastFeedbackPackage where
  waterVaporFeedback : Prop
  lapseRateFeedback : Prop
  cloudFeedback : Prop
  surfaceAlbedoFeedback : Prop
  planckResponse : Prop
  netFeedback : planckResponse ∧ (waterVaporFeedback ∨ lapseRateFeedback ∨ cloudFeedback ∨ surfaceAlbedoFeedback)

structure FastFeedbackEvidence (F : FastFeedbackPackage) where
  waterVaporFeedbackClosed : F.waterVaporFeedback
  lapseRateFeedbackClosed : F.lapseRateFeedback
  cloudFeedbackClosed : F.cloudFeedback
  surfaceAlbedoFeedbackClosed : F.surfaceAlbedoFeedback
  planckResponseClosed : F.planckResponse
  netFeedbackClosed : F.netFeedback

def FastFeedbackClosed (F : FastFeedbackPackage) : Prop :=
  F.waterVaporFeedback ∧ F.lapseRateFeedback ∧ F.cloudFeedback ∧ F.surfaceAlbedoFeedback ∧ F.planckResponse ∧ F.netFeedback

theorem fast_feedback_closed_from_evidence (F : FastFeedbackPackage) (Ev : FastFeedbackEvidence F) : FastFeedbackClosed F := by
  exact And.intro Ev.waterVaporFeedbackClosed (And.intro Ev.lapseRateFeedbackClosed (And.intro Ev.cloudFeedbackClosed (And.intro Ev.surfaceAlbedoFeedbackClosed (And.intro Ev.planckResponseClosed Ev.netFeedbackClosed))))

end ClimateScienceClimateSensitivityFoundationCanonicalLaneLean
end HautevilleHouse
