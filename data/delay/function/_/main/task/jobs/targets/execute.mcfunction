#> delay:_/main/task/jobs/targets/execute
#--------------------
# ./proxy AS [target]
#--------------------

scoreboard players set *g.task.target_exists _delay 1
$$(command)
