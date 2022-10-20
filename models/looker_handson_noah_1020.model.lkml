connection: "looker_handson"

# include all the views
include: "/views/**/*.view"

datagroup: looker_handson_noah_1020_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: looker_handson_noah_1020_default_datagroup

explore: channels {}

explore: products {}

explore: transaction {}

explore: stores {}
