@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Renting'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
define view entity z_i_renting_mar
  as select from z_b_cars_mar as Cars
  association [1]    to z_b_rem_days_mar     as _RemDays     on Cars.Matricula = _RemDays.Matricula
  association [1]    to z_b_brands_mar       as _Brands      on Cars.Marca = _Brands.Marca
  association [0..*] to z_b_det_customer_mar as _DetCustomer on Cars.Matricula = _DetCustomer.Matricula
{
  key Matricula,
      Marca,
      Modelo,
      Color,
      Motor,
      Potencia,
      Unidad,
      Combustible,
      Consumo,
      FechaFabricacion,
      Puertas,
      @Semantics.amount.currencyCode: 'Moneda'
      Precio,
      Moneda,
      Alquilado,
      Desde,
      Hasta,
      case
        when _RemDays.Dias <= 0               then 0
        when _RemDays.Dias between 1 and 30   then 1
        when _RemDays.Dias between 31 and 100 then 2
        when _RemDays.Dias > 100              then 3
        else 0
      end as TiempoRenta,
      ''  as Estado,
      _Brands.Imagen,
      _DetCustomer
}
