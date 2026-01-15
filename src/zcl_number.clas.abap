CLASS zcl_number DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.


    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_number IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA lv_i TYPE i.
    out->write( |Gerade Zahlen von 1 bis 100:| ).
    DO 100 TIMES.

      lv_i = sy-index.

      IF lv_i MOD 2 = 0.
        out->write( lv_i ).
      ENDIF.
    ENDDO.

  ENDMETHOD.
ENDCLASS.
