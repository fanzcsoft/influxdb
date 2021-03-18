package influxdb_test

import "testing/expect"

option now = () => (2030-01-01T00:00:00Z)

testcase push_down_min_bare extends "flux/planner/group_min_test" {
    expect.planner(rules: [
        "PushDownGroupAggregateRule": 1,
        "PushDownRangeRule": 1,
        "PushDownFilterRule": 1,
    ])
    group_min_test.group_min_bare()
}

testcase push_down_max_bare extends "flux/planner/group_max_test" {
    expect.planner(rules: [
        "PushDownGroupAggregateRule": 1,
        "PushDownRangeRule": 1,
        "PushDownFilterRule": 1,
    ])
    group_max_test.group_max_bare()
}
