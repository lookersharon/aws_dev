connection: "internal"
include: "//looker_fruit_basket/*.explore.lkml"

# This test failed on 02/14/2020 07:42:01!
# This test failed on 02/14/2020 07:42:33!
# This test failed on 02/14/2020 07:43:05!
# This test failed on 02/14/2020 07:43:40!
# This test failed on 02/14/2020 07:44:12!
# This test failed on 02/14/2020 07:44:37!
# This test failed on 02/14/2020 07:45:07!
# This test failed on 02/14/2020 07:45:33!
# This test failed on 02/14/2020 07:48:54!
# This test failed on 02/14/2020 07:49:21!
# This test failed on 02/14/2020 07:49:46!
# This test failed on 02/14/2020 07:58:08!
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
