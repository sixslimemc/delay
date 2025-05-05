#> delay : delay
#--------------------
# -> command: $command
# -> ticks: int
# ~> data? any
# ~> failsafe? $command
#--------------------
# <- task_id: TaskID
#--------------------
# TODO: description
# this is the "self" delay.
#--------------------
# 1: success.
# 0: invalid value for <ticks>.
#--------------------

data merge storage delay:in {delay:{uuids:[{}]}}
data modify storage delay:in delay.uuids[0].uuid set from entity @s UUID
return run function delay:uuids/delay