class DownloadFile < ActiveRecord::Base

  acts_as_indexed :fields => [:title]

  validates :title, :presence => true, :uniqueness => true
  
  belongs_to :file, :class_name => 'Resource'
  belongs_to :thumb, :class_name => 'Image'
  belongs_to :download_category  
   
end
