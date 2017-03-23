
class Book
# write your code here
	attr_accessor :title

	def title=(str)
		words = str.split(" ")
		n = words.length
		i = 0
		@title = ""
		while(n > i)
			little = %w{a an and the in of}
			if little.include? words[i]
				if(i == 0)
				@title = @title + words[i].capitalize + " "
				else
				@title = @title + words[i].downcase + ' '
				end
			else
				@title = @title + words[i].capitalize + " "
			end
			i+=1
		end
		@title = @title[0..-2]
		return @title
	end


end

=begin
class Book
  attr_reader :title

  def title=(new_title)
    words = new_title.split(" ")
    words = [words[0].capitalize] +
      words[1..-1].map do |word|
        little_words = %w{a an and the in of}
        if little_words.include? word
          word
        else
          word.capitalize
        end
      end
    @title = words.join(" ")
  end

end
=end