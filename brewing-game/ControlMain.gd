extends Node
@onready var brew: Button = $Brew
@onready var upgrade: Button = $Upgrade
@onready var new_floor: Button = $NewFloor
@onready var auto_brew_upgrade: Button = $AutoBrewUpgrade
@onready var upgrade_cost_label: Label = $UpgradeCost
@onready var coffee_counter_label: Label = $CoffeeCounter
@onready var total_coffee_label: Label = $TotalCoffeeCount
@onready var floor_cost_label: Label = $FloorCost
@onready var auto_brewers_label: Label = $AutoBrewers
@onready var auto_brew_timer: Timer = $AutoBrewTimer

var fruits = 0
var floors = 1
var floor_cost = 100
var coffee_total_counter = 0.0
var coffee_counter = 0.0
var multiplier = 1.0
var upgrade_cost = 10.0
var auto_brewers = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	auto_brew_timer.start()
	update_labels()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_brew_pressed() -> void:
	coffee_total_counter = snapped(coffee_total_counter + ((1 * multiplier)* floors), 0.1)
	coffee_counter = snapped(coffee_counter + ((1 * multiplier) * floors), 0.1)
	update_labels()

func _on_upgrade_pressed() -> void:
	if coffee_counter >= upgrade_cost:
		multiplier += 0.1
		coffee_counter = snapped(coffee_counter - upgrade_cost, 0.1)
		upgrade_cost = snapped(upgrade_cost * 1.2, 0.1)
		update_labels()
	else:
		print("need more coffee")

func _on_auto_brew_upgrade_pressed() -> void:
	if coffee_counter >= upgrade_cost:
		auto_brewers += 1
		coffee_counter -= upgrade_cost
		upgrade_cost = snapped(upgrade_cost * 1.1, 0.1)
		update_labels()
	else:
		print("need more coffee!")


func _on_auto_brew_timer_timeout() -> void:
	coffee_counter = snapped(coffee_counter + (auto_brewers * floors), 0.1)
	coffee_total_counter = snapped(coffee_total_counter + (auto_brewers * floors), 0.1)
	update_labels()

func _on_new_floor_pressed() -> void:
	if coffee_counter >= floor_cost:
		floors += 1
		floor_cost = floor_cost * floors
		print(floors)
		coffee_counter = 0
		upgrade_cost = 10
		upgrade_cost = upgrade_cost * floors
		auto_brewers = 0
		multiplier = 1
		update_labels()
		fruits += 1
	else:
		print("need more coffee!")
	
func update_labels():
	total_coffee_label.text = str(coffee_total_counter)
	coffee_counter_label.text = str(coffee_counter)
	upgrade_cost_label.text = ("Upgrade Cost: "+ str(upgrade_cost))
	auto_brewers_label.text = ("Auto Brewers: " + str(auto_brewers))
	floor_cost_label.text = "Floor Cost: " + str(floor_cost)
