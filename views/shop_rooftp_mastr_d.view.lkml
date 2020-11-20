view: shop_rooftp_mastr_d {
  sql_table_name: BAL3.SHOP_ROOFTP_MASTR_D ;;

  dimension: anchr_pfcntr {
    type: number
    hidden: no
    label: "Anchor PC"
    sql: ${TABLE}.ANCHR_PFCNTR ;;
  }

  dimension: apod_ind {
    type: string
    hidden: no
    label: "APOD Flag"
    sql: ${TABLE}.APOD_IND ;;
  }

  dimension: autofire_ind {
    type: string
    hidden: no
    label: "Auto-Fire Indicator"
    sql: ${TABLE}.AUTOFIRE_IND ;;
  }

  dimension: br_ext_menu_board_desc {
    type: string
    hidden: no
    label: "BR External Menu Board"
    sql: ${TABLE}.BR_EXT_MENU_BOARD_DESC ;;
  }

  dimension: br_int_menu_board_desc {
    type: string
    hidden: no
    label: "BR Internal Menu Board"
    sql: ${TABLE}.BR_INT_MENU_BOARD_DESC ;;
  }

  dimension: br_sl_bc_pyrmd_name {
    type: string
    hidden: no
    label: "BR Ops Manager"
    sql: ${TABLE}.BR_SL_BC_PYRMD_NAME ;;
  }

  dimension: br_sl_coo_pyrmd_name {
    hidden: no
    label: "BR Brand President"
    type: string
    sql: ${TABLE}.BR_SL_COO_PYRMD_NAME ;;
  }

  dimension: br_sl_gm_pyrmd_name {
    type: string
    hidden: no
    label: "BR Ops Director"
    sql: ${TABLE}.BR_SL_GM_PYRMD_NAME ;;
  }

  dimension: br_sl_sme_pyrmd_name {
    type: string
    hidden: no
    label: "BR Ops Regional Vice President"
    sql: ${TABLE}.BR_SL_SME_PYRMD_NAME ;;
  }

  dimension: br_sl_sr_pyrmd_name {
    type: string
    hidden: yes
    sql: ${TABLE}.BR_SL_SR_PYRMD_NAME ;;
  }

  dimension: br_sl_vp_pyrmd_name {
    type: string
    hidden: no
    label: "BR Ops Vice President"
    sql: ${TABLE}.BR_SL_VP_PYRMD_NAME ;;
  }

  dimension: br_tv_dir_pyrmd_name {
    type: string
    hidden: no
    label: "BR FM Sr Director"
    sql: ${TABLE}.BR_TV_DIR_PYRMD_NAME ;;
  }

  dimension: br_tv_fmd_pyrmd_name {
    type: string
    hidden: no
    label: "BR FM Director"
    sql: ${TABLE}.BR_TV_FMD_PYRMD_NAME ;;
  }

  dimension: br_tv_fmm_pyrmd_name {
    type: string
    hidden: no
    label: "BR FM Manager"
    sql: ${TABLE}.BR_TV_FMM_PYRMD_NAME ;;
  }

  dimension: br_tv_pre_pyrmd_name {
    type: string
    hidden: no
    label: "BR FM Vice President"
    sql: ${TABLE}.BR_TV_PRE_PYRMD_NAME ;;
  }

  dimension: city_name {
    type: string
    hidden: no
    label: "City"
    sql: ${TABLE}.CITY_NAME ;;
  }

  dimension: pc_address {
    type: string
    hidden: no
    label: "PC Address"
    sql:  CAST (${TABLE}.PFCNTR AS CHARACTER ( 6 )) || ' ' || ${TABLE}.LINE_1_ADDR || ' ' || ${TABLE}.CITY_NAME || ' ' || ${TABLE}.STATE_CODE
 ;;
  }

  dimension: pc_city_state {
    type: string
    hidden: no
    label: "PC Address"
    sql:   CAST (${TABLE}.PFCNTR AS CHARACTER ( 6 )) || ' ' || ${TABLE}.CITY_NAME || ' ' || ${TABLE}.STATE_CODE

      ;;
  }

  dimension: cntry_code {
    type: string
    hidden: no
    label: "Country"
    sql:  CASE  WHEN ${TABLE}.CNTRY_CODE IN ('PR', 'PUR', 'US', 'USA') THEN 'US' WHEN ${TABLE}.CNTRY_CODE IN ('CA', 'CAN') THEN 'CA' ELSE ${TABLE}.CNTRY_CODE END
 ;;
  }

  dimension: cntry_id_code {
    type: string
    hidden: yes
    sql: ${TABLE}.CNTRY_ID_CODE ;;
  }

  dimension: cntry_name {
    type: string
    hidden: yes
    sql: ${TABLE}.CNTRY_NAME ;;
  }

  dimension: cnty_name {
    hidden: no
    label: "County"
    type: string
    sql: ${TABLE}.CNTY_NAME ;;
  }

  dimension: co_brander_code {
    type: string
    hidden: yes
    sql: ${TABLE}.CO_BRANDER_CODE ;;
  }

  dimension: co_brander_desc {
    type: string
    hidden: no
    label: "Cobrander Desc"
    sql: ${TABLE}.CO_BRANDER_DESC ;;
  }

  dimension: combo_ind {
    type: string
    hidden: yes
    sql: ${TABLE}.COMBO_IND ;;
  }

  dimension: corp_name {
    type: string
    hidden: no
    label: "Corporation"
    sql: ${TABLE}.CORP_NAME ;;
  }

  dimension: cust_accnt_nbr {
    type: number
    hidden: yes
    sql: ${TABLE}.CUST_ACCNT_NBR ;;
  }

  dimension_group: cust_first_open {
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
    sql: ${TABLE}.CUST_FIRST_OPEN_DATE ;;
  }

  dimension: cust_nbr {
    type: number
    hidden: yes
    sql: ${TABLE}.CUST_NBR ;;
  }

  dimension: dcp_code {
    type: string
    hidden: yes
    sql: ${TABLE}.DCP_CODE ;;
  }

  dimension: dcp_desc {
    type: string
    hidden: no
    label: "DCP Desc"
    sql: ${TABLE}.DCP_DESC ;;
  }

  dimension: dd_ext_menu_board_nbr {
    type: number
    hidden: yes
    sql: ${TABLE}.DD_EXT_MENU_BOARD_NBR ;;
  }

  dimension: dd_int_menu_board_desc {
    type: string
    hidden: no
    label: "DD Internal Meny Board"
    sql: ${TABLE}.DD_INT_MENU_BOARD_DESC ;;
  }

  dimension: dd_sl_bc_pyrmd_name {
    type: string
    hidden: no
    label: "DD Ops Manager"
    sql: ${TABLE}.DD_SL_BC_PYRMD_NAME ;;
  }

  dimension: dd_sl_coo_pyrmd_name {
    type: string
    hidden: no
    label: "DD Brand President"
    sql: ${TABLE}.DD_SL_COO_PYRMD_NAME ;;
  }

  dimension: dd_sl_gm_pyrmd_name {
    type: string
    hidden: no
    label: "DD Ops Director"
    sql: ${TABLE}.DD_SL_GM_PYRMD_NAME ;;
  }

  dimension: dd_sl_sme_pyrmd_name {
    type: string
    hidden: no
    label: "DD Ops Regional Vice President"
    sql: ${TABLE}.DD_SL_SME_PYRMD_NAME ;;
  }

  dimension: dd_sl_sr_pyrmd_name {
    type: string
    hidden: yes
    sql: ${TABLE}.DD_SL_SR_PYRMD_NAME ;;
  }

  dimension: dd_sl_vp_pyrmd_name {
    type: string
    hidden: no
    label: "DD Ops Vice President"
    sql: ${TABLE}.DD_SL_VP_PYRMD_NAME ;;
  }

  dimension: dd_tv_dir_pyrmd_name {
    type: string
    hidden: no
    label: "DD FM Sr Director"
    sql: ${TABLE}.DD_TV_DIR_PYRMD_NAME ;;
  }

  dimension: dd_tv_fmd_pyrmd_name {
    hidden: no
    label: "DD FM Director"
    type: string
    sql: ${TABLE}.DD_TV_FMD_PYRMD_NAME ;;
  }

  dimension: dd_tv_fmm_pyrmd_name {
    hidden: no
    label: "DD FM Manager"
    type: string
    sql: ${TABLE}.DD_TV_FMM_PYRMD_NAME ;;
  }

  dimension: dd_tv_pre_pyrmd_name {
    type: string
    hidden: no
    label: "DD FM Vice President"
    sql: ${TABLE}.DD_TV_PRE_PYRMD_NAME ;;
  }

  dimension: dev_type_code {
    type: string
    hidden: yes
    sql: ${TABLE}.DEV_TYPE_CODE ;;
  }

  dimension: dev_type_desc {
    type: string
    hidden: no
    label: "Development Type"
    sql: ${TABLE}.DEV_TYPE_DESC ;;
  }

  dimension: dma_desc {
    type: string
    hidden: no
    label: "DMA"
    sql: ${TABLE}.DMA_DESC ;;
  }

  dimension: dma_nbr {
    type: number
    hidden: yes
    sql: ${TABLE}.DMA_NBR ;;
  }

  dimension: doordsh_actv_ind {
    hidden: no
    label: "Dooordash Active Indicator"
    type: string
    sql: ${TABLE}.DOORDSH_ACTV_IND ;;
  }

  dimension_group: doordsh_go_live {
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
    label: "Doordash Go Live Date"
    sql: ${TABLE}.DOORDSH_GO_LIVE_DATE ;;
  }

  dimension: drive_thru_cnt {
    type: number
    hidden: yes
    sql: ${TABLE}.DRIVE_THRU_CNT ;;
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

  dimension: dwh_shop_rooftp_id {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.DWH_SHOP_ROOFTP_ID ;;
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

  dimension: email_addr {
    type: string
    hidden: yes
    sql: ${TABLE}.EMAIL_ADDR ;;
  }

  dimension: geo_zone_code {
    type: string
    hidden: yes
    sql: ${TABLE}.GEO_ZONE_CODE ;;
  }

  dimension: geo_zone_name {
    type: string
    hidden: yes
    sql: ${TABLE}.GEO_ZONE_NAME ;;
  }

  dimension: grbhub_actv_ind {
    type: string
    hidden: no
    label: "Grubhub Active Indicator"
    sql: ${TABLE}.GRBHUB_ACTV_IND ;;
  }

  dimension_group: grbhub_go_live {
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
    label: "Grubhub Go Live Date"
    sql: ${TABLE}.GRBHUB_GO_LIVE_DATE ;;
  }

  dimension: gss_participation_flg {
    type: string
    hidden: yes
    sql: ${TABLE}.GSS_PARTICIPATION_FLG ;;
  }

  dimension: invntry_item_id {
    type: number
    hidden: yes
    sql: ${TABLE}.INVNTRY_ITEM_ID ;;
  }

  dimension: just_baked_ind {
    type: string
    hidden: no
    label: "JBOD Flag"
    sql: ${TABLE}.JUST_BAKED_IND ;;
  }

  dimension: kcup_ind {
    type: string
    hidden: no
    label: "K-Cup Flag"
    sql: ${TABLE}.KCUP_IND ;;
  }

  dimension: large_netwrk_name {
    type: string
    hidden: no
    label: "Large Network Name"
    sql: ${TABLE}.LARGE_NETWRK_NAME ;;
  }

  dimension: line_1_addr {
    type: string
    hidden: yes
    sql: ${TABLE}.LINE_1_ADDR ;;
  }

  dimension: line_2_addr {
    type: string
    hidden: yes
    sql: ${TABLE}.LINE_2_ADDR ;;
  }

  dimension: locatn_latitude_nbr {
    type: location
    hidden: yes
    sql: ${TABLE}.LOCATN_LATITUDE_NBR ;;
  }

  dimension: locatn_longitude_nbr {
    type: location
    hidden: yes
    sql: ${TABLE}.LOCATN_LONGITUDE_NBR ;;
  }

  dimension: manfctr_pfcntr {
    type: number
    hidden: no
    label: "Manufacturer PFCNTR"
    sql: ${TABLE}.MANFCTR_PFCNTR ;;
  }

  dimension: mgr_first_name {
    type: string
    hidden: yes
    sql: ${TABLE}.MGR_FIRST_NAME ;;
  }

  dimension: mgr_last_name {
    type: string
    hidden: yes
    sql: ${TABLE}.MGR_LAST_NAME ;;
  }

  dimension: netwrk_name {
    type: string
    hidden: no
    label: "Network Name"
    sql: ${TABLE}.NETWRK_NAME ;;
  }

  dimension: nextgen_ind {
    type: string
    hidden: no
    label: "NextGen Indicator"
    sql: ${TABLE}.NEXTGEN_IND ;;
  }

  dimension: open_brands_desc {
    type: string
    hidden: yes
    sql: ${TABLE}.OPEN_BRANDS_DESC ;;
  }

  dimension_group: otg_menu_opt {
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
    label: "Menu Option Go Live Date"
    sql: ${TABLE}.OTG_MENU_OPT_DATE ;;
  }

  dimension: otg_menu_opt_flg {
    type: string
    hidden: no
    label: "Menu Option Flag"
    sql: ${TABLE}.OTG_MENU_OPT_FLG ;;
  }

  dimension: ownr_name {
    type: string
    hidden: yes
    sql: ${TABLE}.OWNR_NAME ;;
  }

  dimension: pfcntr {
    type: number
    hidden: yes
    sql: ${TABLE}.PFCNTR ;;
  }

  dimension: phone_nbr {
    type: string
    hidden: yes
    sql: ${TABLE}.PHONE_NBR ;;
  }

  dimension: poster_cnt {
    type: number
    hidden: yes
    sql: ${TABLE}.POSTER_CNT ;;
  }

  dimension: postmts_actv_ind {
    type: string
    hidden: no
    label: "Postmates Active Indicator"
    sql: ${TABLE}.POSTMTS_ACTV_IND ;;
  }

  dimension_group: postmts_go_live {
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
    label: "Postmates Go Live Date"
    sql: ${TABLE}.POSTMTS_GO_LIVE_DATE ;;
  }

  dimension: real_estate_type_code {
    type: string
    hidden: yes
    sql: ${TABLE}.REAL_ESTATE_TYPE_CODE ;;
  }

  dimension: real_estate_type_desc {
    type: string
    hidden: yes
    sql: ${TABLE}.REAL_ESTATE_TYPE_DESC ;;
  }

  dimension: rooftp_actl_configrtn_desc {
    type: string
    hidden: no
    label: "Rooftop Current Configuration"
    sql: ${TABLE}.ROOFTP_ACTL_CONFIGRTN_DESC ;;
  }

  dimension: rooftp_curr_configrtn_desc {
    type: string
    hidden: no
    label: "Rooftop Open Configuration"
    sql: ${TABLE}.ROOFTP_CURR_CONFIGRTN_DESC ;;
  }

  dimension_group: rooftp_orig_open {
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
    label: "Rooftop Original Open Date"
    sql: ${TABLE}.ROOFTP_ORIG_OPEN_DATE ;;
  }

  dimension: self_serve_ind {
    type: string
    hidden: yes
    sql: ${TABLE}.SELF_SERVE_IND ;;
  }

  dimension: send_pop_ind {
    type: string
    hidden: no
    label: "Self Serve Flag"
    sql: ${TABLE}.SEND_POP_IND ;;
  }

  dimension_group: shop_drive_thru_active {
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
    label: "Drive Thru Active Date"
    sql: ${TABLE}.SHOP_DRIVE_THRU_ACTIVE_DATE ;;
  }

  dimension: shop_drive_thru_active_ind {
    type: string
    hidden: no
    label: "Drive Thru Active Indicator"
    sql: ${TABLE}.SHOP_DRIVE_THRU_ACTIVE_IND ;;
  }

  dimension: shop_drive_thru_frctn_less_ind {
    type: string
    hidden: no
    label: "FDT Indicator"
    sql: ${TABLE}.SHOP_DRIVE_THRU_FRCTN_LESS_IND ;;
  }

  dimension: shop_drive_thru_ind {
    type: string
    hidden: yes
    sql: ${TABLE}.SHOP_DRIVE_THRU_IND ;;
  }

  dimension: shop_drive_thru_lanes_nbr {
    type: number
    hidden: yes
    sql: ${TABLE}.SHOP_DRIVE_THRU_LANES_NBR ;;
  }

  dimension: shop_drive_thru_wndw_nbr {
    type: number
    hidden: yes
    sql: ${TABLE}.SHOP_DRIVE_THRU_WNDW_NBR ;;
  }

  dimension: shop_locatn_catgry_desc {
    type: string
    hidden: no
    label: "Urban Category"
    sql: ${TABLE}.SHOP_LOCATN_CATGRY_DESC ;;
  }

  dimension: shop_locatn_sub_catgry_desc {
    type: string
    hidden: no
    label: "Urban Sub Category"
    sql: ${TABLE}.SHOP_LOCATN_SUB_CATGRY_DESC ;;
  }

  dimension: site_type_code {
    type: string
    hidden: yes
    sql: ${TABLE}.SITE_TYPE_CODE ;;
  }

  dimension: site_type_desc {
    type: string
    hidden: no
    label: "Site Type Desc"
    sql: ${TABLE}.SITE_TYPE_DESC ;;
  }

  dimension: sqr_foot_non_retl_area_amt {
    type: number
    hidden: yes
    sql: ${TABLE}.SQR_FOOT_NON_RETL_AREA_AMT ;;
  }

  dimension: sqr_foot_retl_area_amt {
    type: number
    hidden: yes
    sql: ${TABLE}.SQR_FOOT_RETL_AREA_AMT ;;
  }

  dimension: state_code {
    type: string
    hidden: no
    label: "State"
    sql: ${TABLE}.STATE_CODE ;;
  }

  dimension: state_name {
    type: string
    hidden: yes
    sql: ${TABLE}.STATE_NAME ;;
  }

  dimension: storefront_width_amt {
    type: number
    hidden: yes
    sql: ${TABLE}.STOREFRONT_WIDTH_AMT ;;
  }

  dimension_group: svc_create {
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
    sql: ${TABLE}.SVC_CREATE_DATE ;;
  }

  dimension: ta_type_name {
    type: string
    hidden: yes
    sql: ${TABLE}.TA_TYPE_NAME ;;
  }

  dimension: ubreats_actv_ind {
    type: string
    hidden: no
    label: "Ubereats Active Indicator"
    sql: ${TABLE}.UBREATS_ACTV_IND ;;
  }

  dimension_group: ubreats_go_live {
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
    label: "Ubereats Go Live Date"
    sql: ${TABLE}.UBREATS_GO_LIVE_DATE ;;
  }

  dimension_group: wifi_excptn_exprtn {
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
    sql: ${TABLE}.WIFI_EXCPTN_EXPRTN_DATE ;;
  }

  dimension: wifi_excptn_reasn_desc {
    type: string
    hidden: yes
    sql: ${TABLE}.WIFI_EXCPTN_REASN_DESC ;;
  }

  dimension: wifi_name {
    type: string
    hidden: yes
    sql: ${TABLE}.WIFI_NAME ;;
  }

  dimension: zip_1_code {
    type: string
    hidden: no
    label: "Zip"
    sql: ${TABLE}.ZIP_1_CODE ;;
  }

  dimension: zip_2_code {
    type: string
    hidden: yes
    sql: ${TABLE}.ZIP_2_CODE ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      netwrk_name,
      city_name,
      state_name,
      cnty_name,
      cntry_name,
      geo_zone_name,
      ownr_name,
      corp_name,
      mgr_last_name,
      mgr_first_name,
      ta_type_name,
      wifi_name,
      dd_sl_bc_pyrmd_name,
      dd_sl_gm_pyrmd_name,
      dd_sl_sr_pyrmd_name,
      dd_sl_sme_pyrmd_name,
      dd_sl_coo_pyrmd_name,
      dd_sl_vp_pyrmd_name,
      br_sl_gm_pyrmd_name,
      br_sl_bc_pyrmd_name,
      br_sl_sr_pyrmd_name,
      br_sl_sme_pyrmd_name,
      br_sl_vp_pyrmd_name,
      br_sl_coo_pyrmd_name,
      dd_tv_fmm_pyrmd_name,
      dd_tv_fmd_pyrmd_name,
      dd_tv_dir_pyrmd_name,
      dd_tv_pre_pyrmd_name,
      br_tv_fmd_pyrmd_name,
      br_tv_dir_pyrmd_name,
      br_tv_pre_pyrmd_name,
      br_tv_fmm_pyrmd_name,
      large_netwrk_name
    ]
  }
}
