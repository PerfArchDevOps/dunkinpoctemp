connection: "dbm01p"

# include all the views
include: "/views/**/*.view"

datagroup: dunkin_poc_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

map_layer: dma_layer {
  file: "/maps/dma_master_polygons.topojson"
  property_key: "dma_code"
}

persist_with: dunkin_poc_default_datagroup


# With Override comp date

explore: pos_brand_by_day_dayprt_grp_f {
  sql_always_where: ${pos_brand_by_day_dayprt_grp_f.yoy_sales_day_ind} = 1
  AND ${ovride_comp_day.ovride_comp_day_ind} IS NULL
  AND ${pos_brand_by_day_dayprt_grp_f.transctn_bus_raw} BETWEEN ${shop_brand_mastr_d.estblshd_comp_start_raw} AND sysdate;;

#  AND ${pos_brand_by_day_dayprt_grp_f.transctn_bus_raw} = '12-NOV-2020'


  label: "POS Brand by Day Daypart Group"


  join: dates {
   relationship: many_to_one
   type: inner
  sql_on: ${pos_brand_by_day_dayprt_grp_f.transctn_bus_raw} = ${dates.actual_date_raw} ;;
  }

  join: shop_brand_class_fl {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_brand_by_day_dayprt_grp_f.dwh_shop_brand_id} = ${shop_brand_class_fl.dwh_shop_brand_id}
              AND ${pos_brand_by_day_dayprt_grp_f.dwh_shop_rooftp_id = ${shop_brand_class_fl.dwh_shop_rooftp_id}
              AND ${pos_brand_by_day_dayprt_grp_f.transctn_bus_raw} = ${shop_brand_class_fl.shop_brand_class_raw}  };;
  }

  join: pos_item_brand_d {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_brand_by_day_dayprt_grp_f.dwh_item_brand_id} = ${pos_item_brand_d.dwh_item_brand_id} ;;
  }

  join: shop_brand_mastr_d {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_brand_by_day_dayprt_grp_f.dwh_shop_brand_id} = ${shop_brand_mastr_d.dwh_shop_brand_id} ;;
  }

  join: shop_addtnl_attrbts_d {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_brand_by_day_dayprt_grp_f.dwh_shop_brand_id} = ${shop_addtnl_attrbts_d.dwh_shop_brand_id} ;;
  }

  join: ovride_comp_day {
    relationship: many_to_one
    type: left_outer
    sql_on:${pos_brand_by_day_dayprt_grp_f.transctn_bus_raw} = ${ovride_comp_day.ovride_comp_date_raw}
      AND ${pos_brand_by_day_dayprt_grp_f.dwh_shop_brand_id} = ${ovride_comp_day.dwh_shop_brand_id};;
  }

  join: shop_rooftp_mastr_d {
    relationship: many_to_one
    type: inner
    sql_on: ${shop_brand_mastr_d.dwh_shop_rooftp_id} = ${shop_rooftp_mastr_d.dwh_shop_rooftp_id} ;;
  }

  join: dayprt_grp_d {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_brand_by_day_dayprt_grp_f.dwh_dayprt_grp_id} = ${dayprt_grp_d.dwh_dayprt_grp_id} ;;
  }

  join: pos_ordr_type_code_d {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_brand_by_day_dayprt_grp_f.dwh_pos_ordr_type_id} = ${pos_ordr_type_code_d.dwh_pos_ordr_type_id} ;;
  }

}


# Without Override comp date


