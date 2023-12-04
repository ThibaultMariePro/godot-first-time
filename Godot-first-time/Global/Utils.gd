extends Node

const SAVE_PATH = "res://savegame.bin"

func saveGame():
	var file = FileAccess.open(SAVE_PATH, FileAccess.WRITE)
	var data = {
		"playerHP": Game.playerHP,
		"playerGold": Game.playerGold,
		"playerMP": Game.playerMP,
		"SAVE_PATH": SAVE_PATH
	}
	var jstr = JSON.stringify(data)
	file.store_line(jstr)
	
func loadGame():
	var file = FileAccess.open(SAVE_PATH, FileAccess.READ)
	
