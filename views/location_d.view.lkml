view: location_d {
  label: "Dim - Location"
  sql_table_name: BAL.LOCATION_D ;;

  dimension: bi_securty_fmd_name {
    type: string
    hidden: yes
    sql: ${TABLE}.BI_SECURTY_FMD_NAME ;;
  }

  dimension: bi_securty_ops_name {
    type: string
    hidden: yes
    sql: ${TABLE}.BI_SECURTY_OPS_NAME ;;
  }

  dimension: dev_region_desc {
    type: string
    hidden: no
    label: "DD Development Region"
    sql: ${TABLE}.DEV_REGION_DESC ;;
  }

  dimension: dma_desc {
    type: string
    hidden: yes
    sql: ${TABLE}.DMA_DESC ;;
  }

  dimension: dma_nbr {
    type: number
    primary_key: yes
    hidden: no
    label: "DMA"
    sql:  CAST (${TABLE}.DMA_NBR AS VARCHAR ( 4 )) || ' ' || ${TABLE}.DMA_DESC
 ;;
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

  dimension: dwh_locatn_dma_id {
    type: number
    hidden: yes
    sql: ${TABLE}.DWH_LOCATN_DMA_ID ;;
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

  measure: count {
    type: count
    drill_fields: [bi_securty_fmd_name, bi_securty_ops_name]
  }
}
