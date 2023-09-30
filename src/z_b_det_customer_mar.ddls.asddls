@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Details Customers'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
define view entity z_b_det_customer_mar
  as select from zrent_cust_mar
{
  key doc_id    as Id,
  key matricula as Matricula,
      nombres   as Nombres,
      apellidos as Apellidos,
      email     as Correo,
      cntr_type as TipoContrato
}
