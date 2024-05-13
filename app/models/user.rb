class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true

  has_many :to_dos, dependent: :destroy
end
