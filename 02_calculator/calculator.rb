#write your code here
def add(num1, num2)
	return num1+num2
end

def subtract(num1, num2)
	return num1-num2
end

def sum(array)
	x = 0
	y = 0
	while( x < array.length)
		y = array[x]+y
		x += 1
	end
	return y
end

def multiply(*array)
	x = 0
	y = 1
	while(x < array.length)
		y = array[x]*y
		x+=1
	end
	return y
end

