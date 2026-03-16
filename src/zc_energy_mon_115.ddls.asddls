@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZENERGY_MON_115'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_ENERGY_MON_115
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_ENERGY_MON_115
  association [1..1] to ZR_ENERGY_MON_115 as _BaseEntity on $projection.DEVICEID = _BaseEntity.DEVICEID
{
  key DeviceID,
  DeviceName,
  Location,
  EnergyUsed,
  Unit,
  Status,
  @Semantics: {
    User.Createdby: true
  }
  CreatedBy,
  CreatedOn,
  @Semantics: {
    User.Lastchangedby: true
  }
  LastChangedBy,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  _BaseEntity
}
