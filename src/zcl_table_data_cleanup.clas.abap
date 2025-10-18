CLASS zcl_table_data_cleanup DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_table_data_cleanup IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

      DELETE FROM ZOEM_TBL.
      DELETE FROM ZINVENTORY_TBL.
      DELETE FROM ZMODELS_TBL.
      DELETE FROM ZORDER_TBL.
      out->write( 'deleted' ).
  ENDMETHOD.
ENDCLASS.
