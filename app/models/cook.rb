class Cook < ApplicationRecord
 geocoded_by :address
 after_validation :geocode, if: :address_changed?
 has_many :bookings, dependent: :destroy
 belongs_to :user
 has_attachment :cooker_photo
 has_attachments :recipe_photos, maximum: 5
 has_attachments :location_photos, maximum: 5
 validates :speciality, presence: true
  # validates :home_style, presence: true
  # validates :age, presence: true
  # validates :capacity, presence: true
  validates :nickname, presence: true
  # validates :motto, presence: true
  validates :price, presence: true
  # validates :address_street, presence: true
  # validates :address_town, presence: true
  # validates :zipcode, presence: true
  # validates :address_street, :uniqueness => {:scope => [:address_town, :zipcode]}

end

