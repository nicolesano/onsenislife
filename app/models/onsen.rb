class Onsen < ApplicationRecord
  validates :name, presence: true
  validates :photo, presence: true

  mount_uploader :photo, PhotoUploader
end
