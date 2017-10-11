gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/morse_translator'

class TranslatorTest < Minitest::Test

  def test_the_class_instantiates
     translator = Translate.new

     assert_instance_of Translate, translator

   end

   def test_it_can_return_lower_case_letters
     translator = Translate.new

     assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse("hello world")
   end

   def test_it_can_return_regarless_of_case
     translator = Translate.new

     assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse("HeLlO wOrLd")
    end

   def test_it_can_translate_numbers
     translator = Translate.new

     assert_equal "-......-.. .-.-.. ...-- ..........--....", translator.eng_to_morse("There are 3 ships")
   end

   def test_it_can_translate_test_via_a_file
     translator = Translate.new

     assert_equal ".. .--- ..-. .- ..-....-...", translator.from_file("/Users/papercrane01/Documents/turing/1module/morse_translator/lib/input.txt")
   end

   def test_it_can_translate_morse_back_to_english
     skip
     translator = Translate.new

     assert_equal "hello world", translator.morse_to_eng("......-...-..--- .-----.-..-..-..")
   end

 end
