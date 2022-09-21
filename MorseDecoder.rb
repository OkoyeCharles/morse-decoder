@letters = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}

def decode_char(char)
  decoded_char = @letters[char]
  return decoded_char
end

def decode_word(word)
  letters = word.split(' ')
  letters.each_with_index do |letter, index|
    letters[index] = decode_char(letters[index])
  end
  return letters.join('')
end

def decode_morse_code(morse_code)
  words = morse_code.split('   ')
  words.each_with_index do |word, index|
    words[index] = decode_word(word)
  end
  return words.join(' ')
end

puts decode_morse_code('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')