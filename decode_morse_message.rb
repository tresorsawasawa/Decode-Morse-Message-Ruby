def decode_char(char)
  dictionary = { A: '.-', B: '-...', C: '-.-.', D: '-..',
                 E: '.', F: '..-.', G: '--.', H: '....',
                 I: '..', J: '.---', K: '-.-', L: '.-..',
                 M: '--', N: '-.', O: '---', P: '.--.',
                 Q: '--.-', R: '.-.', S: '...', T: '-',
                 U: '..-', V: '...-', W: '.--', X: '-..-',
                 Y: '-.--', Z: '--..', '1': '.----', '2': '..---',
                 '3': '...--', '4': '....-', '5': '.....', '6': '-....',
                 '7': '--...', '8': '---..', '9': '----.', '0': '-----' }
  dictionary.key(char).to_s
end

def decode_word(word_in_morse)
  word_in_ascii = ''

  word_in_morse.split.each do |char|
    word_in_ascii += decode_char(char)
  end

  word_in_ascii
end

def decode_msg(message)
  message_in_ascii = ''
  last_word = message.split('   ').last

  message.split('   ').each do |word|
    message_in_ascii += if word == last_word
                          decode_word(word).to_s
                        else
                          "#{decode_word(word)} "
                        end
  end

  puts message_in_ascii
end

decode_msg('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
