*&---------------------------------------------------------------------*
*& Report ZTEST_ABAPGIT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ztest_abapgit.



SELECT *
  FROM t001w
  INTO TABLE @DATA(itab)
  UP TO 30 ROWS.

IF sy-subrc = 0.
  cl_demo_output=>display( itab ).
ENDIF.
