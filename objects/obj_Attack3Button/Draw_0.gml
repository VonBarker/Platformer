if(obj_Game.attack3 = "") draw_sprite_stretched(spr_AttackButtonEmpty, 0, x - 40* xScale, y - 40 * yScale, 80 * xScale, 80 * yScale);
if(obj_Game.attack3 = "HighJump") draw_sprite_stretched(spr_AttackButtonHighJump, 0, x - 40* xScale, y - 40 * yScale, 80 * xScale, 80 * yScale);
if(obj_Game.attack3 = "RapidFire") draw_sprite_stretched(spr_AttackButtonRapidFire, 0, x - 40* xScale, y - 40 * yScale, 80 * xScale, 80 * yScale);
if(obj_Game.attack3 = "SwordSwing") draw_sprite_stretched(spr_AttackButtonSwordSwing, 0, x - 40* xScale, y - 40 * yScale, 80 * xScale, 80 * yScale);

draw_text_transformed(x, y, cooldown, xScale, yScale, 0);