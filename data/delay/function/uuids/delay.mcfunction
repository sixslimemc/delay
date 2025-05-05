#> delay : uuids/delay
#--------------------
# -> uuids: {uuid: uuid}
# -> command: $command
# -> ticks: int
# ~> data? any
# ~> failsafe? $command
#--------------------
# <- task_id: TaskID
#--------------------
# TODO: description
#--------------------
# 0..: success; gametime that this task is scheduled to execute.
# -1: invalid value for <ticks>.
#--------------------

data remove storage delay:out delay

execute store result score *x _delay run function delay:_/impl/uuids/delay/main with storage delay:in delay

data remove storage delay:_ v.delay
data remove storage delay:in delay

return run scoreboard players get *x _delay