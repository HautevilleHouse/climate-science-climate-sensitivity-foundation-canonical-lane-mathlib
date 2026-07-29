import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateScienceClimateSensitivityFoundationCanonicalLaneLean

structure ClimateSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ClimateAdmittedObject where
  space : ClimateSpace
  paleoclimateData : Prop
  energyBalanceModel : Prop
  sensitivityBounds : Prop
  conclusion : sensitivityBounds

structure ClimateEndgameState where
  object : ClimateAdmittedObject

def ClimateWitnessClosed (O : ClimateAdmittedObject) : Prop :=
  O.sensitivityBounds

end ClimateScienceClimateSensitivityFoundationCanonicalLaneLean
end HautevilleHouse
