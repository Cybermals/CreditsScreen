extends Control

export var scroll_speed = 20
export (String, MULTILINE) var credits_text


func _ready():
	#Adjust label width and start pos based on screen size
	var screen_size = get_viewport_rect().size
	var size = get_node("Credits").get_size()
	size.x = screen_size.x
	get_node("Credits").set_size(size)
	
	var pos = get_node("Credits").get_position()
	pos.y = screen_size.y
	get_node("Credits").set_position(pos)
	
	#Add your credits text above the mandatory credits text
	var text = get_node("Credits").get_text()
	get_node("Credits").set_text(credits_text + "\n\n\n" + text)
	
	#Enable event processing
	set_process(true)
	
	
func _process(delta):
	#Scroll credits
	var pos = get_node("Credits").get_position()
	pos.y -= scroll_speed * delta
	get_node("Credits").set_position(pos)

