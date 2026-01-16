CLASS zcl_branch DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_branch IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

* Декларации
**********************************************************************
    DATA number1 TYPE i.
    DATA number2 TYPE i.

    DATA result TYPE p LENGTH 8 DECIMALS 2.

    DATA op TYPE c LENGTH 1.

    DATA output TYPE string.

* Вводные значения
**********************************************************************
    number1 = 500.
    number2 = 0.
    op = '/'.

* Расчет
**********************************************************************
    CASE op.
      WHEN '+'.
        result = number1 + number2.
      WHEN '-'.
        result = number1 - number2.
      WHEN '*'.
        result = number1 * number2.
      WHEN '/'.
        TRY.
            result = number1 / number2.
          CATCH cx_sy_zerodivide.
            output = |Деление на ноль не определено|.
        ENDTRY.

      WHEN OTHERS.
        output = |'{ op }' это не допустимый оператор!|.

    ENDCASE.

    IF output IS INITIAL. " no error so far
      output = |{ number1 } { op } { number2 } = { result } |.
    ENDIF.

* Выход
**********************************************************************
    out->write( output ).


  ENDMETHOD.
ENDCLASS.
