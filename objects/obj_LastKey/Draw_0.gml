draw_set_color(c_white);
draw_set_font(font_Menu);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(global.cameraX + global.cameraWidth/12 * 5, global.cameraY + global.cameraHeight/3, string(global.asc_def[keyboard_lastkey]));