i = 0
-- touch control color
touch_control_green = 60/127
touch_control_red = 15/127
touch_control_yellow = 1/127

-- apc mini color
apc_b = 0			-- black
apc_g = 1/127		-- green
apc_r = 3/127		-- red
apc_y = 5/127		-- yellow
apc_g_b = 2/127		-- green blink
apc_r_b = 4/127     -- red blink
apc_y_b = 6/127		-- yellow blink
apc_r_b2 = 2/127	-- lowest line red blink 

last_pin = 0
last_allpin = -1
last_backlight = 0
last_main = 0
last_uplight = 0
last_dnlight = 0
last_button24 = 0
last_button25 = 0
last_button26 = 0
last_button27 = 0
last_button28 = 0
last_button29 = 0
last_button30 = 0
last_all_uplight = 0
last_songlist1 = 0
last_songlist2 = 0
last_songlist3 = 0
last_songlist4 = 0
last_songlist5 = 0
last_songlist6 = 0
last_songlist7 = 0
last_songlist8 = 0
last_songlist9 = 0


function variable_set()
	last_pin = 0
	last_allpin = -1
	last_backlight = 0
	last_main = 0
	last_uplight = 0
	last_dnlight = 0
	last_button24 = 0
	last_button25 = 0
	last_button26 = 0
	last_button27 = 0
	last_button28 = 0
	last_button29 = 0
	last_button30 = 0
	last_all_uplight = 0
end

function get_apc_in(value)
	if( value == 1) then
		if ( i == 0) then
			output("put_apc_color1",apc_r_b)
			output("put_apc_color2",apc_r_b)
			output("put_apc_color3",apc_r_b)
			output("put_apc_color4",apc_r_b)
			i = 1
		else
			output("put_apc_color1",apc_b)
			output("put_apc_color2",apc_b)
			output("put_apc_color3",apc_b)
			output("put_apc_color4",apc_b)
			i = 0
		end
	end
end

function pin_doit(num, value)
	if ( value == 1) then
		if (last_pin ~= num ) then -- if it is first pressed
			for i = 1, 5, 1 do
				output("put_apc_color"..i, apc_r)
				if ( i == num  ) then
					output("put_apc_color"..i, apc_r_b)
				end
			end
			for i = 65, 69, 1 do
				output("put_apc_color"..i, apc_r)
				if ( i == num ) then
					output("put_apc_color"..i, apc_r_b2)
				end
			end
			last_pin = num
		else
			for i = 1, 5, 1 do
				output("put_apc_color"..i,apc_r)
			end
			for i = 65, 69, 1 do
				output("put_apc_color"..i,apc_r)
			end
			last_pin = 0
		end
	end
end

function allpin_doit(num, value)
	if ( value == 1) then
		if (last_allpin ~= num) then -- if it is first pressed
			if ( num == 0 ) then -- if it is 0 button
				output("put_apc_color0", apc_r_b)
				output("put_apc_color64",apc_b)
			else -- if it is 64 button
				output("put_apc_color0", apc_b)
				output("put_apc_color64",apc_r_b2)
			end
			last_allpin = num
		else  -- if same button is pressed
			output("put_apc_color0", apc_b)
			output("put_apc_color64",apc_b)
			last_allpin = -1
		end
	end
end

function songlist_push(num, value)
	if ( value == 1 ) then
		if ( num ~= 82 ) then
			output("put_apc_color"..num, apc_r_b)
		else
			output("put_apc_color"..num, apc_g_b)
		end
			
	end
end

