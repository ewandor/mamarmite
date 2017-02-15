class Cook < ApplicationRecord
  has_many :bookings
  belongs_to :user
  has_attachment :photos_home
  validates :speciality, presence: true
  validates :home_style, presence: true
  validates :age, presence: true
  validates :capacity, presence: true
  validates :nickname, presence: true
  validates :motto, presence: true
  validates :price, presence: true
  validates :address_street, presence: true
  validates :address_town, presence: true
  validates :zipcode, presence: true
  validates :address_street, :uniqueness => {:scope => [:address_town, :zipcode]}

end

