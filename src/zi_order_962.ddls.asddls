
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Order view'
@Metadata.allowExtensions: true


define root view entity ZI_ORDER_962 
    as select from zorder_tbl as SalesOrder
    association [1..1] to ZI_OEM_962 as _Oem 
        on $projection.OemID = _Oem.OemID
    association [1..1] to ZI_MODELS_962 as _Models 
        on $projection.OemID = _Models.OemID
        and $projection.Model = _Models.Model
        and $projection.Grade = _Models.Grade
        and $projection.ModelYear = _Models.ModelYear
        and $projection.Color = _Models.Color
    association [0..*] to ZI_INVENTORY_962 as _Inventory 
        on $projection.OemID = _Inventory.OemID    
        and $projection.Grade = _Inventory.Grade
        and $projection.ModelYear = _Inventory.ModelYear
    association [1..1] to ZI_CUSTOMER_962 as _Customer
        on $projection.CustomerID = _Customer.CustomerID
{
  key SalesOrder.order_id as OrderID,
  key SalesOrder.oem_id as OemID,
  key SalesOrder.model as Model,
  key SalesOrder.grade as Grade,
  key SalesOrder.model_year as ModelYear,
  key SalesOrder.color as Color,
  SalesOrder.order_date as OrderDate,
  SalesOrder.customer_id as CustomerID,
  @Semantics.amount.currencyCode : 'CurrencyCode'
  SalesOrder.price as Price,
  SalesOrder.currency_code as CurrencyCode,
  SalesOrder.delivery_date as DeliveryDate,
  SalesOrder.created_by as CreatedBy,
  SalesOrder.last_changed_by as LastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  SalesOrder.local_last_changed_at as LastChangedAt,
  _Oem,
  _Models,
  _Inventory,
  _Customer
}