explore: all_pos_brand_by_day_dayprt_grp_f {
  from: pos_brand_by_day_dayprt_grp_f

  label: "All POS Brand by Day Daypart Group"

  join: dates {
    relationship: many_to_one
    type: inner
    sql_on: ${all_pos_brand_by_day_dayprt_grp_f.transctn_bus_raw} = ${dates.actual_date_raw} ;;
  }

  join: shop_brand_class_fl {
    relationship: many_to_one
    type: inner
    sql_on: ${all_pos_brand_by_day_dayprt_grp_f.dwh_shop_brand_id} = ${shop_brand_class_fl.dwh_shop_brand_id}
              AND ${all_pos_brand_by_day_dayprt_grp_f.dwh_shop_rooftp_id = ${shop_brand_class_fl.dwh_shop_rooftp_id}
              AND ${all_pos_brand_by_day_dayprt_grp_f.transctn_bus_raw} = ${shop_brand_class_fl.shop_brand_class_raw}  };;
  }

  join: pos_item_brand_d {
    relationship: many_to_one
    type: inner
    sql_on: ${all_pos_brand_by_day_dayprt_grp_f.dwh_item_brand_id} = ${pos_item_brand_d.dwh_item_brand_id} ;;
  }

  join: shop_brand_mastr_d {
    relationship: many_to_one
    type: inner
    sql_on: ${all_pos_brand_by_day_dayprt_grp_f.dwh_shop_brand_id} = ${shop_brand_mastr_d.dwh_shop_brand_id} ;;
  }

  join: shop_addtnl_attrbts_d {
    relationship: many_to_one
    type: inner
    sql_on: ${all_pos_brand_by_day_dayprt_grp_f.dwh_shop_brand_id} = ${shop_addtnl_attrbts_d.dwh_shop_brand_id} ;;
  }

  join: ovride_comp_day {
    relationship: many_to_one
    type: left_outer
    sql_on:${all_pos_brand_by_day_dayprt_grp_f.transctn_bus_raw} = ${ovride_comp_day.ovride_comp_date_raw}
      AND ${all_pos_brand_by_day_dayprt_grp_f.dwh_shop_brand_id} = ${ovride_comp_day.dwh_shop_brand_id};;
  }

  join: shop_rooftp_mastr_d {
    relationship: many_to_one
    type: inner
    sql_on: ${shop_brand_mastr_d.dwh_shop_rooftp_id} = ${shop_rooftp_mastr_d.dwh_shop_rooftp_id} ;;
  }

  join: dayprt_grp_d {
    relationship: many_to_one
    type: inner
    sql_on: ${all_pos_brand_by_day_dayprt_grp_f.dwh_dayprt_grp_id} = ${dayprt_grp_d.dwh_dayprt_grp_id} ;;
  }

  join: pos_ordr_type_code_d {
    relationship: many_to_one
    type: inner
    sql_on: ${all_pos_brand_by_day_dayprt_grp_f.dwh_pos_ordr_type_id} = ${pos_ordr_type_code_d.dwh_pos_ordr_type_id} ;;
  }

}



explore: pos_brand_by_week_dayprt_grp_f {
  sql_always_where: ${pos_brand_by_week_dayprt_grp_f.yoy_sales_week_ind} = 1
  AND ${ovride_comp_week.ovride_comp_week_ind} IS NULL
  AND ${pos_brand_by_week_dayprt_grp_f.transctn_bus_raw} BETWEEN ${shop_brand_mastr_d.estblshd_comp_start_raw} AND sysdate;;
#   AND ${pos_brand_by_week_dayprt_grp_f.transctn_bus_raw} = '12-NOV-2020'

  label: "POS Brand by Week Daypart Group"

  join: dates_week {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_brand_by_week_dayprt_grp_f.transctn_bus_raw} = ${dates_week.week_ending_raw} ;;
  }

  join: pos_item_brand_d {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_brand_by_week_dayprt_grp_f.dwh_item_brand_id} = ${pos_item_brand_d.dwh_item_brand_id};;
  }

  join: shop_brand_class_fl {
relationship: many_to_one
    type: inner
    sql_on: ${pos_brand_by_week_dayprt_grp_f.dwh_shop_brand_id} = ${shop_brand_class_fl.dwh_shop_brand_id}
              AND ${pos_brand_by_week_dayprt_grp_f.dwh_shop_rooftp_id = ${shop_brand_class_fl.dwh_shop_rooftp_id}
              AND ${pos_brand_by_week_dayprt_grp_f.transctn_bus_raw} = ${shop_brand_class_fl.shop_brand_class_raw} ;;
  }
  join: shop_addtnl_attrbts_d {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_brand_by_week_dayprt_grp_f.dwh_shop_brand_id} = ${shop_addtnl_attrbts_d.dwh_shop_brand_id} ;;
  }

  join: shop_brand_mastr_d {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_brand_by_week_dayprt_grp_f.dwh_shop_brand_id} = ${shop_brand_mastr_d.dwh_shop_brand_id} ;;
  }

  join: ovride_comp_week {
    relationship: many_to_one
    type: left_outer
    sql_on: ${pos_brand_by_week_dayprt_grp_f.transctn_bus_raw} = ${ovride_comp_week.ovride_comp_raw}
      AND ${pos_brand_by_week_dayprt_grp_f.dwh_shop_brand_id} = ${ovride_comp_week.dwh_shop_brand_id};;
  }

  join: dayprt_grp_d {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_brand_by_week_dayprt_grp_f.dwh_dayprt_grp_id} = ${dayprt_grp_d.dwh_dayprt_grp_id} ;;
  }

  join: shop_rooftp_mastr_d {
    relationship: many_to_one
    type: inner
    sql_on: ${shop_brand_mastr_d.dwh_shop_rooftp_id} = ${shop_rooftp_mastr_d.dwh_shop_rooftp_id} ;;
  }
}

