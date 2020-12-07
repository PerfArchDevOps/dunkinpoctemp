view: pos_ordr_type_code_d {
  sql_table_name: BAL3.POS_ORDR_TYPE_CODE_D ;;

  label: "Dimension - Order Type"

  dimension: actv_flg {
    type: string
    hidden: yes
    sql: ${TABLE}.ACTV_FLG ;;
  }

  dimension: dwh_creatd_batch_id {
    type: number
    hidden: yes
    sql: ${TABLE}.DWH_CREATD_BATCH_ID ;;
  }

  dimension_group: dwh_creatd_datetm {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    hidden: yes
    sql: ${TABLE}.DWH_CREATD_DATETM ;;
  }

  dimension: dwh_pos_ordr_type_id {
    type: number
    primary_key: yes
    sql: ${TABLE}.DWH_POS_ORDR_TYPE_ID ;;
  }

  dimension: dwh_src_sys_id {
    type: number
    hidden: yes
    sql: ${TABLE}.DWH_SRC_SYS_ID ;;
  }

  dimension_group: dwh_updtd_datetm {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    hidden: yes
    sql: ${TABLE}.DWH_UPDTD_DATETM ;;
  }

  dimension: ordr_type_grp_name {
    type: string
    label: "Online Order Type"
    sql: ${TABLE}.ORDR_TYPE_GRP_NAME ;;
  }

  dimension: dd_on_the_go_ordering_flag {
    type: string
    label: "DD On The Go Ordering Flag"
    sql: case when ${TABLE}.ORDR_TYPE_GRP_NAME  = 'DD On-the-Go Ordering' then 'Y' else 'N' end;;
  }

  dimension: br_online_order_flag {
    type: string
    label: "BR Online Order Flag"
    sql: case when ${TABLE}.ORDR_TYPE_GRP_NAME  = 'BR Online' then 'Y' else 'N' end;;
  }

  dimension: drive_thru_order_flag {
    type: string
    label: "Drive Thru Order Flag"
    sql: case when ${TABLE}.ORDR_TYPE_NAME IN  ('OTG DT','Drive Thru')  then 'Y' else 'N' end;;
  }

  dimension: kiosk_order_flag {
    type: string
    label: "Kiosk Order Flag"
    sql: case when ${TABLE}.ORDR_TYPE_NAME like '%KIOSK%'  then 'Y' else 'N' end;;
  }


   dimension: ordr_type_mastr_name {
    type: string
    hidden: yes
    sql: ${TABLE}.ORDR_TYPE_MASTR_NAME ;;
  }

  dimension: ordr_type_mastr_nbr {
    type: number
    hidden: yes
    sql: ${TABLE}.ORDR_TYPE_MASTR_NBR ;;
  }

  dimension: ordr_type_name {
    type: string
    label: "Order Type Desc"
    sql: ${TABLE}.ORDR_TYPE_NAME ;;
  }

  dimension: pos_ordr_type_src_unq_id {
    type: string
    hidden: yes
    sql: ${TABLE}.POS_ORDR_TYPE_SRC_UNQ_ID ;;
  }

  measure: count {
    type: count
    hidden: yes
    drill_fields: [ordr_type_grp_name, ordr_type_mastr_name, ordr_type_name]
  }
}
