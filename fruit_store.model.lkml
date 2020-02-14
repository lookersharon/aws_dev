connection: "internal"
include: "//looker_fruit_basket/*.explore.lkml"

# This test failed on 02/14/2020 07:00:49!
# This test failed on 02/14/2020 07:01:28!
# This test failed on 02/14/2020 07:01:59!
# This test failed on 02/14/2020 07:02:33!
# This test failed on 02/14/2020 07:03:04!
# This test failed on 02/14/2020 07:03:14!
# This test failed on 02/14/2020 07:03:29!
# This test failed on 02/14/2020 07:03:49!
# This test failed on 02/14/2020 07:03:58!
# This test failed on 02/14/2020 07:04:23!
# This test failed on 02/14/2020 07:04:30!
# This test failed on 02/14/2020 07:04:48!
# This test failed on 02/14/2020 07:05:04!
# This test failed on 02/14/2020 07:05:26!
# This test failed on 02/14/2020 07:05:33!
# This test failed on 02/14/2020 07:05:53!
# This test failed on 02/14/2020 07:06:06!
# This test failed on 02/14/2020 07:20:59!
# This test failed on 02/14/2020 07:21:32!
# This test failed on 02/14/2020 07:21:57!
# This test failed on 02/14/2020 07:22:19!
# This test failed on 02/14/2020 07:22:47!
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