explore: pos_check_by_day_f {
  sql_always_where: ${pos_check_by_day_f.yoy_sales_day_ind} = 1
  AND ${ovride_comp_day.ovride_comp_day_ind} IS NULL
  AND ${pos_check_by_day_f.transctn_bus_raw} = '12-NOV-2020'
  AND ${pos_check_by_day_f.transctn_bus_raw} BETWEEN ${shop_brand_mastr_d.estblshd_comp_start_raw} AND sysdate;;
  label: "POS Check by Day"
  join: dates {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_check_by_day_f.transctn_bus_raw} = ${dates.actual_date_raw} ;;
  }

  join: shop_addtnl_attrbts_d {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_check_by_day_f.dwh_shop_brand_id} = ${shop_addtnl_attrbts_d.dwh_shop_brand_id} ;;
  }

  join: shop_brand_mastr_d {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_check_by_day_f.dwh_shop_brand_id} = ${shop_brand_mastr_d.dwh_shop_brand_id} ;;
  }

  join: pos_transctn_grpng_d {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_check_by_day_f.dwh_pos_transctn_grpng_id} = ${pos_transctn_grpng_d.dwh_pos_transctn_grpng_id} ;;
  }

  join: ovride_comp_day {
    relationship: many_to_one
    type: left_outer
    sql_on: ${pos_check_by_day_f.transctn_bus_raw} = ${ovride_comp_day.ovride_comp_date_raw}
            AND ${pos_check_by_day_f.dwh_shop_brand_id} = ${ovride_comp_day.dwh_shop_brand_id};;
  }

  join: shop_brand_class_fl {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_check_by_day_f.dwh_shop_brand_id} = ${shop_brand_class_fl.dwh_shop_brand_id}
            AND ${pos_check_by_day_f.dwh_shop_rooftp_id} = ${shop_brand_class_fl.dwh_shop_rooftp_id}
            AND ${pos_check_by_day_f.transctn_bus_raw} = ${shop_brand_class_fl.shop_brand_class_raw};;
  }

  join: shop_rooftp_mastr_d {
    relationship: many_to_one
    type: inner
    sql_on: ${shop_brand_mastr_d.dwh_shop_rooftp_id} = ${shop_rooftp_mastr_d.dwh_shop_rooftp_id} ;;
  }
}

explore: pos_check_by_dayprt_f {
  sql_always_where: ${pos_check_by_dayprt_f.yoy_sales_day_ind} = 1
  AND ${ovride_comp_day.ovride_comp_day_ind} IS NULL
  AND ${pos_check_by_dayprt_f.transctn_bus_raw} = '12-NOV-2020'
  AND ${pos_check_by_dayprt_f.transctn_bus_raw} BETWEEN ${shop_brand_mastr_d.estblshd_comp_start_raw} AND sysdate;;
  label: "POS Check by Daypart"
  join: dates {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_check_by_dayprt_f.transctn_bus_raw} = ${dates.actual_date_raw} ;;
  }

  join: shop_addtnl_attrbts_d {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_check_by_dayprt_f.dwh_shop_brand_id} = ${shop_addtnl_attrbts_d.dwh_shop_brand_id} ;;
  }

  join: shop_brand_mastr_d {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_check_by_dayprt_f.dwh_shop_brand_id} = ${shop_brand_mastr_d.dwh_shop_brand_id} ;;
  }

  join: pos_transctn_grpng_d {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_check_by_dayprt_f.dwh_pos_transctn_grpng_id} = ${pos_transctn_grpng_d.dwh_pos_transctn_grpng_id} ;;
  }

  join: ovride_comp_day {
    relationship: many_to_one
    type: left_outer
    sql_on: ${pos_check_by_dayprt_f.transctn_bus_raw} = ${ovride_comp_day.ovride_comp_date_raw}
      AND ${pos_check_by_dayprt_f.dwh_shop_brand_id} = ${ovride_comp_day.dwh_shop_brand_id};;
  }

  join: shop_brand_class_fl {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_check_by_dayprt_f.dwh_shop_brand_id} = ${shop_brand_class_fl.dwh_shop_brand_id}
            AND ${pos_check_by_dayprt_f.dwh_shop_rooftp_id} = ${shop_brand_class_fl.dwh_shop_rooftp_id}
            AND ${pos_check_by_dayprt_f.transctn_bus_raw} = ${shop_brand_class_fl.shop_brand_class_raw};;
  }

  join: shop_rooftp_mastr_d {
    relationship: many_to_one
    type: inner
    sql_on: ${shop_brand_mastr_d.dwh_shop_rooftp_id} = ${shop_rooftp_mastr_d.dwh_shop_rooftp_id} ;;
  }

  join: dayprt_d {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_check_by_dayprt_f.dwh_dayprt_id} = ${dayprt_d.dwh_dayprt_id} ;;
  }
}

