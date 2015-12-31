class Satire < ActiveRecord::Base
  has_attached_file :image,
                    :storage => :s3,
                    :s3_credentials => Proc.new{|a| a.instance.s3_credentials }
  def s3_credentials
    {:bucket => "xyz", :access_key_id => "xyz", :secret_access_key => "xyz"}
  end

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates_attachment_file_name :image, matches: [/png\Z/, /jpe?g\Z/]
  validates :image, presence: true
  validates :author, presence: true
  validates :title, presence: true, uniqueness: true
  validates :body, presence: true, length: { minimum: 50 }
end