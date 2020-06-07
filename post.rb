# Базовый класс "Запись"
# Задает основные свойства и методы, присущие всем разновидностям записи
class Post
  # Статические методы
  def self.post_types
    [Memo, Link, Task]
  end

  def self.create(type_index)
    post_types[type_index].new
  end

  # Конструктор
  def initialize
    @text = nil # массив сторк записи - пока пустой
    @created_at = Time.now # дата создания записи
  end

  # Этот метод вызывается в программе, когда нужно
  # считать ввод пользователя и записать его в нужные поля объекта
  def read_from_console
    # todo
    # должен быть реализован классами-детьми,
    # которые знают как именно считывать свои данные из консоли
  end

  # Этот метод возвращает состояние объекта в виде массива строк,
  # готовых к записи в файл
  def to_strings
    # todo
    # должен быть реализован классами-детьми,
    # которые знают как именно хранить себя в файле
  end

  # Этот метод записывает текущее состояние объекта в файл
  # Будет только у родителя
  def save
    file = File.new(file_path, 'w:UTF-8')

    for item in to_strings do
      file.puts(item)
    end

    file.close
  end

  def file_path
    current_path = File.dirname(__FILE__)

    file_name = @created_at.strftime("#{self.class.name}_%Y-%m-%d_%H-%M-%S.txt")

    current_path + "/" + file_name
  end
end
