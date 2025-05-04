#> delay:_/impl/cancel/main
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

$return run data remove storage delay:data tasks[{task_id:$(task_id)}]