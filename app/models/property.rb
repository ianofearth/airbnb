class Property < ActiveRecord::Base
  belongs_to :user
  has_many :images
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  validates :address, :presence => true
  validates :details, :presence => true
  validates :price, :presence => true
  validates_attachment_presence :avatar

end
