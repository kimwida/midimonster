i = 0
-- touch control color
green = 60/127
red = 15/127
yellow = 1/127

-- apc mini color
apc_b = 0			-- black
apc_g = 1/127		-- green
apc_r = 3/127		-- red
apc_y = 5/127		-- yellow
apc_g_b = 2/127		-- green blink
apc_r_b = 4/127     -- red blink
apc_y_b = 6/127		-- yellow blink

last = 0

function getin(value)
	if( value == 1) then
		if ( i == 0) then
			output("putcolor1",apc_r_b)
			output("putcolor2",apc_r_b)
			output("putcolor3",apc_r_b)
			output("putcolor4",apc_r_b)
			i = 1
		else
			output("putcolor1",apc_b)
			output("putcolor2",apc_b)
			output("putcolor3",apc_b)
			output("putcolor4",apc_b)
			i = 0
		end
	end
end

function doit(num, value)
	if ( value == 1) then
		if (last ~= num ) then
			for i = 1, 5, 1 do
				output("putcolor"..i, apc_b)
				if ( i == num  ) then
					output("putcolor"..i, apc_r)
				end
			end
			for i = 65, 69, 1 do
				output("putcolor"..i, apc_b)
				if ( i == num ) then
					output("putcolor"..i, apc_r)
				end
			end
			last = num
		else
			for i = 1, 5, 1 do
				output("putcolor"..i,apc_b)
			end
			for i = 65, 69, 1 do
				output("putcolor"..i,apc_b)
			end
			last = 0
		end
	end
end


function getin1(value)
	num = 1; doit(num,value)
end

function getin2(value)
	num = 2; doit(num,value)
end


function getin3(value)
	num = 3; doit(num,value)
end

function getin4(value)
	num = 4; doit(num,value)
end

function getin5(value)
	num = 5; doit(num,value)
end

function getin65(value)
	num = 65; doit(num,value)
end

function getin66(value)
	num = 66; doit(num,value)
end

function getin67(value)
	num = 67; doit(num,value)
end

function getin68(value)
	num = 68; doit(num,value)
end

function getin69(value)
	num = 69; doit(num,value)
end

--output("putcolor1",green)
--output("putcolor2",green)
--output("putcolor3",green)
--output("putcolor4",red)

--apc mini color initialize from up first line to down line
--Top 1st line
output("putcolor56",apc_g)
output("putcolor57",apc_g)
output("putcolor58",apc_g)
output("putcolor59",apc_g)
output("putcolor60",apc_g)
output("putcolor61",apc_g)
output("putcolor62",apc_g)
output("putcolor63",apc_g)
output("putcolor82",apc_g)
--Top 2nd line
--output("putcolor48",apc_b)
--output("putcolor49",apc_b)
--output("putcolor50",apc_b)
--output("putcolor51",apc_b)
--output("putcolor52",apc_r)
--output("putcolor53",apc_r)
--output("putcolor54",apc_r)
--output("putcolor55",apc_r)
--output("putcolor83",apc_g_b)
--Top 3rd line
--output("putcolor40",apc_y)
--output("putcolor41",apc_y)
--output("putcolor42",apc_y)
--output("putcolor43",apc_y_b)
--output("putcolor44",apc_y_b)
--output("putcolor45",apc_y_b)
--output("putcolor46",apc_r_b)
--output("putcolor47",apc_b)
--output("putcolor84",apc_g)
--Top 4th line
--output("putcolor32",apc_y)
--output("putcolor33",apc_y)
--output("putcolor34",apc_y)
--output("putcolor35",apc_b)
--output("putcolor36",apc_g)
--output("putcolor37",apc_g)
--output("putcolor38",apc_g)
--output("putcolor39",apc_b)
--output("putcolor85",apc_g)
--Top 5th line
--output("putcolor24",apc_g)
--output("putcolor25",apc_g)
--output("putcolor26",apc_g)
--output("putcolor27",apc_b)
--output("putcolor28",apc_g)
--output("putcolor29",apc_y)
--output("putcolor30",apc_y)
--output("putcolor31",apc_y)
--output("putcolor86",apc_g)
--Top 6th line
--output("putcolor16",apc_g)
--output("putcolor17",apc_g)
--output("putcolor18",apc_g)
--output("putcolor19",apc_b)
--output("putcolor20",apc_b)
--output("putcolor21",apc_r_b)
--output("putcolor22",apc_b)
--output("putcolor23",apc_b)
--output("putcolor87",apc_g)
--Top 7th line
--output("putcolor8",apc_r)
--output("putcolor9",apc_r)
--output("putcolor10",apc_r)
--output("putcolor11",apc_b)
--output("putcolor12",apc_r)
--output("putcolor13",apc_y_b)
--output("putcolor14",apc_b)
--output("putcolor15",apc_b)
--output("putcolor88",apc_g_b)
--Top 8th line
output("putcolor0",apc_b)
output("putcolor1",apc_r)
output("putcolor2",apc_r)
output("putcolor3",apc_r)
output("putcolor4",apc_r)
output("putcolor5",apc_r)
output("putcolor6",apc_b)
output("putcolor7",apc_b)
output("putcolor89",apc_b)
--Bottom 9th line
output("putcolor64",apc_b)
output("putcolor65",apc_r_b)
output("putcolor66",apc_r)
output("putcolor67",apc_r)
output("putcolor68",apc_r)
output("putcolor69",apc_r)
output("putcolor70",apc_b)
output("putcolor71",apc_b)
output("putcolor98",apc_b)

