class ZCLSALES_ORDER_CREATE definition
  public
  create public .

public section.

  methods CREATE_SALESORDER
    importing
      value(IV_AUART) type any
      value(IV_DZIME) type any
      value(IV_MATNR) type any
      value(IV_MENG) type any
      value(IV_SHIP) type any
      value(IV_SOLD) type any
      value(IV_SPART) type any
      value(IV_VKORG) type any
      value(IV_VTWEG) type any
      value(IV_WERKS) type any .
protected section.
private section.
ENDCLASS.



CLASS ZCLSALES_ORDER_CREATE IMPLEMENTATION.


  method CREATE_SALESORDER.
  " This Code is generated by cloud tool developed by Infosys.
 "        Replace  VBAK-AUART with type Any by cloud tool developed by Infosys INF1055524 on 20200714 094719
 "        Replace  VBAK-VKORG with type Any by cloud tool developed by Infosys INF1055524 on 20200714 094719
 "        Replace  VBAK-VTWEG with type Any by cloud tool developed by Infosys INF1055524 on 20200714 094719
 "        Replace  VBAK-SPART with type Any by cloud tool developed by Infosys INF1055524 on 20200714 094719
 "        Replace  VBAK-KUNNR with type Any by cloud tool developed by Infosys INF1055524 on 20200714 094719
 "        Replace  VBAK-KUNNR with type Any by cloud tool developed by Infosys INF1055524 on 20200714 094719
 "        Replace  MARA-MATNR with type Any by cloud tool developed by Infosys INF1055524 on 20200714 094719
 "        Replace  VBAP-KWMENG with type Any by cloud tool developed by Infosys INF1055524 on 20200714 094719
 "        Replace  ZDDZIEME with type Any by cloud tool developed by Infosys INF1055524 on 20200714 094719
 "        Replace  VBAP-WERKS with type Any by cloud tool developed by Infosys INF1055524 on 20200714 094719

 TRY.
   ADD 10 to iv_meng.
   DATA(lo_rfc_dest) = cl_rfc_destination_provider=>create_by_cloud_destination(
    i_name = |PEH_SYSTEM_RFC|
    i_service_instance_name = |PEH_OUTBOUND|
    ).
   if sy-subrc <> 0.
      data(lv_var) = sy-datum.
      return.
   endif.
   DATA(lv_rfc_dest_name) = lo_rfc_dest->get_destination_name( ).
   CALL FUNCTION 'ZSALES_ORDER_CREATE'
    DESTINATION lv_rfc_dest_name
      EXPORTING
        iv_auart      =   iv_auart
        iv_vkorg      =   iv_vkorg
        iv_vtweg      =   iv_vtweg
        iv_spart      =   iv_spart
        iv_sold       =   iv_sold
        iv_ship       =   iv_ship
        iv_matnr      =   iv_matnr
        iv_meng       =   iv_meng
        iv_dzime      =   iv_dzime
        iv_werks      =   iv_werks
   .
 CATCH cx_root INTO DATA(lx_root).
 ENDTRY .
 " End Of Source by cloud tool by INF1055524 on 20200714 094719
  endmethod.
ENDCLASS.
