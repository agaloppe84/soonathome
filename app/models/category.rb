class Category
  include Mongoid::Document
  field :name, type: String
  has_many :posts

  def dynamic_color
    first_letter = self.name.downcase.chars.first
    if ("a".."d").to_a.include?(first_letter)
      return "rgb(200,200,100)"
    elsif ("e".."i").to_a.include?(first_letter)
      return "rgb(100,200,200)"
    elsif ("j".."m").to_a.include?(first_letter)
      return "rgb(200,100,100)"
    elsif ("n".."r").to_a.include?(first_letter)
      return "rgb(150,200,150)"
    elsif ("s".."z").to_a.include?(first_letter)
      return "rgb(80,230,200)"
    end
  end

end
