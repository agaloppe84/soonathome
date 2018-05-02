class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title, type: String
  field :body, type: String
  field :author, type: String
  belongs_to :category

  def formatted_date
    self.created_at.strftime(" %d %b %Y")
  end

end
