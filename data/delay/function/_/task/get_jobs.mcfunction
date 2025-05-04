#> delay:_/task/get_jobs
#--------------------
# ./trigger
#--------------------

$data modify storage delay:_ var.task.jobs append from storage delay:data tasks[{time:$(current_time)}]
$data remove storage delay:data tasks[{time:$(current_time)}]