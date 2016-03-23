class Post < ActiveRecord::Base
  belongs_to :challenge
  belongs_to :user
  acts_as_votable

  has_attached_file :image, styles: { medium: "300x300>", thumb: "#100x100" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
