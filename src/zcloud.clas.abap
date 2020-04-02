class ZCLOUD definition
  public
  final
  create public .

public section.

  methods CHECK .
  methods CHECK2 .
protected section.
private section.
ENDCLASS.



CLASS ZCLOUD IMPLEMENTATION.


METHOD check.

  DATA: lv_a TYPE c.
  WRITE: 'Hello World'.

  MOVE 'A' TO lv_a.
ENDMETHOD.


method CHECK2.

data: lv_c type c.

move 'C' to lv_c.
endmethod.
ENDCLASS.
