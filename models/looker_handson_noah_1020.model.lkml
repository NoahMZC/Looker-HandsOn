connection: "looker_handson"

include: "/views/**/*.view"

explore: channels {
  group_label: "Looker HandsON"
  label: "채널 정보"
}

explore: products {
  group_label: "Looker HandsON"
  label: "제품 정보"
}

explore: transaction {
  group_label: "Looker HandsON"
  label: "거래 정보"
  join: products {
    type: left_outer
    sql_on: ${transaction.product_id} = ${products.id} ;;
    relationship: many_to_one
  }
  join: channels {
    type: left_outer
    sql_on: ${transaction.channel_id} = ${channels.id};;
    relationship: many_to_one
  }
}
