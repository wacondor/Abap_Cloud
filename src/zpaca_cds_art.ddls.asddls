@AbapCatalog.sqlViewName: 'ZPACA_VCDS_ART'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Articulos'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view ZPACA_CDS_ART as select from zaca_tab_art
{
    key client as client,
    key id as Id,
    descr as Descr,
    descr2 as Descr2,
    color as Color,
    piezas as Piezas,
    stock as Stock,
    ulr as Url,
    case
    when    stock = 0 then 0
    when    stock  between 1 and 50   then   1
 when    stock  between 50 and 100   then  2
     when    stock > 100   then  3
     else 0
     end as status
}