explore: pos_check_by_week_dayprt_f {
  sql_always_where: ${pos_check_by_week_dayprt_f.yoy_sales_week_ind} = 1
  AND ${ovride_comp_week.ovride_comp_week_ind} IS NULL
  AND ${pos_check_by_week_dayprt_f.transctn_bus_raw} = '12-NOV-2020'
  AND ${pos_check_by_week_dayprt_f.transctn_bus_raw} BETWEEN ${shop_brand_mastr_d.estblshd_comp_start_raw} AND sysdate;;
  label: "POS Check by Week Daypart"
  join: dates_week {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_check_by_week_dayprt_f.transctn_bus_raw} = ${dates_week.ly_week_ending_raw} ;;
  }

  join: shop_addtnl_attrbts_d {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_check_by_week_dayprt_f.dwh_shop_brand_id} = ${shop_addtnl_attrbts_d.dwh_shop_brand_id} ;;
  }

  join: shop_brand_mastr_d{
    relationship: many_to_one
    type: inner
    sql_on: ${pos_check_by_week_dayprt_f.dwh_shop_brand_id} = ${shop_brand_mastr_d.dwh_shop_brand_id} ;;
  }

  join: ovride_comp_week {
    relationship: many_to_one
    type: left_outer
    sql_on: ${pos_check_by_week_dayprt_f.transctn_bus_raw} = ${ovride_comp_week.ovride_comp_raw}
            AND ${pos_check_by_week_dayprt_f.dwh_shop_brand_id} = ${ovride_comp_week.dwh_shop_brand_id};;
  }

  join: shop_brand_class_fl {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_check_by_week_dayprt_f.dwh_shop_brand_id} = ${shop_brand_class_fl.dwh_shop_brand_id}
            AND ${pos_check_by_week_dayprt_f.dwh_shop_rooftp_id} = ${shop_brand_class_fl.dwh_shop_rooftp_id}
            AND ${pos_check_by_week_dayprt_f.transctn_bus_raw} = ${shop_brand_class_fl.shop_brand_class_raw};;
  }

  join: pos_transctn_grpng_d {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_check_by_week_dayprt_f.dwh_pos_transctn_grpng_id} = ${pos_transctn_grpng_d.dwh_pos_transctn_grpng_id};;
  }

  join: shop_rooftp_mastr_d {
    relationship: many_to_one
    type: inner
    sql_on: ${shop_brand_mastr_d.dwh_shop_rooftp_id} = ${shop_rooftp_mastr_d.dwh_shop_rooftp_id} ;;
  }

  join: dayprt_d {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_check_by_week_dayprt_f.dwh_dayprt_id} = ${dayprt_d.dwh_dayprt_id} ;;
  }
}

explore: pos_check_by_week_f {
  sql_always_where: ${pos_check_by_week_f.yoy_sales_week_ind} = 1
  AND ${ovride_comp_week.ovride_comp_week_ind} IS NULL
  AND ${pos_check_by_week_f.transctn_bus_raw} BETWEEN ${shop_brand_mastr_d.estblshd_comp_start_raw} AND sysdate;;
#   AND ${pos_check_by_week_f.transctn_bus_raw} = '12-NOV-2020'

  label: "POS Check by Week "

  join: dates_week {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_check_by_week_f.transctn_bus_raw}
    = ${dates_week.week_ending_raw} ;;
  }

  join: shop_addtnl_attrbts_d {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_check_by_week_f.dwh_shop_brand_id} = ${shop_addtnl_attrbts_d.dwh_shop_brand_id} ;;
  }

  join: shop_brand_mastr_d{
    relationship: many_to_one
    type: inner
    sql_on: ${pos_check_by_week_f.dwh_shop_brand_id} = ${shop_brand_mastr_d.dwh_shop_brand_id} ;;
  }

  join: ovride_comp_week {
    relationship: many_to_one
    type: left_outer
    sql_on: ${pos_check_by_week_f.transctn_bus_raw} = ${ovride_comp_week.ovride_comp_raw}
      AND ${pos_check_by_week_f.dwh_shop_brand_id} = ${ovride_comp_week.dwh_shop_brand_id};;
  }

  join: shop_brand_class_fl {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_check_by_week_f.dwh_shop_brand_id} = ${shop_brand_class_fl.dwh_shop_brand_id}
            AND ${pos_check_by_week_f.dwh_shop_rooftp_id} = ${shop_brand_class_fl.dwh_shop_rooftp_id}
            AND ${pos_check_by_week_f.transctn_bus_raw} = ${shop_brand_class_fl.shop_brand_class_raw};;
  }

  join: pos_transctn_grpng_d {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_check_by_week_f.dwh_pos_transctn_grpng_id} = ${pos_transctn_grpng_d.dwh_pos_transctn_grpng_id};;
  }

  join: shop_rooftp_mastr_d {
    relationship: many_to_one
    type: inner
    sql_on: ${shop_brand_mastr_d.dwh_shop_rooftp_id} = ${shop_rooftp_mastr_d.dwh_shop_rooftp_id} ;;
  }

  }

