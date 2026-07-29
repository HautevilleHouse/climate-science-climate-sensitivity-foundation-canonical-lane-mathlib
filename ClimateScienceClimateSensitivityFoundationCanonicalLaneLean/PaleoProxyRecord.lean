import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateSensitivityFoundationCanonicalLaneLean

structure PaleoProxyPackage where
  iceCoreData : Prop
  sedimentRecords : Prop
  isotopicPaleothermometry : Prop
  orbitalForcing : Prop
  proxyCalibration : Prop

structure PaleoProxyEvidence (P : PaleoProxyPackage) where
  iceCoreDataClosed : P.iceCoreData
  sedimentRecordsClosed : P.sedimentRecords
  isotopicPaleothermometryClosed : P.isotopicPaleothermometry
  orbitalForcingClosed : P.orbitalForcing
  proxyCalibrationClosed : P.proxyCalibration

def PaleoProxyClosed (P : PaleoProxyPackage) : Prop :=
  P.iceCoreData ∧ P.sedimentRecords ∧ P.isotopicPaleothermometry ∧ P.orbitalForcing ∧ P.proxyCalibration

theorem paleo_proxy_closed_from_evidence (P : PaleoProxyPackage) (Ev : PaleoProxyEvidence P) : PaleoProxyClosed P := by
  exact And.intro Ev.iceCoreDataClosed (And.intro Ev.sedimentRecordsClosed (And.intro Ev.isotopicPaleothermometryClosed (And.intro Ev.orbitalForcingClosed Ev.proxyCalibrationClosed)))

end ClimateScienceClimateSensitivityFoundationCanonicalLaneLean
end HautevilleHouse
