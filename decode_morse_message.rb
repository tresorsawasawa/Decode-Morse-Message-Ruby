def decode_char(char)
  decoder = {'.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D' , '.' => 'E', '..-.' => 'F', '--.' => 'G', 
    '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O', 
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W', 
    '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z'}

  decoder[char]
end

def separator(word)
  word.split('   ')
end

def decode_msg(message)
  result = ''
  message.each do |n|
    word = n.split(' ')
    word.each do |m|
      result += decode_char(m)
    end
    result += ' '
  end
  puts(result)
end

decode_msg(separator('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'))