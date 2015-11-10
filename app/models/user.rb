class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	# Source : http://www.theodinproject.com/ruby-on-rails/active-record-associations
    has_many :authored_projects, :foreign_key => "author_id", :class_name => "Project"
    has_many :edited_projects, :foreign_key => "editor_id", :class_name => "Project"


	# has_attached_file :photo
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

end