explore: pos_item_by_day_f {
  sql_always_where: ${pos_item_by_day_f.yoy_sales_day_ind} = 1
  AND ${ovride_comp_day.ovride_comp_day_ind} IS NULL
  AND ${pos_item_by_day_f.transctn_bus_raw} BETWEEN ${shop_brand_mastr_d.estblshd_comp_start_raw} AND sysdate;;
  always_filter: {
    filters: [pos_item_by_day_f.transctn_bus_date: "2020-11-12"]
  }
  label: "POS Item By Day"

  join: dates {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_item_by_day_f.transctn_bus_raw} = ${dates.actual_date_raw};;
  }
  join: shop_brand_mastr_d {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_item_by_day_f.dwh_shop_brand_id} = ${shop_brand_mastr_d.dwh_shop_brand_id};;
  }

  join: shop_brand_class_fl {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_item_by_day_f.dwh_shop_brand_id} = ${shop_brand_class_fl.dwh_shop_brand_id}
              AND ${pos_item_by_day_f.dwh_shop_rooftp_id = ${shop_brand_class_fl.dwh_shop_rooftp_id}
              AND ${pos_item_by_day_f.transctn_bus_raw} = ${shop_brand_class_fl.shop_brand_class_raw}  };;
              }

  join: ovride_comp_day {
    relationship: many_to_one
    type: left_outer
    sql_on:${pos_item_by_day_f.transctn_bus_date} = ${ovride_comp_day.ovride_comp_date_date}
            AND ${pos_item_by_day_f.dwh_shop_brand_id} = ${ovride_comp_day.dwh_shop_brand_id};;
  }

  join: shop_addtnl_attrbts_d {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_item_by_day_f.dwh_shop_brand_id} = ${shop_addtnl_attrbts_d.dwh_shop_brand_id} ;;
  }

  join: shop_rooftp_mastr_d {
    relationship: many_to_one
    type: inner
    sql_on: ${shop_brand_mastr_d.dwh_shop_rooftp_id} = ${shop_rooftp_mastr_d.dwh_shop_rooftp_id} ;;
  }
}


explore: pos_item_by_dayprt_f {
  sql_always_where: ${pos_item_by_dayprt_f.yoy_sales_day_ind} = 1
  AND ${ovride_comp_day.ovride_comp_day_ind} IS NULL
  AND ${pos_item_by_dayprt_f.transctn_bus_raw} = '12-NOV-2020'
  AND ${pos_item_by_dayprt_f.transctn_bus_raw} BETWEEN ${shop_brand_mastr_d.estblshd_comp_start_raw} AND sysdate;;
  label: "POS Item by Daypart"

  join: dates {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_item_by_dayprt_f.transctn_bus_raw} = ${dates.actual_date_raw};;
  }

  join: dayprt_d {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_item_by_dayprt_f.dwh_dayprt_id} = ${dayprt_d.dwh_dayprt_id};;
  }

  join: shop_brand_class_fl {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_item_by_dayprt_f.dwh_shop_brand_id} = ${shop_brand_class_fl.dwh_shop_brand_id}
              AND ${pos_item_by_dayprt_f.dwh_shop_rooftp_id = ${shop_brand_class_fl.dwh_shop_rooftp_id}
              AND ${pos_item_by_dayprt_f.transctn_bus_raw} = ${shop_brand_class_fl.shop_brand_class_raw}  };;
  }

  join: pos_menu_item_d {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_item_by_dayprt_f.dwh_pos_menu_item_id} = ${pos_menu_item_d.dwh_pos_menu_item_id};;
  }

  join: shop_brand_mastr_d {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_item_by_dayprt_f.dwh_shop_brand_id} = ${shop_brand_mastr_d.dwh_shop_brand_id};;
  }

  join: shop_addtnl_attrbts_d {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_item_by_dayprt_f.dwh_shop_brand_id} = ${shop_addtnl_attrbts_d.dwh_shop_brand_id} ;;
  }

  join: ovride_comp_day {
    relationship: many_to_one
    type: left_outer
    sql_on:${pos_item_by_dayprt_f.transctn_bus_date} = ${ovride_comp_day.ovride_comp_date_date}
      AND ${pos_item_by_dayprt_f.dwh_shop_brand_id} = ${ovride_comp_day.dwh_shop_brand_id};;
  }
    join: shop_rooftp_mastr_d {
      relationship: many_to_one
      type: inner
      sql_on: ${shop_brand_mastr_d.dwh_shop_rooftp_id} = ${shop_rooftp_mastr_d.dwh_shop_rooftp_id} ;;
  }
}

