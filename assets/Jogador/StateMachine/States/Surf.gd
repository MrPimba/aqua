class_name Surf extends PlayerState

func _ready() -> void:
	super._ready()
	hability = $%HabilitySurf
	
	
# Chamada pela maquina de estados no tick de física
func physics_update(_delta: float) -> void:	
	if character.stamina.actual_stamina < hability.cost:
		hability.finish(character, _delta)
		finished.emit(WALKING)
		return
	elif Input.is_action_just_pressed(controls.FIRST_HABILITY_INPUT):
		hability.finish(character, _delta)
		finished.emit(WALKING)
		return
		
	super.physics_update(_delta)
