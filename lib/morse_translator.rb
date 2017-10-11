
class Translate

  def initialize
  end

  def eng_to_morse_alphabet
    eng_to_morse_alphabet = {
      'a' => '.-',
      'b' => '-...',
      'c' => '-.-.',
      'd' => '-..',
      'e' => '.',
      'f' => '..-.',
      'g' => '--.',
      'h' => '....',
      'i' => '..',
      'j' => '.---',
      'k' => '-.-',
      'l' => '.-..',
      'm' => '--',
      'n' => '-.',
      'o' => '---',
      'p' => '.--.',
      'q' => '--.-',
      'r' => '.-.',
      's' => '...',
      't' => '-',
      'u' => '.-',
      'v' => '...-',
      'w' => '.--',
      'x' => '-..-',
      'y' => '-.--',
      'z' => '--..',
      '1' => '.---',
      '2' => '..---',
      '3' => '...--',
      '4' => '....--',
      '5' => '.....',
      '6' => '-....',
      '7' => '--...',
      '8' => '---..',
      '9' => '----.',
      '0' => '-----',
      ' ' => ' '
    }
  end

  def morse_to_eng_alphabet
    eng_to_morse_alphabet.invert
  end

  def eng_to_morse(eng_to_morse_text)
     (eng_to_morse_text).downcase.gsub(/[abcdefghijklmnopqrstuvwxyz1234567890]/, eng_to_morse_alphabet)
  end

  def from_file(file_name)
    input = File.read(file_name).chomp
    eng_to_morse(input)
  end

  # def morse_to_eng(morse_to_eng_text)
  #   (morse_to_eng_text).downcase.gsub(/
  #     [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.",
  #       "--.-",".-.","...","-",".-","...-",".--","-..-",
  #       "-.--","--..",".---","..---","...--","....--",".....",
  #       "-....","--...","---..","----.","-----"]/, morse_to_eng_alphabet)
  # end



end
