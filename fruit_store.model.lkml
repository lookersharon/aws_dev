connection: "internal"
include: "//looker_fruit_basket/*.explore.lkml"

# This test failed on 02/14/2020 07:00:49!
# This test failed on 02/14/2020 07:01:28!
# This test failed on 02/14/2020 07:01:59!
# This test failed on 02/14/2020 07:02:33!
# This test failed on 02/14/2020 07:03:04!
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