function songlist_doit(num, value)
	if ( value == 1) then
		if ( num == 56 ) then
			if ( last_songlist1 == 0 ) then -- if it is first pressed
				output("put_apc_color".. num, apc_r_b)
				last_songlist1 = 1
			else
				output("put_apc_color".. num, apc_g)
				last_songlist1 = 0
			end
		elseif ( num == 57 ) then
			if ( last_songlist2 == 0 ) then -- if it is first pressed
				output("put_apc_color".. num, apc_r_b)
				last_songlist2 = 1
			else
				output("put_apc_color".. num, apc_g)
				last_songlist2 = 0
			end
		elseif ( num == 58 ) then
			if ( last_songlist3 == 0 ) then -- if it is first pressed
				output("put_apc_color".. num, apc_r_b)
				last_songlist3 = 1
			else
				output("put_apc_color".. num, apc_g)
				last_songlist3 = 0
			end
		elseif ( num == 59 ) then
			if ( last_songlist4 == 0 ) then -- if it is first pressed
				output("put_apc_color".. num, apc_r_b)
				last_songlist4 = 1
			else
				output("put_apc_color".. num, apc_g)
				last_songlist4 = 0
			end
		elseif ( num == 60 ) then
			if ( last_songlist5 == 0 ) then -- if it is first pressed
				output("put_apc_color".. num, apc_r_b)
				last_songlist5 = 1
			else
				output("put_apc_color".. num, apc_g)
				last_songlist5 = 0
			end
		elseif ( num == 61 ) then
			if ( last_songlist6 == 0 ) then -- if it is first pressed
				output("put_apc_color".. num, apc_r_b)
				last_songlist6 = 1
			else
				output("put_apc_color".. num, apc_g)
				last_songlist6 = 0
			end
		elseif ( num == 62 ) then
			if ( last_songlist7 == 0 ) then -- if it is first pressed
				output("put_apc_color".. num, apc_r_b)
				last_songlist7 = 1
			else
				output("put_apc_color".. num, apc_g)
				last_songlist7 = 0
			end
		elseif ( num == 63 ) then
			if ( last_songlist8 == 0 ) then -- if it is first pressed
				output("put_apc_color".. num, apc_r_b)
				last_songlist8 = 1
			else
				output("put_apc_color".. num, apc_g)
				last_songlist8 = 0
			end
		elseif ( num == 82 ) then
			if ( last_songlist9 == 0 ) then -- if it is first pressed
				output("put_apc_color".. num, apc_g_b)
				last_songlist9 = 1
			else
				output("put_apc_color".. num, apc_g)
				last_songlist9 = 0
			end
		end
	end
end

function backlight_doit(num, value)
	if ( value == 1) then
		if (last_backlight ~= num) then -- if it is first pressed
			if ( num == 6 ) then -- if it is 6 button
				output("put_apc_color6", apc_r_b)
				output("put_apc_color70",apc_b)
			else -- if it is 70 button
				output("put_apc_color6", apc_b)
				output("put_apc_color70",apc_r_b2)
			end
			last_backlight = num
		else  -- if same button is pressed
			output("put_apc_color6", apc_b)
			output("put_apc_color70",apc_b)
			last_backlight = 0
		end
	end
end

function main_doit(num, value)
	if ( value == 1) then
		if (last_main ~= num) then -- if it is first pressed
			if ( num == 8 ) then -- if it is 8 button
				output("put_apc_color8", apc_r_b)
				output("put_apc_color16",apc_r)
			else -- if it is 16 button
				output("put_apc_color8", apc_r)
				output("put_apc_color16",apc_r_b)
			end
			last_main = num
		else  -- if same button is pressed
			output("put_apc_color8", apc_r)
			output("put_apc_color16",apc_r)
			last_main = 0
		end
	end
end

function uplight_doit(num, value)
	if ( value == 1) then
		if (last_uplight ~= num) then -- if it is first pressed
			for i = 17, 19, 1 do
				if ( num == i ) then 
					output("put_apc_color"..i, apc_y_b)
				else
					output("put_apc_color"..i,apc_y)
				end
			end

			for i = 20, 22, 1 do
				if ( num == i ) then 
					output("put_apc_color"..i, apc_g_b)
				else
					output("put_apc_color"..i,apc_g)
				end
			end
			last_uplight = num
		else
			for i = 17, 19, 1 do
				output("put_apc_color"..i, apc_y)
			end
			for i = 20, 22, 1 do
				output("put_apc_color"..i, apc_g)
			end
			last_uplight = 0
		end
	end
