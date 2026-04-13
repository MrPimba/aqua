class_name Player extends Node

#Composição
@onready var vida: Vida = $CharacterBody2D/Vida
@onready var velocidade: Velocidade = $CharacterBody2D/Velocidade
@onready var stamina: Stamina = $CharacterBody2D/Stamina
@onready var almas: Almas = $CharacterBody2D/Almas
@onready var movement_state_machine = $CharacterBody2D/StateMachine
