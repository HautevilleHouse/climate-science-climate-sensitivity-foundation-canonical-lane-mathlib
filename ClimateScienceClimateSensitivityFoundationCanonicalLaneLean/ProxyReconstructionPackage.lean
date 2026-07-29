import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateSensitivityFoundationCanonicalLaneLean

structure ProxyReconstructionPackage where
  proxyDataType : String
  calibrationMethod : String
  reconstructionTimescale : ℝ
  reconstructionUncertainty : ℝ
  reconstructionFormulation : Prop

structure ProxyReconstructionEvidence (P : ProxyReconstructionPackage) where
  reconstructionFormulationClosed : P.reconstructionFormulation

def ProxyReconstructionClosed (P : ProxyReconstructionPackage) : Prop :=
  P.reconstructionFormulation

theorem proxy_reconstruction_closed_from_evidence (P : ProxyReconstructionPackage)
    (E : ProxyReconstructionEvidence P) : ProxyReconstructionClosed P :=
  E.reconstructionFormulationClosed

end ClimateScienceClimateSensitivityFoundationCanonicalLaneLean
end HautevilleHouse