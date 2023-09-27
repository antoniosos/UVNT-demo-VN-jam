class_name CharacterResource
extends Resource
## Template for different character resources


## numbers are just placeholders, I don't yet know what value they should be
## There should be 3 types of obstacles
enum Speed {
	## Character is very slow
	## (should be used only for cinematic parts of gameplay as it won't be very fun)
	INJURED = 0,
	SLOW = 200,
	MEDIUM = 400,
	FAST = 600
}

## numbers are just placeholders, I don't yet know what value they should be
## There should be 3 types of obstacles
enum Jump_Height {
	## Character can't jump 
	## (should be used only for cinematic parts of gameplay as it won't be very fun)
	INJURED = 0,
	## Character can jump only over the lowest obstacle
	LOW = 200,
	## Character can jump over two heights of obstacles
	MEDIUM = 400,
	## Character can jump over every obstacle
	HIGH = 600
}

## Skills which characters can have, each character can have multiple
enum Skills {
	TMP,
	TMP2,
	TMP3,
	TMP4,
}

@export var base_health: float
@export var base_speed: Speed
@export var base_jump_height: Jump_Height
@export var skills : Array[Skills]
@export var sprite: Sprite2D


func tmp_skill1():
	pass
	
	
func tmp_skill2():
	pass


func tmp_skill3():
	pass
	
	
func tmp_skill4():
	pass
