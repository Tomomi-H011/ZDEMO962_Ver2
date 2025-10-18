@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Models Value Help'
define view entity ZC_MODELs_VH_962
  as select from ZI_MODELS_962
{
  key OemID,
  key Model,
  key Grade,
  key ModelYear,
  key Color
}
