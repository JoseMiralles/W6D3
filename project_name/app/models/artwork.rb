class Artwork < ApplicationRecord

    validates :title, :image_url, presence: true
    validates :artist_id, uniqueness: {
        scope: :title,
        message: "It has to be unique!"
    }

    belongs_to :artist,
        foreign_key: :artist_id,
        class_name: :User

end