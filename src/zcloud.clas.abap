class ZCLOUD definition
  public
  final
  create public .

public section.

  methods CHECK .
protected section.
private section.
ENDCLASS.



CLASS ZCLOUD IMPLEMENTATION.


METHOD check.

  DATA: lv_a TYPE c.
  WRITE: 'Hello World'.

  MOVE 'A' TO lv_a.
ENDMETHOD.
ENDCLASS.
