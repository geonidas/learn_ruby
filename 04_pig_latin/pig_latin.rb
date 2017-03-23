#write your code here

def translate(thing)
	words = thing.split
	n = words.length
	i = 0
	y = ""
	while(n > i)
		wrd = words[i]
		fir = wrd[0].downcase
		sec = wrd[1].downcase
		trd = wrd[2].downcase
		x = wrd[1..-1]
		if(fir+sec == "qu")
			fir = 'qu'
			x = wrd[2..-1]
		end
		if %w(a e i o u).include? fir
			x = wrd[0..-1]
			y = y + x + "ay" 
		else
			if !%w(a e i o u).include? sec
				x = wrd[2..-1]
				w = fir + sec
				if(sec == 'q' && trd == 'u')
					x = wrd[3..-1]
					y = y + x + w + trd + "ay"
				elsif !%w(a e i o u).include? trd
					x = wrd[3..-1]
					y = y + x + w + trd + "ay"
				
				else	
					y = y + x + w + "ay"
				end	
			else
				#x = wrd[1..-1]
				y = y + x + fir + "ay"
			end
		end
		i+=1
		if(n > 1 && i != n)
			y = y + " "
		end
	end
	return y
end