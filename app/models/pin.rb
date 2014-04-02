class Pin < ActiveRecord::Base
  belongs_to :user
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>"}, :default_url => "/images/:style/sushi.png"

  validates :image, presence: true
  validates :description, presence: true
end
