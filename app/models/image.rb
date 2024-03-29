class Image < ApplicationRecord
  belongs_to :user
  mount_uploader :picture, PictureUploader
  validates :name,  presence: true, length: { in: 5..100 }
  validates :picture,  presence: true

  validate :picture_size
  
  private

  def picture_size
    if picture.size > 5.megabytes
      errors.add(:picture, "should be less than 5MB")
    end
  end
end
