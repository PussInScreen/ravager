# Main menu controller script
# Handles button interactions and scene transitions for the main menu
extends Control

# UI element references - automatically assigned when scene loads
@onready var start_button = $VBoxContainer/StartButton
@onready var options_button = $VBoxContainer/OptionsButton
@onready var quit_button = $VBoxContainer/QuitButton

func _ready():
	# Connect button pressed signals to their respective handler functions
	start_button.pressed.connect(_on_start_pressed)
	options_button.pressed.connect(_on_options_pressed)
	quit_button.pressed.connect(_on_quit_pressed)
	
	# Set initial keyboard focus to start button for controller/keyboard navigation
	start_button.grab_focus()

func _on_start_pressed():
	# Transition to the game scene when start is pressed
	get_tree().change_scene_to_file("res://scenes/game.tscn")

func _on_options_pressed():
	# TODO: Load options menu
	# Currently just prints to console until options menu is implemented
	print("Options pressed")

func _on_quit_pressed():
	# Exit the application when quit is pressed
	get_tree().quit()
