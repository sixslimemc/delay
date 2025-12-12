#> delay : selector/delay
#--------------------
# -> selector: #[selector] string
# -> command: Command
# -> ticks: int
# ~> data? any
# ~> failsafe? Command
#--------------------
# <- task_id: TaskId
#--------------------
# TODO: description
#--------------------
# 0..: success; gametime that this task is scheduled to execute.
# -1: invalid value for <ticks>.
#--------------------

return run function delay:_/impl/selector/delay/main with storage delay:in delay.selector