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
  url: "https://marketplace-api.looker.com/viz-dist/liquid_fill_gauge.js"
  label: "Liquid Fill Gauge"
}
