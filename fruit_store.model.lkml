connection: "internal"
include: "//looker_fruit_basket/*.explore.lkml"

# This test failed on 02/14/2020 11:32:00!
# This test failed on 02/15/2020 08:19:26!
# This test failed on 02/15/2020 08:49:10!
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
