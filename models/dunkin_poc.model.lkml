connection: "dunkinpocpa"

# include all the views
include: "/views/**/*.view"

datagroup: dunkin_poc_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: dunkin_poc_default_datagroup

explore: dates {}

explore: dates_week {}

explore: dayprt_d {}

explore: dayprt_grp_d {}

explore: dayprt_hour_d {}

explore: dayprt_qtr_hour_d {}

explore: item_food_cost_d {}

explore: location_d {}

explore: looker_session {}

explore: looker_sql {}

explore: pos_brand_by_day_dayprt_grp_f {}

explore: pos_brand_by_week_dayprt_grp_f {}

explore: pos_check_by_day_f {}

explore: pos_check_by_dayprt_f {}

explore: pos_check_by_week_dayprt_f {}

explore: pos_check_by_week_f {}

explore: pos_item_brand_d {}

explore: pos_item_by_day_f {}

explore: pos_item_by_dayprt_f {}

explore: pos_item_by_week_dayprt_f {}

explore: pos_item_by_week_f {}

explore: pos_item_sub_catgry_d {}

explore: pos_menu_item_d {}

explore: pos_subcat_by_day_dayprt_grp_f {}

explore: pos_subcat_by_wk_dayprt_grp_f {}

explore: pos_transctn_grpng_d {}

explore: pos_yoy_day_sales_f {}

explore: pos_yoy_week_sales_f {}

explore: shop_addtnl_attrbts_d {}

explore: shop_br_dlivry_partnrs_d {}

explore: shop_brand_class_fl {}

explore: shop_brand_mastr_d {}

explore: shop_d {}

explore: shop_locatn_d {}

explore: shop_rooftp_mastr_d {}
