CLASS zcl_fizz_buzz DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-METHODS callcfizzbuzz2
      IMPORTING out TYPE REF TO if_oo_adt_classrun_out.
    CLASS-METHODS callcfizzbuzz


      IMPORTING out TYPE REF TO if_oo_adt_classrun_out.

    INTERFACES if_oo_adt_classrun .
*  PROTECTED SECTION.
*  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_fizz_buzz IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
*    DATA lv_i TYPE i.
*
*    DO 100 TIMES.
*        lv_i = sy-index.
*
*        IF lv_i MOD 3 = 0 AND lv_i MOD  5 = 0.
*            out->write( 'Fizz Buzz' ).
*        ELSEIF lv_i MOD 3 = 0.
*            out->write( 'Fizz' ).
*        ELSEIF lv_i MOD 5 = 0.
*            out->write( 'Buzz' ).
*        ELSE.
*            out->write( 'lv_i' ).
*        ENDIF.
*
*    ENDDO.
*    DATA lv_i TYPE i.
*    DATA lv_result TYPE string.
*    DATA lv_Line TYPE string.
*
*    DO 100 TIMES.
*        lv_i = sy-index.
*
*        IF lv_i MOD 3 = 3 AND lv_i MOD 5 = 5.
*            lv_result = 'Fizz Buzz'.
*        ELSEIF lv_i MOD 3 = 0.
*            lv_result = 'Fizz'.
*        ELSEIF lv_i MOD 5 = 0.
*            lv_result = 'Buzz'.
*        ELSE.
*            lv_result = lv_i.
*        ENDIF.
*
*    " добавим пробел между значениями
*        IF sy-index > 1.
*            out->write( `` ).
*        ENDIF.
*
*        out->write( 'lv_result' ).
*
*        IF lv_i = 1.
*            lv_Line = lv_result.
*        ELSE.
*            lv_Line = |{ lv_Line } { lv_result }|.
*        ENDIF.
*
*    ENDDO.
*
*    out->write( lv_line ).
*    callcfizzbuzz( out ).
    callcfizzbuzz2( out ).
  ENDMETHOD.

  METHOD callcfizzbuzz.

    DATA lv_i TYPE i.
    lv_i = 1.
    DATA lv_fb TYPE i.


    DO 100 TIMES.
      lv_fb = 0.
      DATA lv_callc TYPE d.
      lv_callc = lv_i / 3.
      DATA lv_int TYPE i.
      lv_int = lv_callc.

      IF lv_int * 3 = lv_i.
        out->write( |'Fizz: { lv_i } '| ).
        lv_fb = lv_fb + 1.
      ENDIF.

      lv_callc = lv_i / 5.
      lv_int = lv_callc.

      IF lv_int * 5 = lv_i.
        out->write( |'Buzz: { lv_i }'| ).
        lv_fb = lv_fb + 1.
      ENDIF.

      IF lv_fb = 2.
        out->write( |'FizzBuzz: { lv_i }'| ).
      ENDIF.


      lv_i = lv_i + 1.


    ENDDO.
  ENDMETHOD.


  METHOD callcfizzbuzz2.
    DATA lv_i TYPE i.
    DO 100 TIMES.
      lv_i = sy-index.

      IF  lv_i MOD 3 = 0.
        out->write( |'Fizz: { lv_i } '| ).

      ENDIF.

      IF lv_i MOD 5 = 0.
        out->write( |'Buzz: { lv_i }'| ).

      ENDIF.

      IF ( lv_i MOD 3 = 0 ) AND ( lv_i MOD 5 = 0 ).
        out->write( |'FizzBuzz: { lv_i }'| ).
      ENDIF.





    ENDDO.


  ENDMETHOD.

ENDCLASS.
