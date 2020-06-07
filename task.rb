# Подключаем встроенный в руби класс Date
# для работы с датами
# нужно будет строку преобразовать в дату
require 'date'

# Класс задача, разновидность базового класса "Запись"
class Task < Post

  def initialize
    super # вызываем конструктор родителя

    # инициализируем специфичное для Задачи поле - дедлайн
    @due_date = Time.now
  end

  # Этот метод пока пустой, он будет спрашивать 2 строки
  # описание задачи и дату дедлайна
  def read_from_console
    puts 'Что нужно сделать?'
    @text = STDIN.gets.strip

    puts 'К какому числу?', 'Укажите дату в формате ДД.ММ.ГГГГ, например: 12.03.2005'
    input = STDIN.gets.strip

    @due_date = Date.parse(input)
  end

  # Массив из трех строк: дедлайн задачи, описание и дата создания
  # Реализуем позже
  def to_strings
    time_string = "Создано: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")} \n\r \n\r"

    deadline = "Крайний срок: #{@due_date}"

    [deadline, @text, time_string]
  end
end
