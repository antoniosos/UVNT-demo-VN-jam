extends Resource
class_name VNEventList

@export var init_state:Dictionary
# Initial state of the screen.
# Used for drawing a preview on the screen inside the tool.
# Must match the last state of its parent VNActionList.
# The dictionary is empty if the VNEventList is the first in a continuous scene.
# Allowed keys:
# · "foreground_elements"
# More to be added.

@export var event_list:Array
# List of events to occur.
# Events are listed in chronological order.
# However, this chronological order only lists the beginnings of events:
# some events that have duration are non-blocking, meaning the next event begins
# within the same frame.
