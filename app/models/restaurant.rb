class Restaurant < ApplicationRecord
  extend FriendlyId
  friendly_id :name
  
  def normalize_friendly_id(input)
    input.to_s.to_slug.normalize.to_s
  end

end
