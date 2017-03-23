#write your code here

def echo(thing)
	thing
end

def shout(thing)
	thing.upcase
end

def repeat(thing, n=2)
	m = n-1
	x = thing
	y = " " + thing
	x = x + (y*m)
	return x
end

def start_of_word(word, n)
	m = n-1
	fword = word[0, n]
	return fword
end

def first_word(word)
	word2 = word + " "
	i = 0
	l = ""
	while(l != " ")
		l = word[i]
		i+=1
	end
	return word[0,(i-1)]
end

def titleize(word)
	array = word.split
	word2 = array[0].capitalize
	i = 1
	l = ""
	while(i < array.length)
		word3 = array[i].capitalize
		if(i != 0 && word3 == 'And' || word3 == "The" || word3 == "Over")
			word3 = word3.downcase
		end
		word2 = word2 + " " + word3
		i+=1
	end
	return word2
end