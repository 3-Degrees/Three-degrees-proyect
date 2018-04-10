class Project < ApplicationRecord
    belongs_to :organization

     mount_uploader :image, ImageUploader
end
