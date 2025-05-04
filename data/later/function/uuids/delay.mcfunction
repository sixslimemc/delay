#> later : uuids/delay
#--------------------
# -> uuids: $selector
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

data remove storage later:out delay

execute store result score *x _later run function later:_/impl/uuids/delay/main with storage later:in delay

data remove storage later:_ v.delay
data remove storage later:in delay

return run scoreboard players get *x _later