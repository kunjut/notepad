class Link < Post

  def initialize
    super # дерни этот же метод у род.класса

    # потом инициализируем специфичное для ссылки поле
    @url = ''
  end

  # Этот метод пока пустой, он будет спрашивать 2 строки
  # адерес ссылки и описание
  def read_from_console
    puts 'Адрес ссылки:'
    @url = STDIN.gets.strip

    puts 'Что за ссылка?'
    @text = STDIN.gets.strip
  end

  # Массив их трех строк: адрес ссылки, описание и дата создания
  # Реализуем позже
  def to_strings
    time_string = "Создано: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")} \n\r \n\r"

    [@url, @text, time_string]
  end
end
