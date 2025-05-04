#> delay : selector/delay
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

return run function delay:_/impl/selector/delay/main with storage delay:in delay.selector