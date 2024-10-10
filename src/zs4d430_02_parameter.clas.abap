CLASS zs4d430_02_parameter DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zs4d430_02_parameter IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    SELECT
    FROM /lrn/c_Employee_Par(
      p_target_curr = 'JPY' )
*      p_date = @sy-datum )
    FIELDS employeeid,
               firstname,
               lastname,
               departmentid,

               departmentdescription,
               assistantname,
               \_Department\_head-lastname AS headname,
               MonthlySalaryConverted,
               CurrencyCode,
               CompanyAffiliation

     INTO TABLE @DATA(result).

*     out->write( result ).

  ENDMETHOD.
ENDCLASS.
