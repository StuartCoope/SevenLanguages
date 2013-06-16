class CsvRow

	def initialize(headers, row)
		@row = {}
		headers.each_with_index{|value, key| @row[value] = row[key] }
	end

	def method_missing name, *args
		@row[name.to_s]
	end
end

class ActsAsCsv
	def read
		file = File.new(self.class.to_s.downcase + '.txt')
		@headers = file.gets.chomp.split(', ')

		file.each do |row|
			@result << CsvRow.new(@headers, row.chomp.split(', '))
		end
	end

	def headers
		@headers
	end

	def csv_contents
		@result
	end

	def initialize
		@result = []
		read
	end

	def each(&block)
		@result.each(&block)
	end
end

class RubyCsvRow < ActsAsCsv
end

m = RubyCsvRow.new
m.each{|row| puts row.one}

