module FileParser

	def self.parse(text_file)

		# open file
		file = File.open(text_file, "r")

		# splits on new line
		split_on_new_line = file.map { |x| x.chomp }

		# cuts empty string and creates nested array
		get_rid_of_new_line = split_on_new_line.reject! { |line| line.empty? }.each_slice(2).to_a

		# converts array to hash
		deck = Hash[get_rid_of_new_line.map {|k,v| [k,v]}]


	 	deck
	end
end


file = FileParser.parse('seed_files/otter_flashcard_data.txt')

file.each do |k,v|
	Card.create(question: k, answer: v)
end

# Card.create(file)
