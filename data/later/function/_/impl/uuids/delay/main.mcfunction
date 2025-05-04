#> later:_/impl/selector/uuids/main
#--------------------
# -> uuids[]: {uuid: uuid}
# -> command: $command
# -> ticks: int
# ~> data? any
# ~> failsafe? $command
#--------------------
# <- result: TaskID
#--------------------
# TODO: description
#--------------------
# 1: success.
# 0: invalid value for <ticks>.
#--------------------


# valid ticks check:
execute store result score *x _later run data get storage delay:in delay.ticks
execute unless score *x _later matches 1.. run return 0

# append task:
data modify storage later:data tasks append value {}

# schedule trigger:
$execute store result storage later:data tasks[-1].time int 1 run schedule function later:_/task/trigger $(ticks)t append

execute store result storage later:out delay.result int 1 run function later:_/gen_task_id

data modify storage later:data tasks[-1].task_id set from storage later:out delay.result
data modify storage later:data tasks[-1].command set from storage later:in delay.command
data modify storage later:data tasks[-1].data set from storage later:in delay.data
data modify storage later:data tasks[-1].failsafe set from storage later:in delay.failsafe
data modify storage later:data tasks[-1].targets set from storage later:in delay.uuids

return 1