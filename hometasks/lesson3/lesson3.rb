# Checking the number of arguments
if ARGV.length != 2
	puts "Wrong number of arguments. Expected 2"

	exit(1)
end

decimal = ARGV[0].to_i
binaryStr = ARGV[1]

typeErrorMessage = []
# Cheking the type of the first argument
if decimal.to_s != ARGV[0]
	typeErrorMessage.push("Wrong type of the first argument. Decimal number is expected.")
end

# Cheking the type of the second argument
if binaryStr != binaryStr.to_i.to_s
	typeErrorMessage.push("Wrong type of the second argument. Binary number is expected.")
else
	for i in 0..binaryStr.size - 1
		if binaryStr[i] != '0' && binaryStr[i] != '1'
			typeErrorMessage.push("Wrong type of the second argument. Binary number is expected.")

			break
		end
	end
end
	
# print errors if they are exist and exit
if not typeErrorMessage.empty?
	puts typeErrorMessage

	exit(1)
end

# Converting decimal to binary
tempDecimal = decimal
fromDecimalToBinary = ''
begin
	fromDecimalToBinary = (tempDecimal % 2).to_s + fromDecimalToBinary
	tempDecimal = tempDecimal / 2
end while tempDecimal != 0

# Converting binary to decimal
fromBinaryToDecimal = 0
for i in 0..binaryStr.size - 1
	fromBinaryToDecimal = fromBinaryToDecimal * 2 + binaryStr[i].to_i
end

puts "Decimal digit #{decimal} -> #{fromDecimalToBinary}"
puts "Binary digit #{binaryStr} -> #{fromBinaryToDecimal}"
