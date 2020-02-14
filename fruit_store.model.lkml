connection: "internal"
include: "//looker_fruit_basket/*.explore.lkml"

test: check_fruit {
  explore_source: performance {
    column: name {
      field: fruit.name
    }
    limit: 1
  }
  assert: the_first_fruit_is_an_apple {
    expression: ${fruit.name} = "apple" ;;
  }
}

explore: performance {
  view_name: fruit
  extends: [fruit]
  hidden: no
}
