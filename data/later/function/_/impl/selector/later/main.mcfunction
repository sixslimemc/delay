#> later:_/impl/selector/later/main
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

# just a wrapper for uuid/later:
data merge storage later:in {later:{uuids:[]}}
$execute as $(selector) run function later:_/impl/selector/later/append_self
return run function later:uuids/later