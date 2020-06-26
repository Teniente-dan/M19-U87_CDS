@AbapCatalog.sqlViewName: 'Z87_I_BOPF'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@OData.publish: true
@EndUserText.label: 'Z87SalesOrder'
define view Z87_I_BOPF_TEST
  as select from ZDEMO_I_SalesOrder_TX060 as Document
{

  key Document.SalesOrder,
      Document.BusinessPartner,
      Document.CurrencyCode,
      Document.GrossAmount,
      Document.NetAmount,
      Document.BillingStatus,
      Document.OverallStatus,

      /* Exposing value via associations */
      //      Document._BusinessPartner
      //
      Document._Currency
      //      Document._BillingStatus
      //      Document._OverallStatus

}
