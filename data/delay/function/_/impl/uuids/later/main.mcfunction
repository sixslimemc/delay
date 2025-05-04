#> delay:_/impl/selector/uuids/main
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
execute store result score *x _delay run data get storage delay:in delay.ticks
execute unless score *x _delay matches 1.. run return 0

# append task:
data modify storage delay:data tasks append value {}

# schedule trigger:
$execute store result storage delay:data tasks[-1].time int 1 run schedule function delay:_/task/trigger $(ticks)t append

execute store result storage delay:out delay.result int 1 run function delay:_/gen_task_id

data modify storage delay:data tasks[-1].task_id set from storage delay:out delay.result
data modify storage delay:data tasks[-1].command set from storage delay:in delay.command
data modify storage delay:data tasks[-1].data set from storage delay:in delay.data
data modify storage delay:data tasks[-1].failsafe set from storage delay:in delay.failsafe
data modify storage delay:data tasks[-1].targets set from storage delay:in delay.uuids

return 1