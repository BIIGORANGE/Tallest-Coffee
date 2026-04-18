extends Window
@onready var label: Label = $Label


var floors_scene
func handle_events(floors, coffee_total_counter: int):
	#first event
	if floors == 2:
		popup()
		label.text = "You have created your first floor!\n
		Your brewing capacity has just doubled.\n
		Each time you click 'Brew', you will brew 2 coffees!"
	if floors == 5:
		popup()
		label.text = "Floor 5!"
	if coffee_total_counter >= 100 and coffee_total_counter <= 105:
		popup()
		label.text = "You just brewed your 100th coffee! \n
		People are beginning to notice you."
