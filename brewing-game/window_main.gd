extends Window
@onready var label: Label = $Label

#keep track of which events have already fired:
var coffee_total_event_1 = false
var coffee_total_event_2 = false
var coffee_total_event_3 = false
var coffee_total_event_4 = false
var coffee_total_event_5 = false
var coffee_total_event_6 = false
var coffee_total_event_7 = false
var coffee_total_event_8 = false
var coffee_total_event_9 = false
var coffee_total_event_10 = false
var coffee_total_event_11 = false
var coffee_total_event_12 = false

var floors_scene

func display_tutorial():
	popup()
	label.text = "Upgrades help you brew more coffee!\b
Each upgrade is temporary and resets \b 
when a new floor is created\b
(Except Fruit upgrades)!"


func handle_events(floors, coffee_total_counter: int):
	#floors events
	if floors == 2:
		popup()
		label.text = "You have created your first floor!\b
Your brewing capacity has just doubled.\b
Each time you click 'Brew', you will\b
brew 2 coffees!\n
For each new floor, you get 1 Fruit to\b
get permanent upgrades. Every 10 floors\b
you get 10 fruits!"
	if floors == 5:
		popup()
		label.text = "Wow! 5 whole floors. \b
The coffee flows in gallons now. \n
You've got a successful Coffee Shop!"
	if floors == 10:
		popup()
		label.text = "Your building is getting quite tall\b 
isn't it? Is that even up to code?"
	if floors == 12:
		popup()
		label.text = "Your building begins to \b
sway with the wind. Customers are\b
calling the experience 'The new Wave'."
	if floors == 15:
		popup()
		label.text = "Local authorities have taken notice\b
of a, perhaps, too tall Coffee Shop."
	if floors == 20:
		popup()
		label.text = "Your tall coffee shop is visible\b
from the surrounding region. \b
Crowds gather at the ground floor\b
just to get a glimpse at your tower."
	if floors == 30:
		popup()
		label.text = "A motion to limit the\b
height of your Coffee Shop \b
has failed in local courts today.\n
A pardon from the Mayor reads \b
'These delicious cups a' \b
joe done us no harm!'"
	if floors == 40:
		popup()
		label.text = "Your coffee shop encroaches \b
on airspace. Navigational\b
practices have been appended \b
to include 'The Tallest Coffee Shop'\b
as a potential hazard."
	if floors == 41:
		popup()
		label.text = "You're Coffee shop now holds\b
the title of the 8th wonder\b
of the world"
	if floors == 50:
		popup()
		label.text = "The ISS has reported that the\b
'The Tallest Coffee Shop'\b
has entered the Mesosphere"
	if floors == 55:
		popup()
		label.text = "There is nothing more \b
to be done. No legal action has\b 
succeeded in halting your progress. \b
'The Tallest Coffee Shop' has become\b
a sovereign state."

	#total coffees events
	if coffee_total_counter > 100 and coffee_total_event_1 == false:
		popup()
		label.text = "100 coffees later...\b
100 satisfied customers! Great job!\b
keep it up."
		coffee_total_event_1 = true
	if coffee_total_counter >= 1000 and coffee_total_event_2 == false:
		popup()
		label.text = "Your 1000th customer just left the\b
building looking very satisfied!\n 
You must be putting some \b
magic in the cofee!"
		coffee_total_event_2 = true
	if coffee_total_counter >= 7000 and coffee_total_event_3 == false:
		popup()
		label.text = "Was that the Mayor in your coffee shop?\b
Looks like you've attracted some attention."
		coffee_total_event_3 = true
	if coffee_total_counter >= 10000 and coffee_total_event_4 == false:
		popup()
		label.text = "Looks like all employees of the local\b
government love your coffee!\b 
Your influence is growing"
		coffee_total_event_4 = true
	if coffee_total_counter >= 20000 and coffee_total_event_5 == false:
		popup()
		label.text = "20,000 coffees served...\b
20,000 satisfied customers. Are you sure\b
you're doing this for the right reasons?"
		coffee_total_event_5 = true
	if coffee_total_counter >= 50000 and coffee_total_event_6 == false:
		popup()
		label.text = "50,000 loyal customers. #TallCoffeeMania\b
has spread like wildfire on social\b
media, Your influence grows..."
		coffee_total_event_6 = true
	if coffee_total_counter >= 100000 and coffee_total_event_7 == false:
		popup()
		label.text = "Your influence and coffee have spread\b
far beyond the borders of this one town.\n
I'm starting to worry about you.\b
I'm worried about your true intentions."
		coffee_total_event_7 = true
		
	if coffee_total_counter >= 200000 and coffee_total_event_8 == false:
		popup()
		label.text = "Do you really just want to\b
serve a delicious cup a' joe \b
to customers? I think you're\b 
taking this too far"
		coffee_total_event_8 = true
	if coffee_total_counter >= 1000000 and coffee_total_event_9 == false:
		popup()
		label.text = "Federal Authorities have been\b
alerted to your presence."
		coffee_total_event_9 = true
	if coffee_total_counter >= 1500000 and coffee_total_event_10 == false:
		popup()
		label.text = "Your Coffee Shop's influence has\b
become too much for one agency to\b
contain. A multinational conglomerate \b
has been gathered to monitor you and \b
discuss possible legal recourse."
		coffee_total_event_10 = true
		
	if coffee_total_counter >= 3000000 and coffee_total_event_11 == false:
			popup()
			label.text = "Everybody has had a taste of your cofee.\b
They're calling it the best thing\b 
since gouda cheese"
			coffee_total_event_11 = true
			
	if coffee_total_counter >= 50000000 and coffee_total_event_12 == false:
			popup()
			label.text = "You've become nearly unstoppable.\n
There are no legal roadblocks for you to overcome.\n
But what about moral ones?"
			coffee_total_event_12 = true