explore: pos_item_by_week_dayprt_f {
  sql_always_where: ${pos_item_by_week_dayprt_f.yoy_sales_week_ind} = 1
  AND ${ovride_comp_week.ovride_comp_week_ind} IS NULL
  AND ${pos_item_by_week_dayprt_f.transctn_bus_raw} = '12-NOV-2020'
  AND ${pos_item_by_week_dayprt_f.transctn_bus_raw} BETWEEN ${shop_brand_mastr_d.estblshd_comp_start_raw} AND sysdate;;
  label: "POS Item by Week Daypart"

  join: dayprt_d {
  relationship: many_to_one
  type: inner
  sql_on: ${pos_item_by_week_dayprt_f.dwh_dayprt_id} = ${dayprt_d.dwh_dayprt_id} ;;
  }

  join: shop_brand_class_fl {
   relationship: many_to_one
   type: inner
   sql_on: ${pos_item_by_week_dayprt_f.dwh_shop_brand_id} = ${shop_brand_class_fl.dwh_shop_brand_id}
          AND ${pos_item_by_week_dayprt_f.dwh_shop_rooftp_id} = ${shop_brand_class_fl.dwh_shop_rooftp_id}
          AND ${pos_item_by_week_dayprt_f.transctn_bus_raw} = ${shop_brand_class_fl.shop_brand_class_raw};;
  }

  join: dates_week {
    relationship: many_to_one
    type: inner
    sql_on: ${dates_week.week_ending_raw} = ${pos_item_by_week_dayprt_f.transctn_bus_raw};;
  }

  join: shop_brand_mastr_d {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_item_by_week_dayprt_f.dwh_shop_brand_id} = ${shop_brand_mastr_d.dwh_shop_brand_id} ;;
  }

  join: shop_addtnl_attrbts_d {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_item_by_week_dayprt_f.dwh_shop_brand_id} = ${shop_addtnl_attrbts_d.dwh_shop_brand_id} ;;
  }

  join: shop_rooftp_mastr_d {
    relationship: many_to_one
    type: inner
    sql_on: ${shop_brand_mastr_d.dwh_shop_rooftp_id} = ${shop_rooftp_mastr_d.dwh_shop_rooftp_id} ;;
  }

  join: ovride_comp_week {
    relationship: many_to_one
    type: left_outer
    sql_on: ${pos_item_by_week_dayprt_f.transctn_bus_raw} = ${ovride_comp_week.ovride_comp_raw}
            AND ${pos_item_by_week_dayprt_f.dwh_shop_brand_id} = ${ovride_comp_week.dwh_shop_brand_id};;
  }
}


explore: pos_item_by_week_f {
  sql_always_where: ${pos_item_by_week_f.yoy_sales_week_ind} = 1
  AND ${ovride_comp_week.ovride_comp_week_ind} IS NULL
  AND ${pos_item_by_week_f.transctn_bus_raw} = '12-NOV-2020'
  AND ${pos_item_by_week_f.transctn_bus_raw} BETWEEN ${shop_brand_mastr_d.estblshd_comp_start_raw} AND sysdate;;
  label: "POS Item by Week"

  join: dates_week {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_item_by_week_f.transctn_bus_raw} = ${dates_week.week_ending_raw} ;;
  }

  join: ovride_comp_week {
    relationship: many_to_one
    type: left_outer
    sql_on: ${pos_item_by_week_f.transctn_bus_raw} = ${ovride_comp_week.ovride_comp_raw}
            AND ${pos_item_by_week_f.dwh_shop_brand_id} = ${ovride_comp_week.dwh_shop_brand_id};;
  }

  join: shop_brand_class_fl {
   relationship: many_to_one
   type: inner
   sql_on: ${pos_item_by_week_f.dwh_shop_brand_id} = ${shop_brand_class_fl.dwh_shop_brand_id}
          AND ${pos_item_by_week_f.dwh_shop_rooftp_id} = ${shop_brand_class_fl.dwh_shop_rooftp_id}
          AND ${pos_item_by_week_f.transctn_bus_raw} = ${shop_brand_class_fl.shop_brand_class_raw};;
  }

  join: shop_brand_mastr_d {
   relationship: many_to_one
   type: inner
    sql_on: ${pos_item_by_week_f.dwh_shop_brand_id} = ${shop_brand_mastr_d.dwh_shop_brand_id} ;;
  }

  join: shop_addtnl_attrbts_d {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_item_by_week_f.dwh_shop_brand_id} = ${shop_addtnl_attrbts_d.dwh_shop_brand_id};;
  }

  join: shop_rooftp_mastr_d {
    relationship: many_to_one
    type: inner
    sql_on: ${shop_brand_mastr_d.dwh_shop_rooftp_id} = ${shop_rooftp_mastr_d.dwh_shop_rooftp_id} ;;
  }
}

