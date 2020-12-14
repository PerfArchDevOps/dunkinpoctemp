view: sales_progrms_d {
  sql_table_name: BAL3.SALES_PROGRMS_D ;;

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
    hidden: yes sql: ${TABLE}.DWH_CREATD_DATETM ;;
  }

  dimension: dwh_shop_brand_id {
    type: number
    hidden: yes sql: ${TABLE}.DWH_SHOP_BRAND_ID ;;
  }

  dimension: dwh_shop_rooftp_id {
    type: number
    hidden: no
    label: "PFCNTR"
    sql: ${TABLE}.DWH_SHOP_ROOFTP_ID ;;
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
    hidden: yes sql: ${TABLE}.DWH_UPDTD_DATETM ;;
  }

  dimension_group: end_date {
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
    hidden: no
    label: "Effective End Date"
    sql: ${TABLE}.END_DATE ;;
  }

  dimension: sales_progrm_name {
    type: string
    hidden: no
    label: "Program Name"
    sql: ${TABLE}.SALES_PROGRM_NAME ;;
  }

  dimension_group: start {
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
    hidden: no
    label: "Effective Start Date"
    sql: ${TABLE}.START_DATE ;;
  }

  dimension: status_ind {
    type: string
    hidden: no
    label: "Program Effective Flag"
    sql: ${TABLE}.STATUS_IND ;;
  }

  measure: count {
    type: count
    drill_fields: [sales_progrm_name]
  }
}
