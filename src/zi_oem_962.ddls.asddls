
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'OEM View'
@Search.searchable: true

define view entity ZI_OEM_962 
    as select from zoem_tbl as OEM
{
  @Search.defaultSearchElement: true 
  @ObjectModel.text.element: [ 'Name' ]
  key OEM.oem_id as OemID,
  
  @Search.defaultSearchElement: true
  @Search.fuzzinessThreshold: 0.7 
  @Semantics.text: true
  OEM.name as Name,
  
  OEM.oem_web_url as OemWebURL,
  
  @Semantics.imageUrl: true
  OEM.oem_pic_url as OemPicURL,
  
  OEM.currency_code as CurrencyCode
}
