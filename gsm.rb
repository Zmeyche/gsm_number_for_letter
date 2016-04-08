KEYBOARD = [
  ['1'],
  ['a','b','c','2'],
  ['d','e','f','3'],
  ['g','h','i','4'],
  ['j','k','l','5'],
  ['m','n','o','6'],
  ['p','q','r','s','7'],
  ['t','u','v','8'],
  ['w','x','y','z','9'],
  ['*'],
  [' ','0'],
  ['#'],
]

def button_presses(message)
  message.downcase.each_char.map do|c|
    KEYBOARD.select { |button| button.include?(c) }.flatten.index(c) + 1
  end.inject(:+)
end
