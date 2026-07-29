import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateSensitivityFoundationCanonicalLaneLean

structure PaleoclimateProxyPackage where
  isotopeRatio : Prop
  iceCoreStratigraphy : Prop
  sedimentLayerSequence : Prop
  orbitalForcing : Prop
  temperatureReconstruction : Prop
  co2Concentration : Prop

structure PaleoclimateProxyEvidence (P : PaleoclimateProxyPackage) where
  isotopeRatioClosed : P.isotopeRatio
  iceCoreStratigraphyClosed : P.iceCoreStratigraphy
  sedimentLayerSequenceClosed : P.sedimentLayerSequence
  orbitalForcingClosed : P.orbitalForcing
  temperatureReconstructionClosed : P.temperatureReconstruction
  co2ConcentrationClosed : P.co2Concentration

def PaleoclimateProxyClosed (P : PaleoclimateProxyPackage) : Prop :=
  P.isotopeRatio ∧ P.iceCoreStratigraphy ∧ P.sedimentLayerSequence ∧
  P.orbitalForcing ∧ P.temperatureReconstruction ∧ P.co2Concentration

theorem paleoclimate_proxy_closed_from_evidence (P : PaleoclimateProxyPackage)
    (Ev : PaleoclimateProxyEvidence P) : PaleoclimateProxyClosed P := by
  exact And.intro Ev.isotopeRatioClosed
    (And.intro Ev.iceCoreStratigraphyClosed
      (And.intro Ev.sedimentLayerSequenceClosed
        (And.intro Ev.orbitalForcingClosed
          (And.intro Ev.temperatureReconstructionClosed Ev.co2ConcentrationClosed))))

end ClimateScienceClimateSensitivityFoundationCanonicalLaneLean
end HautevilleHouse
