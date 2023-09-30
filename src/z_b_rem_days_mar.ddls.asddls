@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Remaining days'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity z_b_rem_days_mar
  as select from zrent_cars_mar
{
  key matricula as Matricula,
      marca     as Marca,
      case
       when alq_hasta <> cast( '' as abap.dats )
       then dats_days_between( cast( $session.system_date as abap.dats ), alq_hasta)
      end       as Dias
}
