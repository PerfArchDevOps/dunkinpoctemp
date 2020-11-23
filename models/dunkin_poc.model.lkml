connection: "dbm01p"

# include all the views
include: "/views/**/*.view"

datagroup: dunkin_poc_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: dunkin_poc_default_datagroup

explore: pos_brand_by_day_dayprt_grp_f {}

explore: pos_brand_by_week_dayprt_grp_f {}

explore: pos_check_by_day_f {}

explore: pos_check_by_dayprt_f {}

explore: pos_check_by_week_dayprt_f {}

explore: pos_check_by_week_f {}

explore: pos_item_by_day_f {
  join: dates {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_item_by_day_f.transctn_bus_date} = ${dates.actual_date_date}
            AND ${pos_item_by_day_f.transctn_bus_date} = '2020-11-12';;
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
              AND ${pos_item_by_day_f.transctn_bus_date} = ${shop_brand_class_fl.shop_brand_class_date}  };;
              }

  join: ovride_comp_day {
    relationship: many_to_one
    type: left_outer
    sql_on:${pos_item_by_day_f.transctn_bus_date} = ${ovride_comp_day.ovride_comp_date_date}
            AND ${pos_item_by_day_f.dwh_shop_brand_id} = ${ovride_comp_day.dwh_shop_brand_id}
            AND ${ovride_comp_day.ovride_comp_day_ind} IS NULL;;
  }
  join: shop_addtnl_attrbts_d {
    relationship: many_to_one
    type: inner
    sql_on: ${pos_item_by_day_f.dwh_shop_brand_id} = ${shop_addtnl_attrbts_d.dwh_shop_brand_id} ;;
  }
}
explore: pos_item_by_dayprt_f {}

explore: pos_item_by_week_dayprt_f {}

explore: pos_item_by_week_f {}

explore: pos_subcat_by_day_dayprt_grp_f {}

explore: pos_subcat_by_wk_dayprt_grp_f {}

explore: pos_yoy_day_sales_f {}

explore: pos_yoy_week_sales_f {}

explore: shop_brand_class_fl {}

explore: dbi_bi_user_access {}

explore: dates {}
