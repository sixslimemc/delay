#> later:_/task/trigger
#--------------------
# @scheduled : ./impl/uuids/later/main
#--------------------

execute store result storage later:_ var.task.current_time int 1 run time query gametime

# {..jobs}
function later:_/task/get_jobs with storage later:_ var.task

execute if data storage later:_ var.task.jobs[0] run function later:_/task/jobs/each

data remove storage later:_ var.task