CLASS zcl_sss DEFINITION
  PUBLIC

  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
    CLASS-METHODS
      Test1
        IMPORTING
          out TYPE REF TO if_oo_adt_classrun_out.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_sss IMPLEMENTATION.
  METHOD
  Test1.
    out->write( 'samstag' ).
  ENDMETHOD.

  METHOD if_oo_adt_classrun~main.
    out->write( 'Каждый день пытайся хоть что то сделать. Необязательно много - сначала очень тяжело что то вспомнить.' ).
    zcl_sss=>Test1( out ).
  ENDMETHOD.
ENDCLASS.
