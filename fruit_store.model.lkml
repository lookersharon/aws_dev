connection: "internal"
include: "//looker_fruit_basket/*.explore.lkml"

explore: performance {
  view_name: fruit
  extends: [fruit]
  hidden: no
}
