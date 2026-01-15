CLASS zcl_sss DEFINITION
  PUBLIC

  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-METHODS
      Test1
        IMPORTING
          out TYPE REF TO if_oo_adt_classrun_out.

    INTERFACES if_oo_adt_classrun .

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_sss IMPLEMENTATION.
  METHOD
  Test1.
    out->write( 'samstag' ).
  ENDMETHOD.

  METHOD if_oo_adt_classrun~main.
    DATA The_Date TYPE d VALUE '20260115'.

    out->write( |{ The_Date DATE = USER }| ).
    out->write( 'Каждый день пытайся хоть что то сделать. Необязательно много - сначала очень тяжело что то вспомнить.' ).
    zcl_sss=>Test1( out ).
  ENDMETHOD.
ENDCLASS.
