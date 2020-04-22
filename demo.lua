i = 0
green = 60/127
red = 15/127
yellow = 62/127

function getin(value)
	if( value == 1) then
		if ( i == 0) then
			output("putcolor1",60/127)
			output("putcolor2",60/127)
			output("putcolor3",60/127)
			output("putcolor4",3/127)
			i = 1
		else
			output("putcolor1",0)
			output("putcolor2",0)
			output("putcolor3",0)
			output("putcolor4",0)
			i = 0
		end

	end

end

output("putcolor1",green)
output("putcolor2",green)
output("putcolor3",green)
output("putcolor4",red)

