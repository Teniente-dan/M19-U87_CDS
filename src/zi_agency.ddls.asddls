@AbapCatalog.sqlViewName: 'ZIAGENCY'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'cds agency'
define view zi_Agency as select from /DMO/I_Agency {
    key AgencyID as AgencyID,
    _Country.CountryThreeDigitISOCode as ISOCode,
    
    _Country.CountryThreeLetterISOCode,
    _Country.CountryThreeDigitISOCode,
    
    _Country.CountryCurrency,
    _Country.IndexBasedCurrency,
    _Country.HardCurrency,
    _Country.TaxCalculationProcedure,
    _Country.CountryAlternativeCode
}
