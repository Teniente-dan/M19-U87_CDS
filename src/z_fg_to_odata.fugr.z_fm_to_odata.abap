FUNCTION Z_FM_TO_ODATA.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"----------------------------------------------------------------------
data ls_line TYPE /DMO/I_Carrier.

select CurrencyCode FROM /DMO/I_Carrier
into TABLE @data(lt_curr).


select * from zcds_airport into TABLE @data(lt_air).
select * from z_sql_vn_airport into TABLE @data(lt_air1).

ENDFUNCTION.
