class Photo < ApplicationRecord
  belongs_to :item

  mount_uploader :photo, PhotoUploader
end
