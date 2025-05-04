#> later:_/task/get_jobs
#--------------------
# ./trigger
#--------------------

$data modify storage later:_ var.task.jobs append from storage later:data tasks[{time:$(current_time)}]
$data remove storage later:data tasks[{time:$(current_time)}]