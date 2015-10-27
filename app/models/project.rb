class Project < ActiveRecord::Base

# Source : http://www.theodinproject.com/ruby-on-rails/active-record-associations

  belongs_to :author, :class_name => "User"
  belongs_to :editor, :class_name => "User"


  has_attached_file :icon, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :icon, content_type: /\Aimage\/.*\Z/

  
  #specify that the manuscript file is a paperclip file attachment
  has_attached_file :file
  

end
