class Comment < ApplicationRecord
  belongs_to :user
  
  validates :rsname, presence: true
  validates :content, presence: true
  
  mount_uploader :imgURL1, ImageUploader
  mount_uploader :imgURL2, ImageUploader
  mount_uploader :imgURL3, ImageUploader
  
  extend FriendlyId
  friendly_id :rsname
  
  def normalize_friendly_id(input)
    input.to_s.to_slug.normalize.to_s
  end
end
