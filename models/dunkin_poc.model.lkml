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
