view: shop_brand_mastr_d {
  label: "Dim - Shop Brand Master"
  sql_table_name: BAL3.SHOP_BRAND_MASTR_D ;;

  parameter: ops_level {
    label: "Ops Level"
    type: unquoted
    allowed_value: {
      label: "Director"
      value: "sl_gm_pyrmd_name"
    }
    allowed_value: {
      label: "Regional Vice President"
      value: "sl_sme_pyrmd_name"
    }
    allowed_value: {
      label: "Manager"
      value: "sl_bc_pyrmd_name"
    }
  }


  dimension:  col_ops_level{
   label_from_parameter: ops_level
   type: string
    sql: ${TABLE}.{% parameter ops_level %} ;;
  }
  dimension_group: actl_refrbsh {
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
    hidden:yes
    sql: ${TABLE}.ACTL_REFRBSH_DATE ;;
  }

  dimension_group: actl_remdl {
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
    hidden:yes
    sql: ${TABLE}.ACTL_REMDL_DATE ;;
  }

  dimension_group: amnd_refrbsh {
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
    hidden:yes
    sql: ${TABLE}.AMND_REFRBSH_DATE ;;
  }

  dimension_group: amnd_remdl {
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
    hidden:yes
    sql: ${TABLE}.AMND_REMDL_DATE ;;
  }

  dimension: back_case_type_code {
    type: string
    hidden:yes
    sql: ${TABLE}.BACK_CASE_TYPE_CODE ;;
  }

  dimension: br_rylty_desc {
    type: string
    hidden:yes
    sql: ${TABLE}.BR_RYLTY_DESC ;;
  }

  dimension: br_rylty_ind {
    type: string
    hidden:yes
    sql: ${TABLE}.BR_RYLTY_IND ;;
  }

  dimension: brand_code {
    type: string
    hidden:no
    label: "Brand Code"
    sql: ${TABLE}.BRAND_CODE ;;
  }

  dimension: brand_image_code {
    type: string
    hidden:yes
    sql: ${TABLE}.BRAND_IMAGE_CODE ;;
  }

  dimension_group: brand_image {
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
    hidden:no
    label: "Image Date"
    sql: ${TABLE}.BRAND_IMAGE_DATE ;;
  }

  dimension: brand_image_desc {
    type: string
    hidden:no
    label: "Image Desc"
    sql: ${TABLE}.BRAND_IMAGE_DESC ;;
  }

  dimension: brand_name {
    type: string
    hidden:no
    label: "Brand Full Name"
    sql: ${TABLE}.BRAND_NAME ;;
  }

  dimension_group: close_curr_cust {
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
    hidden:yes
    sql: ${TABLE}.CLOSE_CURR_CUST_DATE ;;
  }

  dimension_group: close {
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
    hidden:no
    label: "Close Date"
    sql: ${TABLE}.CLOSE_DATE ;;
  }

  dimension_group: contrct_refrbsh {
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
    hidden:yes
    sql: ${TABLE}.CONTRCT_REFRBSH_DATE ;;
  }

  dimension_group: contrct_remdl {
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
    hidden:yes
    sql: ${TABLE}.CONTRCT_REMDL_DATE ;;
  }

  dimension_group: curbside_go_live {
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
    hidden:no
    label: "Curbside Go Live Date"
    sql: ${TABLE}.CURBSIDE_GO_LIVE_DATE ;;
  }

  dimension: curbside_hrs_fri {
    type: string
    hidden:yes
    sql: ${TABLE}.CURBSIDE_HRS_FRI ;;
  }

  dimension: curbside_hrs_mon {
    type: string
    hidden:yes
    sql: ${TABLE}.CURBSIDE_HRS_MON ;;
  }

  dimension: curbside_hrs_sat {
    type: string
    hidden:yes
    sql: ${TABLE}.CURBSIDE_HRS_SAT ;;
  }

  dimension: curbside_hrs_sun {
    type: string
    hidden:yes
    sql: ${TABLE}.CURBSIDE_HRS_SUN ;;
  }

  dimension: curbside_hrs_thu {
    type: string
    hidden:yes
    sql: ${TABLE}.CURBSIDE_HRS_THU ;;
  }

  dimension: curbside_hrs_tue {
    type: string
    hidden:yes
    sql: ${TABLE}.CURBSIDE_HRS_TUE ;;
  }

  dimension: curbside_hrs_wed {
    type: string
    hidden:yes
    sql: ${TABLE}.CURBSIDE_HRS_WED ;;
  }

  dimension: curbside_ind {
    type: string
    hidden:no
    label: "Curbside Indicator"
    sql: ${TABLE}.CURBSIDE_IND ;;
  }

  dimension: curr_class_code {
    type: string
    hidden:yes
    sql:  ${TABLE}.CURR_CLASS_CODE
 ;;
  }

  dimension: curr_class_desc {
    type: string
    hidden:no
    label: "Current Brand Class"
    sql:  CASE  WHEN ${TABLE}.CURR_CLASS_CODE = '3' THEN 'POST FIRST YEAR' ELSE ${TABLE}.CURR_CLASS_DESC END  ;;
  }

  dimension: curr_class_short_desc {
    type: string
    hidden:yes
    sql: ${TABLE}.CURR_CLASS_SHORT_DESC ;;
  }

  dimension: curr_close_type_code {
    type: string
    hidden:yes
    sql: ${TABLE}.CURR_CLOSE_TYPE_CODE ;;
  }

  dimension: curr_close_type_desc {
    type: string
    hidden:yes
    sql: ${TABLE}.CURR_CLOSE_TYPE_DESC ;;
  }

  dimension: curr_configrtn_desc {
    type: string
    hidden:no
    label: "Current Configuration"
    sql: ${TABLE}.CURR_CONFIGRTN_DESC ;;
  }

  dimension_group: curr_open {
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
    hidden:yes
    sql: ${TABLE}.CURR_OPEN_DATE ;;
  }

  dimension: curr_opertn_stat_code {
    type: string
    hidden:yes
    sql: ${TABLE}.CURR_OPERTN_STAT_CODE ;;
  }

  dimension: curr_opertn_stat_desc {
    type: string
    hidden:no
    label: "Current Shop Status"
    sql: ${TABLE}.CURR_OPERTN_STAT_DESC ;;
  }

  dimension: delivery_hrs_fri {
    type: string
    hidden:yes
    sql: ${TABLE}.DELIVERY_HRS_FRI ;;
  }

  dimension: delivery_hrs_mon {
    type: string
    hidden:yes
    sql: ${TABLE}.DELIVERY_HRS_MON ;;
  }

  dimension: delivery_hrs_sat {
    type: string
    hidden:yes
    sql: ${TABLE}.DELIVERY_HRS_SAT ;;
  }

  dimension: delivery_hrs_sun {
    type: string
    hidden:yes
    sql: ${TABLE}.DELIVERY_HRS_SUN ;;
  }

  dimension: delivery_hrs_thu {
    type: string
    hidden:yes
    sql: ${TABLE}.DELIVERY_HRS_THU ;;
  }

  dimension: delivery_hrs_tue {
    type: string
    hidden:yes
    sql: ${TABLE}.DELIVERY_HRS_TUE ;;
  }

  dimension: delivery_hrs_wed {
    type: string
    hidden:yes
    sql: ${TABLE}.DELIVERY_HRS_WED ;;
  }

  dimension: dine_in_flg {
    type: string
    hidden:no
    label: "Current Dine-In Indicator"
    sql: ${TABLE}.DINE_IN_FLG ;;
  }

  dimension: dine_in_hrs_opertn_fri {
    type: string
    hidden:yes
    sql: ${TABLE}.DINE_IN_HRS_OPERTN_FRI ;;
  }

  dimension: dine_in_hrs_opertn_mon {
    type: string
    hidden:yes
    sql: ${TABLE}.DINE_IN_HRS_OPERTN_MON ;;
  }

  dimension: dine_in_hrs_opertn_sat {
    type: string
    hidden:yes
    sql: ${TABLE}.DINE_IN_HRS_OPERTN_SAT ;;
  }

  dimension: dine_in_hrs_opertn_sun {
    type: string
    hidden:yes
    sql: ${TABLE}.DINE_IN_HRS_OPERTN_SUN ;;
  }

  dimension: dine_in_hrs_opertn_thu {
    type: string
    hidden:yes
    sql: ${TABLE}.DINE_IN_HRS_OPERTN_THU ;;
  }

  dimension: dine_in_hrs_opertn_tue {
    type: string
    hidden:yes
    sql: ${TABLE}.DINE_IN_HRS_OPERTN_TUE ;;
  }

  dimension: dine_in_hrs_opertn_wed {
    type: string
    hidden:yes
    sql: ${TABLE}.DINE_IN_HRS_OPERTN_WED ;;
  }

  dimension: drive_thru_desc {
    type: string
    hidden:no
    label: "Drive Thru Desc"
    sql: ${TABLE}.DRIVE_THRU_DESC ;;
  }

  dimension: drive_thru_ind {
    type: string
    hidden:no
    label: "Drive Thru Indicator"
    sql: ${TABLE}.DRIVE_THRU_IND ;;
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
    hidden:yes
    sql: ${TABLE}.DWH_CREATD_DATETM ;;
  }

  dimension: dwh_shop_brand_id {
    type: number
    primary_key: yes
    hidden:yes
    sql: ${TABLE}.DWH_SHOP_BRAND_ID ;;
  }

  dimension: dwh_shop_rooftp_id {
    type: number
    hidden:yes
    sql: ${TABLE}.DWH_SHOP_ROOFTP_ID ;;
  }

  dimension: dwh_src_sys_id {
    type: number
    hidden:yes
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
    hidden:yes
    sql: ${TABLE}.DWH_UPDTD_DATETM ;;
  }

  dimension_group: estblshd_comp_start {
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
    hidden:no
    label: "Established Comp Start Date"
    sql: ${TABLE}.ESTBLSHD_COMP_START_DATE ;;
  }

  dimension: eul_get_orig_fiscal_year_f_cod {
    type: string
    hidden:yes
    sql: ${TABLE}.EUL_GET_ORIG_FISCAL_YEAR_F_COD ;;
  }

  dimension: fri_sched_desc {
    type: string
    hidden:yes
    sql: ${TABLE}.FRI_SCHED_DESC ;;
  }

  dimension: grbhub_actv_ind {
    type: string
    hidden:yes
    sql: ${TABLE}.GRBHUB_ACTV_IND ;;
  }

  dimension: grbhub_stat {
    type: string
    hidden:yes
    sql: ${TABLE}.GRBHUB_STAT ;;
  }

  dimension: grbhub_stat_code {
    type: string
    hidden:yes
    sql: ${TABLE}.GRBHUB_STAT_CODE ;;
  }

  dimension_group: grbhub_stat {
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
    hidden:yes
    sql: ${TABLE}.GRBHUB_STAT_DATE ;;
  }

  dimension: kiosk_ind {
    type: string
    hidden:no
    label: "Kiosk Status"
    sql: ${TABLE}.KIOSK_IND ;;
  }

  dimension: mon_sched_desc {
    type: string
    hidden:yes
    sql: ${TABLE}.MON_SCHED_DESC ;;
  }

  dimension: opertn_type_code {
    type: string
    hidden:yes
    sql: ${TABLE}.OPERTN_TYPE_CODE ;;
  }

  dimension: opertn_type_desc {
    type: string
    hidden:no
    label: "Oper Desc"
    sql: ${TABLE}.OPERTN_TYPE_DESC ;;
  }

  dimension_group: opertnl {
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
    hidden:yes
    sql: ${TABLE}.OPERTNL_DATE ;;
  }

  dimension_group: orig_open {
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
    hidden:no
    label: "Orig Open Date"
    sql: ${TABLE}.ORIG_OPEN_DATE ;;
  }

  dimension: pos_back_office_ind {
    type: string
    hidden:yes
    sql: ${TABLE}.POS_BACK_OFFICE_IND ;;
  }

  dimension_group: pos_nstl {
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
    hidden:yes
    sql: ${TABLE}.POS_NSTL_DATE ;;
  }

  dimension: pos_sample_flg {
    type: string
    hidden:yes
    sql: ${TABLE}.POS_SAMPLE_FLG ;;
  }

  dimension: pos_type_code {
    type: string
    hidden:no
    label: "POS Type"
    sql: ${TABLE}.POS_TYPE_CODE ;;
  }

  dimension: rep_sales_freq_code {
    type: string
    hidden:yes
    sql: ${TABLE}.REP_SALES_FREQ_CODE ;;
  }

  dimension: retl_sales_ind {
    type: string
    hidden:yes
    sql: ${TABLE}.RETL_SALES_IND ;;
  }

  dimension: rpm_brand_desc {
    type: string
    hidden:yes
    sql: ${TABLE}.RPM_BRAND_DESC ;;
  }

  dimension: sat_sched_desc {
    type: string
    hidden:yes
    sql: ${TABLE}.SAT_SCHED_DESC ;;
  }

  dimension: sda_pfcntr {
    type: number
    hidden:yes
    sql: ${TABLE}.SDA_PFCNTR ;;
  }

  dimension: sl_bc_pyrmd_id_code {
    type: string
    hidden:no
    label: "Ops Manager"
    sql: ${TABLE}.SL_BC_PYRMD_ID_CODE || ' ' || ${TABLE}.SL_BC_PYRMD_NAME
 ;;
  }

  dimension: sl_bc_pyrmd_name {
    type: string
    hidden:no
    label: "Ops Manager Name"
    sql: ${TABLE}.SL_BC_PYRMD_NAME ;;
  }

  dimension: sl_coo_pyrmd_id_code {
    type: string
    hidden: no
    sql: ${TABLE}.SL_COO_PYRMD_ID_CODE || ' ' || ${TABLE}.SL_COO_PYRMD_NAME ;;
  }

  dimension: sl_coo_pyrmd_name {
    type: string
    hidden:no
    label: "Brand President Name"
    sql: ${TABLE}.SL_COO_PYRMD_NAME ;;
  }

  dimension: sl_gm_pyrmd_id_code {
    type: string
    hidden:no
    label: "Ops Director"
    sql: ${TABLE}.SL_GM_PYRMD_ID_CODE || ' ' || ${TABLE}.SL_GM_PYRMD_NAME ;;
  }

  dimension: sl_gm_pyrmd_name {
    type: string
    hidden:no
    label: "Ops Director Name"
    sql: ${TABLE}.SL_GM_PYRMD_NAME ;;
  }

  dimension: sl_sme_pyrmd_id_code {
    type: string
    hidden:no
    label: "Ops Regional Vice President"
    sql: ${TABLE}.SL_SME_PYRMD_ID_CODE || ' ' || ${TABLE}.SL_SME_PYRMD_NAME;;
  }

  dimension: sl_sme_pyrmd_name {
    type: string
    hidden: no
    label: "Ops Regional Vice President Name"
    sql: ${TABLE}.SL_SME_PYRMD_NAME ;;
  }

  dimension: sl_sr_pyrmd_id_code {
    type: string
    hidden:yes
    sql: ${TABLE}.SL_SR_PYRMD_ID_CODE ;;
  }

  dimension: sl_sr_pyrmd_name {
    type: string
    hidden:yes
    sql: ${TABLE}.SL_SR_PYRMD_NAME ;;
  }

  dimension: sl_vp_pyrmd_id_code {
    type: string
    hidden:no
    label: "Ops Vice President"
    sql:${TABLE}.SL_VP_PYRMD_ID_CODE || ' ' || ${TABLE}.SL_VP_PYRMD_NAME  ;;
  }

  dimension: sl_vp_pyrmd_name {
    type: string
    hidden:no
    label: "Ops Vice President Name"
    sql: ${TABLE}.SL_VP_PYRMD_NAME ;;
  }

  dimension: sub_mrkt_type_name {
    type: string
    hidden:no
    label: "Sub Market Type"
    sql: ${TABLE}.SUB_MRKT_TYPE_NAME ;;
  }

  dimension: sun_sched_desc {
    type: string
    hidden:yes
    sql: ${TABLE}.SUN_SCHED_DESC ;;
  }

  dimension: thurs_sched_desc {
    type: string
    hidden:yes
    sql: ${TABLE}.THURS_SCHED_DESC ;;
  }

  dimension: tues_sched_desc {
    type: string
    hidden:yes
    sql: ${TABLE}.TUES_SCHED_DESC ;;
  }

  dimension: tv_dir_pyrmd_id_code {
    type: string
    hidden:yes
    sql: ${TABLE}.TV_DIR_PYRMD_ID_CODE ;;
  }

  dimension: tv_dir_pyrmd_name {
    type: string
    hidden:yes
    sql: ${TABLE}.TV_DIR_PYRMD_NAME ;;
  }

  dimension: tv_fmd_pyrmd_id_code {
    type: string
    hidden:yes
    sql: ${TABLE}.TV_FMD_PYRMD_ID_CODE ;;
  }

  dimension: tv_fmd_pyrmd_name {
    type: string
    hidden:yes
    sql: ${TABLE}.TV_FMD_PYRMD_NAME ;;
  }

  dimension: tv_fmm_pyrmd_id_code {
    type: string
    hidden:yes
    sql: ${TABLE}.TV_FMM_PYRMD_ID_CODE ;;
  }

  dimension: tv_fmm_pyrmd_name {
    type: string
    hidden:yes
    sql: ${TABLE}.TV_FMM_PYRMD_NAME ;;
  }

  dimension: tv_pre_pyrmd_id_code {
    type: string
    hidden:yes
    sql: ${TABLE}.TV_PRE_PYRMD_ID_CODE ;;
  }

  dimension: tv_pre_pyrmd_name {
    type: string
    hidden:yes
    sql: ${TABLE}.TV_PRE_PYRMD_NAME ;;
  }

  dimension: twenty_four_hour_ind {
    type: string
    hidden:no
    label: "Twenty Four Hour Indicator"
    sql: ${TABLE}.TWENTY_FOUR_HOUR_IND ;;
  }

  dimension: using_supply_chain_ind {
    type: string
    hidden:yes
    sql: ${TABLE}.USING_SUPPLY_CHAIN_IND ;;
  }

  dimension: using_workforce_ind {
    type: string
    hidden:yes
    sql: ${TABLE}.USING_WORKFORCE_IND ;;
  }

  dimension: walk_in_flg {
    type: string
    hidden:no
    label: "Current Walk-In Indicator"
    sql: ${TABLE}.WALK_IN_FLG ;;
  }

  dimension: wed_sched_desc {
    type: string
    hidden:yes
    sql: ${TABLE}.WED_SCHED_DESC ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      sub_mrkt_type_name,
      sl_bc_pyrmd_name,
      sl_gm_pyrmd_name,
      sl_sme_pyrmd_name,
      sl_sr_pyrmd_name,
      sl_vp_pyrmd_name,
      sl_coo_pyrmd_name,
      tv_fmm_pyrmd_name,
      tv_fmd_pyrmd_name,
      tv_dir_pyrmd_name,
      tv_pre_pyrmd_name,
      brand_name
    ]
  }
}
