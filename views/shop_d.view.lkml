view: shop_d {
  label: "Dim - Shop"
  sql_table_name: BAL2.SHOP_D ;;

  dimension_group: act_ref {
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
    sql: ${TABLE}.ACT_REF_DATE ;;
  }

  dimension_group: act_rem {
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
    hidden: yes
    datatype: date
    sql: ${TABLE}.ACT_REM_DATE ;;
  }

  dimension: addr1 {
    type: string
    hidden: yes
    sql: ${TABLE}.ADDR1 ;;
  }

  dimension: addr2 {
    type: string
    hidden: yes
    sql: ${TABLE}.ADDR2 ;;
  }

  dimension_group: amnd_ref {
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
    sql: ${TABLE}.AMND_REF_DATE ;;
  }

  dimension_group: amnd_rem {
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
    sql: ${TABLE}.AMND_REM_DATE ;;
  }

  dimension: anchr_pc {
    type: number
    hidden: no
    label: "Anchor PC"
    sql: ${TABLE}.ANCHR_PC ;;
  }

  dimension: anchr_pc_in_char {
    type: string
    hidden: yes
    sql: ${TABLE}.ANCHR_PC_IN_CHAR ;;
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

  dimension: back_case_type {
    type: string
    hidden: yes
    sql: ${TABLE}.BACK_CASE_TYPE ;;
  }

  dimension_group: begin {
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
    sql: ${TABLE}.BEGIN_DATE ;;
  }

  dimension: br_royalty_desc {
    type: string
    hidden: yes
    sql: ${TABLE}.BR_ROYALTY_DESC ;;
  }

  dimension: br_royalty_ind {
    type: string
    hidden: yes
    sql: ${TABLE}.BR_ROYALTY_IND ;;
  }

  dimension: br_sl_bc_pyrmd_sl_bc_name {
    type: string
    hidden: no
    label: "BR Ops Manager"
    sql: ${TABLE}.BR_SL_BC_PYRMD_SL_BC_NAME ;;
  }

  dimension: br_sl_coo_pyrmd_sl_coo_name {
    type: string
    hidden: no
    label: "BR Brand President"
    sql: ${TABLE}.BR_SL_COO_PYRMD_SL_COO_NAME ;;
  }

  dimension: br_sl_gm_pyrmd_sl_gm_name {
    type: string
    hidden: no
    label: "BR Ops Director"
    sql: ${TABLE}.BR_SL_GM_PYRMD_SL_GM_NAME ;;
  }

  dimension: br_sl_sme_pyrmd_sl_sme_name {
    type: string
    hidden: no
    label: "BR Ops Regional Vice President"
    sql: ${TABLE}.BR_SL_SME_PYRMD_SL_SME_NAME ;;
  }

  dimension: br_sl_sr_pyrmd_sl_sr_name {
    type: string
    hidden: yes
    sql: ${TABLE}.BR_SL_SR_PYRMD_SL_SR_NAME ;;
  }

  dimension: br_sl_vp_pyrmd_sl_vp_name {
    type: string
    hidden: no
    label: "BR Ops Vice President"
    sql: ${TABLE}.BR_SL_VP_PYRMD_SL_VP_NAME ;;
  }

  dimension: br_tv_dir_pyrmd_tv_dir_name {
    type: string
    hidden: no
    label: "BR FM Sr Director"
    sql: ${TABLE}.BR_TV_DIR_PYRMD_TV_DIR_NAME ;;
  }

  dimension: br_tv_fmd_pyrmd_tv_fmd_name {
    type: string
    hidden: no
    label: "BR FM Director"
    sql: ${TABLE}.BR_TV_FMD_PYRMD_TV_FMD_NAME ;;
  }

  dimension: br_tv_fmm_pyrmd_tv_fmm_name {
    type: string
    hidden: no
    label: "BR FM Manager"
    sql: ${TABLE}.BR_TV_FMM_PYRMD_TV_FMM_NAME ;;
  }

  dimension: br_tv_pre_pyrmd_tv_pre_name {
    type: string
    hidden: no
    label: "BR FM Vice President"
    sql: ${TABLE}.BR_TV_PRE_PYRMD_TV_PRE_NAME ;;
  }

  dimension: brand_code {
    type: string
    hidden: no
    label: "Brand Code"
    sql: ${TABLE}.BRAND_CODE ;;
  }

  dimension: brand_name {
    type: string
    hidden: no
    label: "Brand Full Name"
    sql: ${TABLE}.BRAND_NAME ;;
  }

  dimension: brand_open_code {
    type: string
    hidden: yes
    sql: ${TABLE}.BRAND_OPEN_CODE ;;
  }

  dimension: brand_open_desc {
    type: string
    hidden: no
    label: "Historical Shop Status"
    sql: ${TABLE}.BRAND_OPEN_DESC ;;
  }

  dimension: camera_cnt {
    type: number
    hidden: yes
    sql: ${TABLE}.CAMERA_CNT ;;
  }

  dimension: class_code {
    type: string
    hidden: no
    label: "Historical Brand Class"
    sql: ${TABLE}.CLASS_CODE ;;
  }

  dimension: class_code_shop {
    type: number
    hidden: yes
    sql: ${TABLE}.CLASS_CODE_SHOP ;;
  }

  dimension: class_desc {
    type: string
    hidden: no
    label: "Historical Brand Class"
    sql:  CASE  WHEN ${TABLE}.CLASS_CODE = '3' THEN 'POST FIRST YEAR' ELSE ${TABLE}.CLASS_DESC END
 ;;
  }

  dimension: class_desc_shop {
    type: string
    hidden: yes
    sql: ${TABLE}.CLASS_DESC_SHOP ;;
  }

  dimension: class_short_desc {
    type: string
    hidden: yes
    sql: ${TABLE}.CLASS_SHORT_DESC ;;
  }

  dimension: class_short_desc_shop {
    type: string
    hidden: yes
    sql: ${TABLE}.CLASS_SHORT_DESC_SHOP ;;
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
    hidden: yes
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
    hidden: no
    label: "Close Date"
    sql: ${TABLE}.CLOSE_DATE ;;
  }

  dimension: close_type_code {
    type: string
    hidden: yes
    sql: ${TABLE}.CLOSE_TYPE_CODE ;;
  }

  dimension: close_type_desc {
    type: string
    hidden: yes
    sql: ${TABLE}.CLOSE_TYPE_DESC ;;
  }

  dimension: cntry {
    type: string
    hidden: no
    label: "Country"
    sql:  CASE  WHEN ${TABLE}.CNTRY = 'PR' THEN 'US' ELSE ${TABLE}.CNTRY END  ;;
  }

  dimension: cntry_id {
    type: string
    hidden: yes
    sql: ${TABLE}.CNTRY_ID ;;
  }

  dimension: cntry_state {
    type: string
    hidden: yes
    sql: ${TABLE}.CNTRY_STATE ;;
  }

  dimension: cntry_state_state {
    type: string
    hidden: yes
    sql: ${TABLE}.CNTRY_STATE_STATE ;;
  }

  dimension: cobrander_code {
    type: string
    hidden: yes
    sql: ${TABLE}.COBRANDER_CODE ;;
  }

  dimension: cobrander_desc {
    type: string
    hidden: no
    label: "Cobrander Desc"
    sql: ${TABLE}.COBRANDER_DESC ;;
  }

  dimension: combo_ind {
    type: string
    hidden: yes
    sql: ${TABLE}.COMBO_IND ;;
  }

  dimension: concpt_desc {
    type: string
    hidden: no
    label: "Current Configuration"
    sql: ${TABLE}.CONCPT_DESC ;;
  }

  dimension_group: contrct_ref {
    type: time
    hidden: yes
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
    sql: ${TABLE}.CONTRCT_REF_DATE ;;
  }

  dimension_group: contrct_rem {
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
    sql: ${TABLE}.CONTRCT_REM_DATE ;;
  }

  dimension: corp_name {
    type: string
    hidden: no
    label: "Corporation"
    sql: ${TABLE}.CORP_NAME ;;
  }

  dimension: county {
    type: string
    hidden: no
    label: "County"
    sql: ${TABLE}.COUNTY ;;
  }

  dimension: creatd_by {
    type: string
    hidden: yes
    sql: ${TABLE}.CREATD_BY ;;
  }

  dimension_group: creatd {
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
    sql: ${TABLE}.CREATD_DATE ;;
  }

  dimension: curbsd_ind {
    type: string
    hidden: no
    label: "Curbside Indicator"
    sql: ${TABLE}.CURBSD_IND ;;
  }

  dimension: curr_flg {
    type: string
    hidden: yes
    sql: ${TABLE}.CURR_FLG ;;
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
    hidden: yes
    sql: ${TABLE}.CURR_OPEN_DATE ;;
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

  dimension_group: cust_first_open_shop {
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
    sql: ${TABLE}.CUST_FIRST_OPEN_SHOP_DATE ;;
  }

  dimension: cust_nbr {
    type: number
    hidden: yes
    sql: ${TABLE}.CUST_NBR ;;
  }

  dimension: cust_ownr_name_1 {
    type: string
    hidden: yes
    sql: ${TABLE}.CUST_OWNR_NAME_1 ;;
  }

  dimension: cust_ownr_name_2 {
    type: string
    hidden: yes
    sql: ${TABLE}.CUST_OWNR_NAME_2 ;;
  }

  dimension: days_opertn {
    type: string
    hidden: yes
    sql: ${TABLE}.DAYS_OPERTN ;;
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

  dimension: dd_sl_bc_pyrmd_sl_bc_name {
    type: string
    hidden: no
    label: "DD Ops Manager"
    sql: ${TABLE}.DD_SL_BC_PYRMD_SL_BC_NAME ;;
  }

  dimension: dd_sl_coo_pyrmd_sl_coo_name {
    type: string
    hidden: no
    label: "DD Brand President"
    sql: ${TABLE}.DD_SL_COO_PYRMD_SL_COO_NAME ;;
  }

  dimension: dd_sl_gm_pyrmd_sl_gm_name {
    type: string
    hidden: no
    label: "DD Ops Director"
    sql: ${TABLE}.DD_SL_GM_PYRMD_SL_GM_NAME ;;
  }

  dimension: dd_sl_sme_pyrmd_sl_sme_name {
    type: string
    hidden: no
    label: "DD Ops Regional Vice President"
    sql: ${TABLE}.DD_SL_SME_PYRMD_SL_SME_NAME ;;
  }

  dimension: dd_sl_sr_pyrmd_sl_sr_name {
    type: string
    hidden: yes
    sql: ${TABLE}.DD_SL_SR_PYRMD_SL_SR_NAME ;;
  }

  dimension: dd_sl_vp_pyrmd_sl_vp_name {
    type: string
    hidden: no
    label: "DD Ops Vice President"
    sql: ${TABLE}.DD_SL_VP_PYRMD_SL_VP_NAME ;;
  }

  dimension: dd_tv_dir_pyrmd_tv_dir_name {
    type: string
    hidden: no
    label: "DD FM Sr Director"
    sql: ${TABLE}.DD_TV_DIR_PYRMD_TV_DIR_NAME ;;
  }

  dimension: dd_tv_fmd_pyrmd_tv_fmd_name {
    type: string
    hidden: no
    label: "DD FM Director"
    sql: ${TABLE}.DD_TV_FMD_PYRMD_TV_FMD_NAME ;;
  }

  dimension: dd_tv_fmm_pyrmd_tv_fmm_name {
    type: string
    hidden: no
    label: "DD FM Director"
    sql: ${TABLE}.DD_TV_FMM_PYRMD_TV_FMM_NAME ;;
  }

  dimension: dd_tv_pre_pyrmd_tv_pre_name {
    type: string
    hidden: no
    label: "DD FM Vice President"
    sql: ${TABLE}.DD_TV_PRE_PYRMD_TV_PRE_NAME ;;
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

  dimension: dma_code {
    type: number
    hidden: no
    label: "DMA Code"
    map_layer_name: dma_layer
    sql: ${TABLE}.DMA ;;
  }

  dimension: dma_long_desc {
    type: string
    hidden: no
    label: "DMA"
    sql: ${TABLE}.DMA_LONG_DESC ;;
  }

  dimension: donut_case_len {
    type: number
    hidden: yes
    sql: ${TABLE}.DONUT_CASE_LEN ;;
  }

  dimension: donut_case_tiers {
    type: number
    hidden: yes
    sql: ${TABLE}.DONUT_CASE_TIERS ;;
  }

  dimension: drive_thru_desc {
    type: string
    hidden: no
    label: "Drive Thru Desc"
    sql: ${TABLE}.DRIVE_THRU_DESC ;;
  }

  dimension: drive_thru_ind {
    type: string
    hidden: no
    label: "Drive Thru Indicator"
    sql: ${TABLE}.DRIVE_THRU_IND ;;
  }

  dimension: dvr_type {
    type: string
    hidden: yes
    sql: ${TABLE}.DVR_TYPE ;;
  }

  dimension: dwh_shop_id {
    type: number
    hidden: yes
    sql: ${TABLE}.DWH_SHOP_ID ;;
  }

  dimension: email_id {
    type: string
    hidden: yes
    sql: ${TABLE}.EMAIL_ID ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}.END_DATE ;;
  }

  dimension: est_gen_ind {
    type: string
    hidden: yes
    sql: ${TABLE}.EST_GEN_IND ;;
  }

  dimension: eul_get_orig_fy_f {
    type: string
    hidden: yes
    sql: ${TABLE}.EUL_GET_ORIG_FY_F ;;
  }

  dimension: flip_flg {
    type: string
    hidden: yes
    sql: ${TABLE}.FLIP_FLG ;;
  }

  dimension: fprs_rating {
    type: string
    hidden: yes
    sql: ${TABLE}.FPRS_RATING ;;
  }

  dimension: fri {
    type: string
    hidden: yes
    sql: ${TABLE}.FRI ;;
  }

  dimension: gss_partcptn_ind {
    type: string
    hidden: yes
    sql: ${TABLE}.GSS_PARTCPTN_IND ;;
  }

  dimension: hours_opertn {
    type: string
    hidden: yes
    sql: ${TABLE}.HOURS_OPERTN ;;
  }

  dimension: image_code {
    type: string
    hidden: yes
    sql: ${TABLE}.IMAGE_CODE ;;
  }

  dimension_group: image {
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
    label: "Image Date"
    sql: ${TABLE}.IMAGE_DATE ;;
  }

  dimension: image_desc {
    type: string
    hidden: no
    label: "Image Desc"
    sql: ${TABLE}.IMAGE_DESC ;;
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

  dimension: land_lse_fyend {
    type: number
    hidden: yes
    sql: ${TABLE}.LAND_LSE_FYEND ;;
  }

  dimension: large_netwrk_name {
    type: string
    hidden: no
    label: "Large Network name"
    sql: ${TABLE}.LARGE_NETWRK_NAME ;;
  }

  dimension: last_updt_by {
    type: string
    hidden: yes
    sql: ${TABLE}.LAST_UPDT_BY ;;
  }

  dimension_group: last_updt {
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
    sql: ${TABLE}.LAST_UPDT_DATE ;;
  }

  dimension: locatn_latitude {
    type: number
    hidden:yes
    label: "Location Latitude"
    sql: ${TABLE}.LOCATN_LATITUDE ;;
  }

  dimension: locatn_longitude {
    type: number
    hidden: yes
    label: "Location Longitude"
    sql: ${TABLE}.LOCATN_LONGITUDE ;;
  }

  dimension: manfctrng_pfcntr {
    type: number
    hidden: no
    label: "Manufacturer PFCNTR"
    sql: ${TABLE}.MANFCTRNG_PFCNTR ;;
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

  dimension: mon {
    type: string
    hidden: yes
    sql: ${TABLE}.MON ;;
  }

  dimension: nbr_drive_thrus {
    type: number
    hidden: yes
    sql: ${TABLE}.NBR_DRIVE_THRUS ;;
  }

  dimension: nbr_of_postrs {
    type: number
    hidden: yes
    sql: ${TABLE}.NBR_OF_POSTRS ;;
  }

  dimension: netwrk_cnt_code {
    type: string
    hidden: yes
    sql: ${TABLE}.NETWRK_CNT_CODE ;;
  }

  dimension: netwrk_name {
    type: string
    hidden: no
    label: "Network Name"
    sql: ${TABLE}.NETWRK_NAME ;;
  }

  dimension: netwrk_ownr_name {
    type: string
    hidden: yes
    sql: ${TABLE}.NETWRK_OWNR_NAME ;;
  }

  dimension: nextgen_ind {
    type: string
    hidden: no
    label: "NextGen Indicator"
    sql: ${TABLE}.NEXTGEN_IND ;;
  }

  dimension: nto_desc {
    type: string
    hidden: yes
    sql: ${TABLE}.NTO_DESC ;;
  }

  dimension: open_brands_desc {
    type: string
    hidden: yes
    sql: ${TABLE}.OPEN_BRANDS_DESC ;;
  }

  dimension: open_brands_stat {
    type: string
    hidden: yes
    sql: ${TABLE}.OPEN_BRANDS_STAT ;;
  }

  dimension: operatnl_code {
    type: string
    hidden: yes
    sql: ${TABLE}.OPERATNL_CODE ;;
  }

  dimension_group: operatnl {
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
    sql: ${TABLE}.OPERATNL_DATE ;;
  }

  dimension: operatnl_desc {
    type: string
    hidden: no
    label: "Oper Desc"
    sql: ${TABLE}.OPERATNL_DESC ;;
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
    hidden: no
    label: "Orig Open Date"
    sql: ${TABLE}.ORIG_OPEN_DATE ;;
  }

  dimension: ownr_name {
    type: string
    hidden: yes
    sql: ${TABLE}.OWNR_NAME ;;
  }

  dimension: pc_city_state {
    type: string
    hidden: yes
    sql: ${TABLE}.PC_CITY_STATE ;;
  }

  dimension: pfcntr {
    type: number
    primary_key: no
    label: "PFTCTR"
    hidden: no
    sql: ${TABLE}.PFCNTR ;;
  }

  dimension: pfcntr_key {
    type: number
    primary_key: yes
    label: "PFTCTR_Key"
    hidden: no
    sql: cast(${TABLE}.PFCNTR  as character(6) || ${TABLE}.DWH_SHOP_ID;;
  }



  dimension: pfcntr_addr1_city_state {
    type: string
    label: "PC Address"
    hidden: no
    sql: ${TABLE}.PFCNTR_ADDR1_CITY_STATE ;;
  }

  dimension: pfcntr_city_state {
    type: string
    hidden: no
    label: "PC City State"
    sql: ${TABLE}.PFCNTR_CITY_STATE ;;
  }

  dimension: pfcntr_in_char {
    type: string
    hidden: yes
    sql: ${TABLE}.PFCNTR_IN_CHAR ;;
  }

  dimension: phone {
    type: string
    hidden: yes
    sql: ${TABLE}.PHONE ;;
  }

  dimension: phone_extnsn {
    type: string
    hidden: yes
    sql: ${TABLE}.PHONE_EXTNSN ;;
  }

  dimension: phone_phone_extnsn {
    type: string
    hidden: yes
    sql: ${TABLE}.PHONE_PHONE_EXTNSN ;;
  }

  dimension: pl_bc_pyrmd_id {
    type: string
    hidden: yes
    sql: ${TABLE}.PL_BC_PYRMD_ID ;;
  }

  dimension: pl_bc_pyrmd_name {
    type: string
    hidden: yes
    sql: ${TABLE}.PL_BC_PYRMD_NAME ;;
  }

  dimension: pl_coo_pyrmd_id {
    type: string
    hidden: yes
    sql: ${TABLE}.PL_COO_PYRMD_ID ;;
  }

  dimension: pl_coo_pyrmd_name {
    type: string
    hidden: yes
    sql: ${TABLE}.PL_COO_PYRMD_NAME ;;
  }

  dimension: pl_gm_pyrmd_id {
    type: string
    hidden: yes
    sql: ${TABLE}.PL_GM_PYRMD_ID ;;
  }

  dimension: pl_gm_pyrmd_name {
    type: string
    hidden: yes
    sql: ${TABLE}.PL_GM_PYRMD_NAME ;;
  }

  dimension: pl_sme_pyrmd_id {
    type: string
    hidden: yes
    sql: ${TABLE}.PL_SME_PYRMD_ID ;;
  }

  dimension: pl_sme_pyrmd_name {
    type: string
    hidden: yes
    sql: ${TABLE}.PL_SME_PYRMD_NAME ;;
  }

  dimension: pl_sr_pyrmd_id {
    type: string
    hidden: yes
    sql: ${TABLE}.PL_SR_PYRMD_ID ;;
  }

  dimension: pl_sr_pyrmd_name {
    type: string
    hidden: yes
    sql: ${TABLE}.PL_SR_PYRMD_NAME ;;
  }

  dimension: pl_vp_pyrmd_id {
    type: string
    hidden: yes
    sql: ${TABLE}.PL_VP_PYRMD_ID ;;
  }

  dimension: pl_vp_pyrmd_name {
    type: string
    hidden: yes
    sql: ${TABLE}.PL_VP_PYRMD_NAME ;;
  }

  dimension: portlnd_flg {
    type: string
    hidden: yes
    sql: ${TABLE}.PORTLND_FLG ;;
  }

  dimension: pos_back_office_ind {
    type: string
    hidden: yes
    sql: ${TABLE}.POS_BACK_OFFICE_IND ;;
  }

  dimension_group: pos_install_dt {
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
    sql: ${TABLE}.POS_INSTALL_DT ;;
  }

  dimension: pos_sample_flg {
    type: string
    hidden: yes
    sql: ${TABLE}.POS_SAMPLE_FLG ;;
  }

  dimension: pos_type {
    type: string
    hidden: no
    label: "POS Type"
    sql: ${TABLE}.POS_TYPE ;;
  }

  dimension_group: radiant_golive {
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
    sql: ${TABLE}.RADIANT_GOLIVE_DATE ;;
  }

  dimension: real_estate_code {
    type: string
    hidden: yes
    sql: ${TABLE}.REAL_ESTATE_CODE ;;
  }

  dimension: real_estate_desc {
    type: string
    hidden: yes
    sql: ${TABLE}.REAL_ESTATE_DESC ;;
  }

  dimension: rep_sales_freq_cd {
    type: string
    hidden: yes
    sql: ${TABLE}.REP_SALES_FREQ_CD ;;
  }

  dimension: retl_sales_ind {
    type: string
    hidden: yes
    sql: ${TABLE}.RETL_SALES_IND ;;
  }

  dimension: rooftp_class_code {
    type: string
    hidden: yes
    sql: ${TABLE}.ROOFTP_CLASS_CODE ;;
  }

  dimension: rooftp_class_desc {
    type: string
    hidden: yes
    sql: ${TABLE}.ROOFTP_CLASS_DESC ;;
  }

  dimension: rpm_brand_desc {
    type: string
    hidden: yes
    sql: ${TABLE}.RPM_BRAND_DESC ;;
  }

  dimension: sat {
    type: string
    hidden: yes
    sql: ${TABLE}.SAT ;;
  }

  dimension: sda_pfcntr {
    type: number
    hidden: yes
    sql: ${TABLE}.SDA_PFCNTR ;;
  }

  dimension: self_serve_ind {
    type: string
    hidden: no
    label: "Self Serve Flag"
    sql: ${TABLE}.SELF_SERVE_IND ;;
  }

  dimension: send_pop_ind {
    type: string
    hidden: yes
    sql: ${TABLE}.SEND_POP_IND ;;
  }

  dimension_group: shop_class_eff_end {
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
    sql: ${TABLE}.SHOP_CLASS_EFF_END_DATE ;;
  }

  dimension_group: shop_class_eff_start {
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
    sql: ${TABLE}.SHOP_CLASS_EFF_START_DATE ;;
  }

  dimension: shop_concpt_key {
    type: number
    hidden: yes
    sql: ${TABLE}.SHOP_CONCPT_KEY ;;
  }

  dimension: shop_locatn_id {
    type: number
    hidden: yes
    sql: ${TABLE}.SHOP_LOCATN_ID ;;
  }

  dimension: shop_lse_fyend {
    type: number
    hidden: yes
    sql: ${TABLE}.SHOP_LSE_FYEND ;;
  }

  dimension: shop_sk {
    type: number
    hidden: yes
    sql: ${TABLE}.SHOP_SK ;;
  }

  dimension: site_rating {
    type: string
    hidden: yes
    sql: ${TABLE}.SITE_RATING ;;
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

  dimension: sl_bc_name {
    type: string
    hidden: no
    label: "Ops Manager Name"
    sql: ${TABLE}.SL_BC_NAME ;;
  }

  dimension: sl_bc_pyrmd {
    type: string
    hidden: yes
    sql: ${TABLE}.SL_BC_PYRMD ;;
  }

  dimension: sl_bc_pyrmd_sl_bc_name {
    type: string
    hidden: no
    label: "Ops Manager"
    sql: ${TABLE}.SL_BC_PYRMD_SL_BC_NAME ;;
  }

  dimension: sl_coo_name {
    type: string
    hidden: no
    label: "Brand President Name"
    sql: ${TABLE}.SL_COO_NAME ;;
  }

  dimension: sl_coo_pyrmd {
    type: string
    hidden: yes
    sql: ${TABLE}.SL_COO_PYRMD ;;
  }

  dimension: sl_coo_pyrmd_sl_coo_name {
    type: string
    hidden: no
    label: "Brand President"
    sql: ${TABLE}.SL_COO_PYRMD_SL_COO_NAME ;;
  }

  dimension: sl_gm_name {
    type: string
    hidden: no
    label: "Ops Director Name"
    sql: ${TABLE}.SL_GM_NAME ;;
  }

  dimension: sl_gm_pyrmd {
    type: string
    hidden: yes
    sql: ${TABLE}.SL_GM_PYRMD ;;
  }

  dimension: sl_gm_pyrmd_sl_gm_name {
    type: string
    hidden: no
    label: "Ops Director"
    sql: ${TABLE}.SL_GM_PYRMD_SL_GM_NAME ;;
  }

  dimension: sl_sme_name {
    type: string
    hidden: no
    label: "Ops Regional Vice President Name"
    sql: ${TABLE}.SL_SME_NAME ;;
  }

  dimension: sl_sme_pyrmd {
    type: string
    hidden: yes
    sql: ${TABLE}.SL_SME_PYRMD ;;
  }

  dimension: sl_sme_pyrmd_sl_sme_name {
    type: string
    hidden: no
    label: "Ops Regional Vice President"
    sql: ${TABLE}.SL_SME_PYRMD_SL_SME_NAME ;;
  }

  dimension: sl_sr_name {
    type: string
    hidden: yes
    sql: ${TABLE}.SL_SR_NAME ;;
  }

  dimension: sl_sr_pyrmd {
    type: string
    hidden: yes
    sql: ${TABLE}.SL_SR_PYRMD ;;
  }

  dimension: sl_sr_pyrmd_sl_sr_name {
    type: string
    hidden: yes
    sql: ${TABLE}.SL_SR_PYRMD_SL_SR_NAME ;;
  }

  dimension: sl_vp_name {
    type: string
    hidden: no
    label: "Ops Vice President Name"
    sql: ${TABLE}.SL_VP_NAME ;;
  }

  dimension: sl_vp_pyrmd {
    type: string
    hidden: yes
    sql: ${TABLE}.SL_VP_PYRMD ;;
  }

  dimension: sl_vp_pyrmd_sl_vp_name {
    type: string
    hidden: no
    label: "Ops Vice President"
    sql: ${TABLE}.SL_VP_PYRMD_SL_VP_NAME ;;
  }

  dimension: sqr_foot_nonretl {
    type: number
    hidden: yes
    sql: ${TABLE}.SQR_FOOT_NONRETL ;;
  }

  dimension: sqr_foot_retl {
    type: number
    hidden: yes
    sql: ${TABLE}.SQR_FOOT_RETL ;;
  }

  dimension: store_xref {
    type: number
    hidden: yes
    sql: ${TABLE}.STORE_XREF ;;
  }

  dimension: storefrnt_width {
    type: number
    hidden: yes
    sql: ${TABLE}.STOREFRNT_WIDTH ;;
  }

  dimension: sub_mrkt_type {
    type: string
    hidden: no
    label: "Sub Market Type"
    sql: ${TABLE}.SUB_MRKT_TYPE ;;
  }

  dimension: sun {
    type: string
    hidden: yes
    sql: ${TABLE}.SUN ;;
  }

  dimension_group: svc_create {
    type: time
    hidden: yes
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
    sql: ${TABLE}.SVC_CREATE_DATE ;;
  }

  dimension: ta_type_name {
    type: string
    hidden: yes
    sql: ${TABLE}.TA_TYPE_NAME ;;
  }

  dimension: ta_type_rating {
    type: string
    hidden: yes
    sql: ${TABLE}.TA_TYPE_RATING ;;
  }

  dimension: thurs {
    type: string
    hidden: yes
    sql: ${TABLE}.THURS ;;
  }

  dimension: tsa_twelve_mth_avg {
    type: number
    hidden: yes
    sql: ${TABLE}.TSA_TWELVE_MTH_AVG ;;
  }

  dimension: tues {
    type: string
    hidden: yes
    sql: ${TABLE}.TUES ;;
  }

  dimension: tv_dir_name {
    type: string
    hidden: yes
    sql: ${TABLE}.TV_DIR_NAME ;;
  }

  dimension: tv_dir_pyrmd {
    type: string
    hidden: yes
    sql: ${TABLE}.TV_DIR_PYRMD ;;
  }

  dimension: tv_dir_pyrmd_tv_dir_name {
    type: string
    hidden: yes
    sql: ${TABLE}.TV_DIR_PYRMD_TV_DIR_NAME ;;
  }

  dimension: tv_fmd_name {
    type: string
    hidden: yes
    sql: ${TABLE}.TV_FMD_NAME ;;
  }

  dimension: tv_fmd_pyrmd {
    type: string
    hidden: yes
    sql: ${TABLE}.TV_FMD_PYRMD ;;
  }

  dimension: tv_fmd_pyrmd_tv_fmd_name {
    type: string
    hidden: yes
    sql: ${TABLE}.TV_FMD_PYRMD_TV_FMD_NAME ;;
  }

  dimension: tv_fmm_name {
    type: string
    hidden: yes
    sql: ${TABLE}.TV_FMM_NAME ;;
  }

  dimension: tv_fmm_pyrmd {
    type: string
    hidden: yes
    sql: ${TABLE}.TV_FMM_PYRMD ;;
  }

  dimension: tv_fmm_pyrmd_tv_fmm_name {
    type: string
    hidden: yes
    sql: ${TABLE}.TV_FMM_PYRMD_TV_FMM_NAME ;;
  }

  dimension: tv_pre_name {
    type: string
    hidden: yes
    sql: ${TABLE}.TV_PRE_NAME ;;
  }

  dimension: tv_pre_pyrmd {
    type: string
    hidden: yes
    sql: ${TABLE}.TV_PRE_PYRMD ;;
  }

  dimension: tv_pre_pyrmd_tv_pre_name {
    type: string
    hidden: yes
    sql: ${TABLE}.TV_PRE_PYRMD_TV_PRE_NAME ;;
  }


  dimension: tvmkt {
    type: number
    hidden: yes
    sql: ${TABLE}.TVMKT ;;
  }

  dimension: tvmkt_desc {
    type: string
    hidden: yes
    sql: ${TABLE}.TVMKT_DESC ;;
  }

  dimension: tvmkt_tvmkt_desc {
    type: string
    hidden: yes
    sql: ${TABLE}.TVMKT_TVMKT_DESC ;;
  }

  dimension: twenty_four_hour_ind {
    type: string
    hidden: no
    label: "Twenty Four Hour Indicator"
    sql: ${TABLE}.TWENTY_FOUR_HOUR_IND ;;
  }

  dimension: using_supply_chain_ind {
    type: string
    hidden: yes
    sql: ${TABLE}.USING_SUPPLY_CHAIN_IND ;;
  }

  dimension: using_wrkfrc_ind {
    type: string
    hidden: yes
    sql: ${TABLE}.USING_WRKFRC_IND ;;
  }

  dimension_group: vlps_install {
    type: time
    hidden: yes
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
    sql: ${TABLE}.VLPS_INSTALL_DATE ;;
  }

  dimension: wed {
    type: string
    hidden: yes
    sql: ${TABLE}.WED ;;
  }

  dimension: wifi {
    type: string
    hidden: yes
    sql: ${TABLE}.WIFI ;;
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
    sql: ${TABLE}.WIFI_EXCPTN_EXPRTN ;;
  }

  dimension: wifi_excptn_reasn {
    type: string
    hidden: yes
    sql: ${TABLE}.WIFI_EXCPTN_REASN ;;
  }

  dimension: wifi_vndr_name {
    type: string
    hidden: yes
    sql: ${TABLE}.WIFI_VNDR_NAME ;;
  }

  dimension: zip1_zip2 {
    type: string
    hidden: yes
    sql: ${TABLE}.ZIP1_ZIP2 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      ownr_name,
      corp_name,
      mgr_last_name,
      mgr_first_name
    ]
  }
}
