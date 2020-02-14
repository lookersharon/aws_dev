connection: "internal"
include: "//looker_fruit_basket/*.explore.lkml"

test: check_fruit {
  explore_source: performance {
    column: name {
      field: fruit.name
    }
    limit: 1
  }
  assert: the_first_fruit_is_a_mango {
    expression: ${fruit.name} = "mango" ;;
  }
}

explore: performance {
  view_name: fruit
  extends: [fruit]
  hidden: no
}
