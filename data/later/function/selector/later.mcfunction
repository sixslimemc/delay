#> later : selector/later
#--------------------
# -> selector: $selector
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

return run function later:_/impl/selector/later/main with storage later:in later.selector