#> delay:_/main/task/get_jobs
#--------------------
# ./trigger
#--------------------

$data modify storage delay:_ t.task.jobs append from storage delay:data tasks[{time:$(current_time)}]
$data remove storage delay:data tasks[{time:$(current_time)}]