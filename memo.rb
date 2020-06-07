# Класс "Заметка", разновидность базового класса "Запись"
class Memo < Post

  # Отдельный конструктор здесь не нужен
  # так как он совпадает с родительским

  # Этот метод пока пустой, он будет спрашивать ввод содержимого Заметки
  # наподобие программы Дневник из "базового блока" курса
  def read_from_console
    puts 'Новая заметка (все, что пишите до строчки "end"):'

    @text = []
    line = nil

    while line != 'end'
      line = STDIN.gets.strip
      @text << line
    end

    @text.pop
  end

  # Этот метод будет возвращать массив из строк заметки +
  # строка - дата создания
  def to_strings
    time_string = "Создано: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")} \n\r \n\r"

    @text.unshift(time_string)
  end
end
