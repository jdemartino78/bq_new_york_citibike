project_name: "new_york_citibike"

remote_dependency: test {
  url: "git@github.com:jdemartino78/looker_sandbox.git"
  ref: "master"
}


visualization: {
  url: "https://looker-custom-viz-a.lookercdn.com/master/treemap.js"
  id: "treemap"
  label: "Tree Map"
}

visualization: {
  id: "liquid_fill_gauge-marketplace"
  url: "https://looker-custom-viz-a.lookercdn.com/master/liquid_fill_gauge.js"
  label: "Liquid Fill Gauge"
}

visualization: {
  id: "multiple_value"
  url: "https://rawcdn.githack.com/looker/viz-multiple_value-marketplace/f7a135cc859bb7509caa5b7bb9f27f7d87fcf3db/multiple_value.js"
  label: "Multiple Value"
}
