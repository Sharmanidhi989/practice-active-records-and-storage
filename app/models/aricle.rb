class Aricle < ApplicationRecord
  has_many :pictures, as: :imageable
 # mount_uploader :avatar, AvatarUploaders
end
