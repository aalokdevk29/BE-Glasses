class Frame < ApplicationRecord
  enum status: [:inctive, :active]
end
