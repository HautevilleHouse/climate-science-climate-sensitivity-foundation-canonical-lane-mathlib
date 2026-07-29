import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateSensitivityFoundationCanonicalLaneLean

structure IsotopicPaleothermometry where
  deltaO18 : ℝ
  deltaD : ℝ
  temperatureAnomaly : ℝ
  fractionationEquation : Prop
  temperatureAnomalyClosed : temperatureAnomaly

structure IsotopicPaleothermometryEvidence (I : IsotopicPaleothermometry) where
  fractionationEquationClosed : I.fractionationEquation
  temperatureAnomalyClosed : I.temperatureAnomaly

def IsotopicPaleothermometryClosed (I : IsotopicPaleothermometry) : Prop :=
  I.fractionationEquation ∧ I.temperatureAnomaly

theorem isotopic_paleothermometry_closed_from_evidence
    (I : IsotopicPaleothermometry) (E : IsotopicPaleothermometryEvidence I) :
    IsotopicPaleothermometryClosed I := by
  exact And.intro E.fractionationEquationClosed E.temperatureAnomalyClosed

end ClimateScienceClimateSensitivityFoundationCanonicalLaneLean
end HautevilleHouse