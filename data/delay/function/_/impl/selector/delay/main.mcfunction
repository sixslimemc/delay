#> delay:_/impl/selector/delay/main
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

# just a wrapper for uuid/delay:
data merge storage delay:in {delay:{uuids:[]}}
$execute as $(selector) run function delay:_/impl/selector/delay/append_self
return run function delay:uuids/delay