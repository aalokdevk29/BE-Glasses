class Frame < ApplicationRecord
  has_many :glasses
  enum status: [:inctive, :active]
end