end

function dnlight_doit(num, value)
	if ( value == 1) then
		if (last_dnlight ~= num) then -- if it is first pressed
			for i = 9, 11, 1 do
				if ( num == i ) then 
					output("put_apc_color"..i, apc_g_b)
				else
					output("put_apc_color"..i,apc_g)
				end
			end

			for i = 12, 14, 1 do
				if ( num == i ) then 
					output("put_apc_color"..i, apc_y_b)
				else
					output("put_apc_color"..i,apc_y)
				end
			end
			last_dnlight = num
		else
			for i = 9, 11, 1 do
				output("put_apc_color"..i, apc_g)
			end
			for i = 12, 14, 1 do
				output("put_apc_color"..i, apc_y)
			end
			last_dnlight = 0
		end
	end
end

function button_doit(num, value)
	if ( value == 1) then
		if ( num == 24 ) then 
			if ( last_button24 == 0 ) then -- if the button is not pressed
				output("put_apc_color24", apc_g_b)
				last_button24 = num
			else	-- if the button is already pressed
				output("put_apc_color24", apc_g)
				last_button24 = 0
			end
		elseif ( num == 25 ) then 
			if ( last_button25 == 0 ) then -- if the button is not pressed
				output("put_apc_color25", apc_g_b)
				last_button25 = num
			else	-- if the button is already pressed
				output("put_apc_color25", apc_g)
				last_button25 = 0
			end
		elseif ( num == 26 ) then 
			if ( last_button26 == 0 ) then -- if the button is not pressed
				output("put_apc_color26", apc_r_b)
				last_button26 = num
			else	-- if the button is already pressed
				output("put_apc_color26", apc_r)
				last_button26 = 0
			end
		elseif ( num == 27 ) then 
			if ( last_button27 == 0 ) then -- if the button is not pressed
				output("put_apc_color27", apc_g_b)
				last_button27 = num
			else	-- if the button is already pressed
				output("put_apc_color27", apc_g)
				last_button27 = 0
			end
		elseif ( num == 28 ) then 
			if ( last_button28 == 0 ) then -- if the button is not pressed
				output("put_apc_color28", apc_g_b)
				last_button28 = num
			else	-- if the button is already pressed
				output("put_apc_color28", apc_g)
				last_button28 = 0
			end
		elseif ( num == 29 ) then 
			if ( last_button29 == 0 ) then -- if the button is not pressed
				output("put_apc_color29", apc_y_b)
				last_button29 = num
			else	-- if the button is already pressed
				output("put_apc_color29", apc_y)
				last_button29 = 0
			end
		elseif ( num == 30 ) then 
			if ( last_button30 == 0 ) then -- if the button is not pressed
				output("put_apc_color30", apc_y_b)
				last_button30 = num
			else	-- if the button is already pressed
				output("put_apc_color30", apc_y)
				last_button30 = 0
			end
		end
	end
end

function all_uplight_doit(num, value)
	if ( value == 1) then
		if (last_all_uplight ~= num ) then -- if it is first pressed
			for i = 32, 38, 1 do
				output("put_apc_color"..i, apc_r)
				if ( i == num  ) then
					output("put_apc_color"..i, apc_r_b)
				end
			end
			last_all_uplight = num
		else
			for i = 32, 38, 1 do
				output("put_apc_color"..i,apc_r)
			end
			last_all_uplight = 0
		end
	end
end

-- 10 pin lights' led process
function get_apc_in1(value)	num = 1; pin_doit(num,value) end
function get_apc_in2(value)	num = 2; pin_doit(num,value) end
function get_apc_in3(value)	num = 3; pin_doit(num,value) end
function get_apc_in4(value)	num = 4; pin_doit(num,value) end
function get_apc_in5(value)	num = 5; pin_doit(num,value) end