explore: pos_subcat_by_day_dayprt_grp_f{
sql_always_where: ${pos_subcat_by_day_dayprt_grp_f.yoy_sales_day_ind} = 1
                  AND ${ovride_comp_day.ovride_comp_day_ind} IS NULL
                  AND ${pos_subcat_by_day_dayprt_grp_f.transctn_bus_raw} = '12-NOV-2020'
                  AND ${pos_subcat_by_day_dayprt_grp_f.transctn_bus_raw} BETWEEN ${shop_brand_mastr_d.estblshd_comp_start_raw} AND sysdate;;
label: "POS Sub Category by Day Daypart"
  join: dates {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_subcat_by_day_dayprt_grp_f.transctn_bus_raw} = ${dates.actual_date_raw};;
  }
  join: shop_brand_mastr_d {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_subcat_by_day_dayprt_grp_f.dwh_shop_brand_id} = ${shop_brand_mastr_d.dwh_shop_brand_id};;
  }

  join: shop_brand_class_fl {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_subcat_by_day_dayprt_grp_f.dwh_shop_brand_id} = ${shop_brand_class_fl.dwh_shop_brand_id}
              AND ${pos_subcat_by_day_dayprt_grp_f.dwh_shop_rooftp_id = ${shop_brand_class_fl.dwh_shop_rooftp_id}
              AND ${pos_subcat_by_day_dayprt_grp_f.transctn_bus_raw} = ${shop_brand_class_fl.shop_brand_class_raw}  };;
  }

  join: ovride_comp_day {
    relationship: many_to_one
    type: left_outer
    sql_on:${pos_subcat_by_day_dayprt_grp_f.transctn_bus_date} = ${ovride_comp_day.ovride_comp_date_date}
            AND ${pos_subcat_by_day_dayprt_grp_f.dwh_shop_brand_id} = ${ovride_comp_day.dwh_shop_brand_id};;
  }

  join: shop_addtnl_attrbts_d {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_subcat_by_day_dayprt_grp_f.dwh_shop_brand_id} = ${shop_addtnl_attrbts_d.dwh_shop_brand_id} ;;
  }

  join: dayprt_grp_d {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_subcat_by_day_dayprt_grp_f.dwh_dayprt_grp_id} = ${dayprt_grp_d.dwh_dayprt_grp_id} ;;
  }

  join: pos_item_sub_catgry_d {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_subcat_by_day_dayprt_grp_f.dwh_item_sub_catgry_id} = ${pos_item_sub_catgry_d.dwh_item_sub_catgry_id} ;;
  }

  join: shop_rooftp_mastr_d {
    relationship: many_to_one
    type: inner
    sql_on: ${shop_brand_mastr_d.dwh_shop_rooftp_id} = ${shop_rooftp_mastr_d.dwh_shop_rooftp_id} ;;
  }

  }



# explore: pos_subcat_by_wk_dayprt_grp_f {}

explore: pos_yoy_day_sales_f {
  sql_always_where: ${pos_yoy_day_sales_f.sales_ind_ty} = 1
  AND ${ovride_comp_day.ovride_comp_day_ind} IS NULL
  AND ${pos_yoy_day_sales_f.transctn_bus_raw} = '12-NOV-2020'
  AND ${pos_yoy_day_sales_f.transctn_bus_raw} BETWEEN ${shop_brand_mastr_d.estblshd_comp_start_raw} AND sysdate;;
  label: "POS YOY Day Sales"

 join: dates{
    relationship: many_to_one
    type: inner
    sql_on: ${pos_yoy_day_sales_f.transctn_bus_raw} = ${dates.actual_date_raw} ;;
  }

  join: shop_addtnl_attrbts_d {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_yoy_day_sales_f.dwh_shop_brand_id} = ${shop_addtnl_attrbts_d.dwh_shop_brand_id} ;;
  }

  join: shop_brand_mastr_d {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_yoy_day_sales_f.dwh_shop_brand_id} = ${shop_brand_mastr_d.dwh_shop_brand_id} ;;
  }

  join: shop_brand_class_fl {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_yoy_day_sales_f.dwh_shop_brand_id} = ${shop_brand_class_fl.dwh_shop_brand_id}
             AND ${pos_yoy_day_sales_f.transctn_bus_raw} = ${shop_brand_class_fl.shop_brand_class_raw};;
  }

  join: ovride_comp_day {
    relationship: many_to_one
    type: left_outer
    sql_on:${pos_yoy_day_sales_f.transctn_bus_date} = ${ovride_comp_day.ovride_comp_date_date}
      AND ${pos_yoy_day_sales_f.dwh_shop_brand_id} = ${ovride_comp_day.dwh_shop_brand_id};;
  }

  join: shop_rooftp_mastr_d {
    relationship: many_to_one
    type: inner
    sql_on: ${shop_brand_mastr_d.dwh_shop_rooftp_id} = ${shop_rooftp_mastr_d.dwh_shop_rooftp_id} ;;
  }
}

