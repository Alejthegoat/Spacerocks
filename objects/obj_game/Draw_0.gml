game_instructions = @"Score 1,00 points to win!
			
UP: move
LEFT/RIGHT: change direction
SPACE: shoot
			
>> PRESS ENTER TO START <<
";

switch(room){
	case rm_game:
		draw_text(20, 20, "SCORE: "+string(score));
		draw_text(20, 40, "LIVES: "+string(lives));
		break;

	case rm_start:
	var c = c_yellow
		draw_text_transformed_color(
			room_width/3.5, 100, "SPACE ROCKS",
			3, 3, 0, c,c,c,c, 1
		);

		draw_text(
			room_width/3, 200,game_instructions);
			
		break;
		
	case rm_win:
	var c = c_lime
		draw_text_transformed_color(
			room_width/2.75, 200, "YOU WON!",
			3, 3, 0, c,c,c,c, 1
			);
			draw_text(
				room_width/2.75, 300,
				"PRESS ENTER TO RESTART"
				);
		break;
		
	case rm_gameover:
		var c = c_red
		draw_text_transformed_color(
			room_width/3.5, 200, "GAME OVER",
			3, 3, 0, c,c,c,c, 1
			);
		draw_text(
			room_width/3, 300,
			"FINAL SCORE: "+string(score)
		);
		draw_text(
				room_width/3, 350,
				"PRESS ENTER TO RESTART"
				);
		break;
}