function get_apc_in65(value)	num = 65; pin_doit(num,value) end
function get_apc_in66(value)	num = 66; pin_doit(num,value) end
function get_apc_in67(value)	num = 67; pin_doit(num,value) end
function get_apc_in68(value)	num = 68; pin_doit(num,value) end
function get_apc_in69(value)	num = 69; pin_doit(num,value) end

-- 2 back lights' led process
function get_apc_in0(value) num = 0; allpin_doit(num, value) end
function get_apc_in64(value) num = 64; allpin_doit(num, value) end

-- 9 songlists' led process
function get_apc_in56(value) num =56 ; songlist_doit(num, value) end
function get_apc_in57(value) num =57 ; songlist_doit(num, value) end
function get_apc_in58(value) num =58 ; songlist_doit(num, value) end
function get_apc_in59(value) num =59 ; songlist_doit(num, value) end
function get_apc_in60(value) num =60 ; songlist_doit(num, value) end
function get_apc_in61(value) num =61 ; songlist_doit(num, value) end
function get_apc_in62(value) num =62 ; songlist_doit(num, value) end
function get_apc_in63(value) num =63 ; songlist_doit(num, value) end
function get_apc_in82(value) num =82 ; songlist_doit(num, value) end

function get_apc_in48(value) num = 48; end
function get_apc_in49(value) num = 49; end 
function get_apc_in50(value) num = 50; end
function get_apc_in51(value) num = 51; end
function get_apc_in52(value) num = 52; end
function get_apc_in53(value) num = 53; end
function get_apc_in54(value) num = 54; end
function get_apc_in55(value) num = 55; end
function get_apc_in83(value) num = 83; end

function get_apc_in6(value) num = 6; backlight_doit(num, value) end
function get_apc_in70(value) num = 70; backlight_doit(num, value) end

function get_apc_in8(value) num =8; main_doit(num, value) end
function get_apc_in16(value) num =16; main_doit(num, value) end

function get_apc_in17(value) num = 17; uplight_doit(num, value) end
function get_apc_in18(value) num = 18; uplight_doit(num, value) end
function get_apc_in19(value) num = 19; uplight_doit(num, value) end
function get_apc_in20(value) num = 20; uplight_doit(num, value) end
function get_apc_in21(value) num = 21; uplight_doit(num, value) end
function get_apc_in22(value) num = 22; uplight_doit(num, value) end

function get_apc_in9(value) num = 9; dnlight_doit(num, value) end
function get_apc_in10(value) num = 10; dnlight_doit(num, value) end
function get_apc_in11(value) num = 11; dnlight_doit(num, value) end
function get_apc_in12(value) num = 12; dnlight_doit(num, value) end
function get_apc_in13(value) num = 13; dnlight_doit(num, value) end
function get_apc_in14(value) num = 14; dnlight_doit(num, value) end

function get_apc_in24(value) num = 24; button_doit(num, value) end
function get_apc_in25(value) num = 25; button_doit(num, value) end
function get_apc_in26(value) num = 26; button_doit(num, value) end
function get_apc_in27(value) num = 27; button_doit(num, value) end
function get_apc_in28(value) num = 28; button_doit(num, value) end
function get_apc_in29(value) num = 29; button_doit(num, value) end
function get_apc_in30(value) num = 30; button_doit(num, value) end

function get_apc_in32(value) num = 32; all_uplight_doit(num, value) end
function get_apc_in33(value) num = 33; all_uplight_doit(num, value) end
function get_apc_in34(value) num = 34; all_uplight_doit(num, value) end
function get_apc_in35(value) num = 35; all_uplight_doit(num, value) end
function get_apc_in36(value) num = 36; all_uplight_doit(num, value) end
function get_apc_in37(value) num = 37; all_uplight_doit(num, value) end
function get_apc_in38(value) num = 38; all_uplight_doit(num, value) end

--output("put_apc_color1",touch_control_green)
--output("put_apc_color2",touch_control_green)
--output("put_apc_color3",touch_control_green)
--output("put_apc_color4",touch_control_red)

