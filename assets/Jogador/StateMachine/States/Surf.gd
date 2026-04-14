class_name Surf extends PlayerState

@onready var hability_surf: HabilitySurf = $%HabilitySurf

# Chamada pela maquina de estados para controlar inputs
func handle_input(_event: InputEvent) -> void:
	pass
	
# Chamada pela maquina de estados no game_loop
func update(_delta: float) -> void:
	pass
	
# Chamada pela maquina de estados no tick de física
func physics_update(_delta: float) -> void:
	if player.stamina.actual_stamina < hability_surf.cost:
		finished.emit(WALKING)
	elif Input.is_action_just_pressed(FIRST_HABILITY_INPUT):
		finished.emit(WALKING)

	var input_direction_x := Input.get_axis(LEFT, RIGHT)
	var input_direction_y := Input.get_axis(UP, DOWN)
	
	player.velocity.x = player.velocidade.velocidade * input_direction_x * hability_surf.velocity_multiplier
	player.velocity.y = player.velocidade.velocidade * input_direction_y * hability_surf.velocity_multiplier
	
	player.stamina.decresse_over_time(hability_surf.cost, _delta)
	player.move_and_slide()
	


# Chamada pela maquina de estados quando o estado é inicializado
# pela primeira vez
func enter(previous_state_path: String, data := {}) -> void:
	super.enter(	previous_state_path)
	pass
	
# Chamada pela maquina de estados antes do estado ser trocado
func exit() -> void:
	super.exit()
	pass
