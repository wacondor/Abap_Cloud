CLASS zaca_class_art_001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zaca_class_art_001 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  data: it_art TYPE STANDARD TABLE OF zaca_tab_art.
  it_art = VALUE #(
  ( client = sy-mandt id = 1 descr = 'Libreta'  descr2 = 'Pack Libreta Barcelona Refill'
  color = 'beige'  piezas = 2   stock  = 90
  ulr = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-libretas-9x20-5-barcelona-02_800x.jpg?v=1648007109' )
  ( client = sy-mandt id = 2 descr = 'Lapicero'  descr2 = 'Plumas de Gel .5mm'
  color = 'Azul'  piezas = 1   stock  = 190
  ulr = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-kaco-k-08_800x.jpg?v=1588195995' )
  ( client = sy-mandt id = 3 descr = 'marcadores'  descr2 = 'Stabilo Boss Original Pastel'
  color = 'varios'  piezas = 1   stock  = 150
  ulr = 'https://lalibreteria.mx/cdn/shop/files/la-libreteria-stabiloboss-pastel-gris-polvoriento-03_800x.jpg?v=1788937787' )
  ( client = sy-mandt id = 4 descr = 'Tajador'  descr2 = 'Blackwing Two-Step Long Point Sharpener'
  color = 'diferente'  piezas = 2   stock  = 200
  ulr = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-blackwing-two-step-sharpener-grey-3_800x.jpg?v=1595013391' )
  ).

  INSERT zaca_tab_art from table @it_art.
  if sy-subrc = 0.
  out->write( 'Insert subsesfull' ).
  ELSE.
  out->write( 'Insert wrong' ).
  ENDIF.


  ENDMETHOD.
ENDCLASS.
