@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View for orders'
@Search.searchable: true
define root view entity ZC_ORDER_962
    provider contract transactional_query 
    as projection on ZI_ORDER_962 as SalesOrder

{
  @Search.defaultSearchElement: true
  key OrderID,
  
  @Search.defaultSearchElement: true
  @Consumption.valueHelpDefinition: [{  
    entity : {
      name : 'ZC_MODELS_VH_962',
      element : 'OemID'
    },
    useForValidation: true
  }]
  @Search.fuzzinessThreshold: 0.8
  key OemID,
  
  @Consumption.valueHelpDefinition: [{  
    entity : {
      name : 'ZC_MODELS_VH_962',
      element : 'Model'
    },
    useForValidation: true
  }]
  @Search.defaultSearchElement: true
  @Search.fuzzinessThreshold: 0.8
  key Model,
  
  @Consumption.valueHelpDefinition: [{  
    entity : {
      name : 'ZC_MODELS_VH_962',
      element : 'Grade'
    },
    useForValidation: true
  }]
  @Search.defaultSearchElement: true
  @Search.fuzzinessThreshold: 0.6
  key Grade,
  
  @Consumption.valueHelpDefinition: [{  
    entity : {
      name : 'ZC_MODELS_VH_962',
      element : 'ModelYear'
    },
    useForValidation: true
  }]
  @Search.defaultSearchElement: true
  @Search.fuzzinessThreshold: 0.6
  key ModelYear,
  
  @Consumption.valueHelpDefinition: [{  
    entity : {
      name : 'ZC_MODELS_VH_962',
      element : 'Color'
    },
    useForValidation: true
  }]
  @Search.defaultSearchElement: true
  @Search.fuzzinessThreshold: 0.6
  key Color,
  
  OrderDate,
  CustomerID,
  @Semantics.amount.currencyCode : 'CurrencyCode'
  Price,
  CurrencyCode,
  DeliveryDate,
  CreatedBy,
  LastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  LastChangedAt,
  _Oem,
  _Models,
  _Inventory,
  _Customer
}
