#> later : uuids/later
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

data remove storage later:out later

execute store result score *x _later run function later:_/impl/uuids/later/main with storage later:in later

data remove storage later:_ v.later
data remove storage later:in later

return run scoreboard players get *x _later