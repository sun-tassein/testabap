# testabap
Abap test

```ABAP
TYPES:
  BEGIN OF check_result,
    result      TYPE result_type,
    failed_keys TYPE /bobf/t_frw_key,
    messages    TYPE /bobf/t_frw_message,
  END OF check_result.

METHODS check_business_partners
  IMPORTING
    business_partners TYPE business_partners
  RETURNING
    VALUE(result)     TYPE check_result.
```

Interface Constans
```ABAP
INTERFACE zif_const_util
  PUBLIC .


  CONSTANTS:
    BEGIN OF c_message_type,
      error   TYPE symsgty VALUE 'E',
      success TYPE symsgty VALUE 'S',
      info    TYPE symsgty VALUE 'I',
      warning TYPE symsgty VALUE 'W',
      abort   TYPE symsgty VALUE 'A',
    END OF c_message_type .

  CONSTANTS:
    BEGIN OF c_sign,
      include TYPE tvarv_sign VALUE 'I',
      exclude TYPE tvarv_sign VALUE 'E',
    END OF c_sign .

  CONSTANTS:
    BEGIN OF c_option,
      equals               TYPE tvarv_opti VALUE 'EQ',
      not_equals           TYPE tvarv_opti VALUE 'NE',
      greater_equal        TYPE tvarv_opti VALUE 'GE',
      greater              TYPE tvarv_opti VALUE 'GT',
      less_equal           TYPE tvarv_opti VALUE 'LE',
      less                 TYPE tvarv_opti VALUE 'LT',
      contains_pattern     TYPE tvarv_opti VALUE 'CP',
      not_contains_pattern TYPE tvarv_opti VALUE 'NP',
      between              TYPE tvarv_opti VALUE 'BT',
      not_between          TYPE tvarv_opti VALUE 'NB',
    END OF c_option .

  CONSTANTS:
    BEGIN OF c_sv_classification,
      object_table TYPE bapi1003_key-objecttable VALUE 'MARA',
      class_number TYPE bapi1003_key-classnum VALUE 'SV',
      class_type   TYPE bapi1003_key-classtype VALUE '001',
    END OF c_sv_classification .

  CONSTANTS:
    c_default_filepath TYPE c LENGTH 3 VALUE 'C:\' ##NO_TEXT.

ENDINTERFACE.
```
