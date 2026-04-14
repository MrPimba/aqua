class_name Idle extends PlayerState

	
# Chamada pela maquina de estados no tick de física
func physics_update(_delta: float) -> void:
	super.physics_update(_delta)
	
	if Input.is_action_pressed(controls.UP) or Input.is_action_pressed(controls.DOWN) or Input.is_action_pressed(controls.RIGHT) or Input.is_action_pressed(controls.LEFT):
		finished.emit(WALKING)
	elif Input.is_action_pressed(controls.FIRST_HABILITY_INPUT):
		finished.emit(first_hability)
	
# Chamada pela maquina de estados quando o estado é inicializado
# pela primeira vez
func enter(previous_state_path: String, data := {}) -> void:
	super.enter(previous_state_path)
	character.velocity.x = 0.0
	character.animation_player.play('idle')
	
