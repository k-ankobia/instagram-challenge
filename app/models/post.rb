class Post < ApplicationRecord
  #   validate :image_presence
  # def image_presence
  #   errors.add(:image, "can't be blank") unless image.attached?
  # end
  
  # belongs_to :user

  has_one_attached :image
end
