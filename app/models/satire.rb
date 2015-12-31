class Satire < ActiveRecord::Base
  has_attached_file :image
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates_attachment_file_name :image, matches: [/png\Z/, /jpe?g\Z/]
  validates :image, presence: true
  validates :author, presence: true
  validates :title, presence: true, uniqueness: true
  validates :body, presence: true, minimum: 50
end