class Project < ApplicationRecord
    belongs_to :organization

    has_many :requests

     mount_uploader :image, ImageUploader

    def short_entry
        if description.length > 120
           description[0..120] + "..."
        else
            description
        end
    end
end
