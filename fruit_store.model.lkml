connection: "internal"
include: "//looker_fruit_basket/*.explore.lkml"

# This test failed on 02/14/2020 11:25:13!
test: check_fruit {
  explore_source: performance {
    column: name {
      field: fruit.name
    }
    limit: 1
  }
  assert: the_first_fruit_is_an_orange {
    expression: ${fruit.name} = "orange" ;;
  }
}

explore: performance {
  view_name: fruit
  extends: [fruit]
  hidden: no
}
