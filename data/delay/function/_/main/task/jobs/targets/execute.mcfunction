#> delay:_/main/task/jobs/targets/execute
#--------------------
# ./proxy AS [target]
#--------------------

scoreboard players set *task.target_exists _delay 1
$$(command)