explore: pos_yoy_week_sales_f {
  sql_always_where: ${pos_yoy_week_sales_f.sales_ind_ty} = 1
  AND ${ovride_comp_week.ovride_comp_week_ind} IS NULL
  AND ${pos_yoy_week_sales_f.transctn_bus_raw} BETWEEN ${shop_brand_mastr_d.estblshd_comp_start_raw} AND sysdate;;
#  AND ${pos_yoy_week_sales_f.transctn_bus_raw} = '12-NOV-2020'

  label: "POS YOY Week Sales"
  join: dates_week {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_yoy_week_sales_f.transctn_bus_raw} = ${dates_week.week_ending_raw} ;;
  }

  join: ovride_comp_week {
    relationship: many_to_one
    type: left_outer
    sql_on: ${pos_yoy_week_sales_f.transctn_bus_raw} = ${ovride_comp_week.ovride_comp_raw}
            AND ${pos_yoy_week_sales_f.dwh_shop_brand_id} = ${ovride_comp_week.dwh_shop_brand_id};;
  }

  join: shop_brand_mastr_d {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_yoy_week_sales_f.dwh_shop_brand_id} = ${shop_brand_mastr_d.dwh_shop_brand_id} ;;
  }

  join: shop_addtnl_attrbts_d{
    relationship: many_to_one
    type: inner
    sql_on: ${pos_yoy_week_sales_f.dwh_shop_brand_id} = ${shop_addtnl_attrbts_d.dwh_shop_brand_id} ;;
  }

  join: shop_brand_class_fl {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_yoy_week_sales_f.transctn_bus_raw} = ${shop_brand_class_fl.shop_brand_class_raw}
            AND ${pos_yoy_week_sales_f.dwh_shop_brand_id} = ${shop_brand_class_fl.dwh_shop_brand_id};;
  }

  join: shop_rooftp_mastr_d {
    relationship: many_to_one
    type: inner
    sql_on: ${shop_brand_mastr_d.dwh_shop_rooftp_id} = ${shop_rooftp_mastr_d.dwh_shop_rooftp_id} ;;
  }
}

explore: pos_yoy_day_sales_ly_f {
  sql_always_where: ${pos_yoy_day_sales_ly_f.sales_ind_ty} = 1
  AND ${ovride_comp_day.ovride_comp_day_ind} IS NULL
  AND ${pos_yoy_day_sales_ly_f.transctn_bus_raw} = to_date('12-nov-2020','DD-MON-YYYY') - 364
  AND ${pos_yoy_day_sales_ly_f.transctn_bus_raw} BETWEEN ${shop_brand_mastr_d.estblshd_comp_start_raw} AND sysdate;;
  label: "POS YOY Day Sales LY"

  join: dates{
    relationship: many_to_one
    type: inner
    sql: ${pos_yoy_day_sales_ly_f.transctn_bus_raw} = ${dates.actual_date_raw} ;;
  }

  join: shop_addtnl_attrbts_d {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_yoy_day_sales_ly_f.dwh_shop_brand_id} = ${shop_addtnl_attrbts_d.dwh_shop_brand_id} ;;
  }

  join: shop_brand_mastr_d {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_yoy_day_sales_ly_f.dwh_shop_brand_id} = ${shop_brand_mastr_d.dwh_shop_brand_id} ;;
  }

  join: shop_brand_class_fl {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_yoy_day_sales_ly_f.dwh_shop_brand_id} = ${shop_brand_class_fl.dwh_shop_brand_id}
      AND ${pos_yoy_day_sales_ly_f.transctn_bus_raw} = ${shop_brand_class_fl.shop_brand_class_raw};;
  }

  join: ovride_comp_day {
    relationship: many_to_one
    type: left_outer
    sql_on:${pos_yoy_day_sales_ly_f.transctn_bus_date} = ${ovride_comp_day.ovride_comp_date_date}
      AND ${pos_yoy_day_sales_ly_f.dwh_shop_brand_id} = ${ovride_comp_day.dwh_shop_brand_id};;
  }

  join: shop_rooftp_mastr_d {
    relationship: many_to_one
    type: inner
    sql_on: ${shop_brand_mastr_d.dwh_shop_rooftp_id} = ${shop_rooftp_mastr_d.dwh_shop_rooftp_id} ;;
  }

}


explore: perks_membr_summry_actv_f {


  join: dbi_membrs {
    relationship: many_to_one
    type: inner
    sql_on: ${perks_membr_summry_actv_f.epsilon_profile_id}= ${dbi_membrs.epsilon_profile_id} ;;
  }

  join: perks_spend_segmnt_d {
    relationship: many_to_one
    type: inner
    sql_on:${perks_membr_summry_actv_f.perks_sales_amt}/${perks_membr_summry_actv_f.actv_weeks_nbr} BETWEEN ${perks_spend_segmnt_d.segmnt_start_amt} AND ${perks_spend_segmnt_d.segmnt_end_amt} ;;
  }
}

explore:init_block_dates_view
{label: "Init Block for Dates"}
