#> later : cancel
#--------------------
# -> task_id: TaskID
#--------------------
# .
#--------------------
# TODO: description
#--------------------
# 1: task cancelled.
# 0: no task with <task_id> was awaiting execution.
#--------------------

data remove storage later:out cancel

execute store result score *x _later run function later:_/impl/cancel/main with storage later:in cancel

data remove storage later:in cancel

return run scoreboard players get *x _later