function default_light()
	--apc mini color initialize from up first line to down line
	--Top 1st line
	output("put_apc_color56",apc_g)
	output("put_apc_color57",apc_g)
	output("put_apc_color58",apc_g)
	output("put_apc_color59",apc_g)
	output("put_apc_color60",apc_g)
	output("put_apc_color61",apc_g)
	output("put_apc_color62",apc_g)
	output("put_apc_color63",apc_g)
	output("put_apc_color82",apc_g)
	--Top 2nd line
	--output("put_apc_color48",apc_b)
	--output("put_apc_color49",apc_b)
	--output("put_apc_color50",apc_b)
	--output("put_apc_color51",apc_b)
	--output("put_apc_color52",apc_r)
	--output("put_apc_color53",apc_r)
	--output("put_apc_color54",apc_r)
	--output("put_apc_color55",apc_r)
	--output("put_apc_color83",apc_g_b)
	--Top 3rd line
	--output("put_apc_color40",apc_y)
	--output("put_apc_color41",apc_y)
	--output("put_apc_color42",apc_y)
	--output("put_apc_color43",apc_y_b)
	--output("put_apc_color44",apc_y_b)
	--output("put_apc_color45",apc_y_b)
	--output("put_apc_color46",apc_r_b)
	--output("put_apc_color47",apc_b)
	--output("put_apc_color84",apc_g)
	--Top 4th line
	output("put_apc_color32",apc_r)
	output("put_apc_color33",apc_r)
	output("put_apc_color34",apc_r)
	output("put_apc_color35",apc_r)
	output("put_apc_color36",apc_r)
	output("put_apc_color37",apc_r)
	output("put_apc_color38",apc_r)
	--output("put_apc_color39",apc_b)
	--output("put_apc_color85",apc_g)
	--Top 5th line
	output("put_apc_color24",apc_g)
	output("put_apc_color25",apc_g)
	output("put_apc_color26",apc_r)
	output("put_apc_color27",apc_g)
	output("put_apc_color28",apc_g)
	output("put_apc_color29",apc_y)
	output("put_apc_color30",apc_y)
	--output("put_apc_color31",apc_y)
	--output("put_apc_color86",apc_g)
	--Top 6th line
	output("put_apc_color16",apc_r)
	output("put_apc_color17",apc_y)
	output("put_apc_color18",apc_y)
	output("put_apc_color19",apc_y)
	output("put_apc_color20",apc_g)
	output("put_apc_color21",apc_g)
	output("put_apc_color22",apc_g)
	--output("put_apc_color23",apc_b)
	--output("put_apc_color87",apc_g)
	--Top 7th line
	output("put_apc_color8",apc_r)
	output("put_apc_color9",apc_g)
	output("put_apc_color10",apc_g)
	output("put_apc_color11",apc_g)
	output("put_apc_color12",apc_y)
	output("put_apc_color13",apc_y)
	output("put_apc_color14",apc_y)
	--output("put_apc_color15",apc_b)
	--output("put_apc_color88",apc_g_b)
	--Top 8th line
	output("put_apc_color0",apc_b)
	output("put_apc_color1",apc_r)
	output("put_apc_color2",apc_r)
	output("put_apc_color3",apc_r)
	output("put_apc_color4",apc_r)
	output("put_apc_color5",apc_r)
	output("put_apc_color6",apc_b)
	output("put_apc_color7",apc_r)
	output("put_apc_color89",apc_g)
	--Bottom 9th line
	output("put_apc_color64",apc_b)
	output("put_apc_color65",apc_r)
	output("put_apc_color66",apc_r)
	output("put_apc_color67",apc_r)
	output("put_apc_color68",apc_r)
	output("put_apc_color69",apc_r)
	output("put_apc_color70",apc_b)
	output("put_apc_color71",apc_r)
	output("put_apc_color98",apc_b)
	variable_set()
end


default_light()
