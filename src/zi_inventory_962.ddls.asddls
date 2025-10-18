@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Inventory view'
@Search.searchable: true

define view entity ZI_INVENTORY_962 
    as select from zinventory_tbl as Inventory
    association [1] to ZI_OEM_962 as _Oem on $projection.OemID = _Oem.OemID
    association [1..*] to ZI_MODELS_962 as _Models 
        on $projection.OemID = _Models.OemID
        and $projection.Model      = _Models.Model
        and $projection.Grade      = _Models.Grade
        and $projection.ModelYear = _Models.ModelYear

{
    @Search.defaultSearchElement: true
    @Search.fuzzinessThreshold: 0.8
    @ObjectModel.text.association: '_Oem' 
    @Consumption.valueHelpDefinition: [{  
        entity: {
            name: 'ZI_OEM_962',
            element: 'Oem'}
    }]
    key Inventory.oem_id as OemID,
    
    @Search.defaultSearchElement: true
    @Search.fuzzinessThreshold: 0.8
    @Consumption.valueHelpDefinition: [{ 
        entity: {
        name : 'ZI_MODELS_962',
        element : 'Model'
        }
    }]
    key Inventory.model as Model,
    
    key Inventory.grade as Grade,
    key Inventory.model_year as ModelYear,
    
    @Semantics.amount.currencyCode: 'CurrencyCode'
    Inventory.price as Price,
    
    Inventory.currency_code as CurrencyCode,
    
    Inventory.vehicle_type as Type,
    
    @Semantics.quantity.unitOfMeasure: 'Unit'
    Inventory.vehicles_available as Available,
    
    @Semantics.quantity.unitOfMeasure: 'Unit'
    Inventory.vehicles_ordered as OpenOrder,
    
    Inventory.vehicle_unit as Unit,    
    
    _Oem,
    _Models
    
}
