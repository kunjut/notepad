require_relative 'post'
require_relative 'link'
require_relative 'memo'
require_relative 'task'

puts 'Привет, я твой блокнот!',
     'Что хотите записать в блокнот?'

choices = Post.post_types

choice = nil
until (1..3).include?(choice)
# until choice > 0 && choice <= choices.size
  puts "\nВыберите цифру соответствующую типу записи:"

  choices.each_with_index do |type, index|
    puts "\t#{index + 1}: #{type}"
  end

  choice = STDIN.gets.to_i
end

entry = Post.create(choice - 1)
entry.read_from_console
entry.save