class Comment < ApplicationRecord
  belongs_to :user
  
  validates :rsname, presence: true
  validates :content, presence: true
  
  mount_uploader :imgURL1, ImageUploader
  mount_uploader :imgURL2, ImageUploader
  mount_uploader :imgURL3, ImageUploader
  
end
