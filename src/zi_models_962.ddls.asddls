@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Models view'
@Search.searchable: true
define view entity ZI_MODELS_962 
    as select from zmodels_tbl as Models
    association [1..1] to ZI_OEM_962 as _Oem on $projection.OemID = _Oem.OemID
{
  @Search.defaultSearchElement: true
  @Search.fuzzinessThreshold: 0.8
  @ObjectModel.text.association: '_Oem'
  @Consumption.valueHelpDefinition: [{  
    entity: {
        name: 'ZI_OEM_962',
        element: 'OemID'}
  }]
  key Models.oem_id as OemID,
  
  @Search.defaultSearchElement: true
  @Search.fuzzinessThreshold: 0.8
  key Models.model as Model,
  key Models.grade as Grade,
  key Models.model_year as ModelYear,
  key Models.color as Color,
  Models.vehicle_type as Type,
  Models.number_of_seats as Seats,
  Models.country_built as CountryBuilt,
  Models.city_built as CityBuilt,
  _Oem
}
