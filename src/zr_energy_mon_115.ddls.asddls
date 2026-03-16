@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZENERGY_MON_115'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_ENERGY_MON_115
  as select from ZENERGY_MON_115
{
  key device_id as DeviceID,
  device_name as DeviceName,
  location as Location,
  energy_used as EnergyUsed,
  unit as Unit,
  status as Status,
  @Semantics.user.createdBy: true
  created_by as CreatedBy,
  created_on as CreatedOn,
  @Semantics.user.lastChangedBy: true
  last_changed_by as LastChangedBy,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt
}
