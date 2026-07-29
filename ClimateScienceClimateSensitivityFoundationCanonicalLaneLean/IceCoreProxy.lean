import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateSensitivityFoundationCanonicalLaneLean

structure IceCoreProxyRecord where
  coreDepth : ℝ
  ageModel : ℝ → ℝ
  proxyValue : ℝ
  ageDepthRelationship : Prop
  proxyValueClosed : proxyValue

structure IceCoreProxyEvidence (I : IceCoreProxyRecord) where
  ageDepthRelationshipClosed : I.ageDepthRelationship
  proxyValueClosed : I.proxyValue

def IceCoreProxyClosed (I : IceCoreProxyRecord) : Prop :=
  I.ageDepthRelationship ∧ I.proxyValue

theorem ice_core_proxy_closed_from_evidence
    (I : IceCoreProxyRecord) (E : IceCoreProxyEvidence I) :
    IceCoreProxyClosed I := by
  exact And.intro E.ageDepthRelationshipClosed E.proxyValueClosed

end ClimateScienceClimateSensitivityFoundationCanonicalLaneLean
end HautevilleHouse