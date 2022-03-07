class Frame < ApplicationRecord
  enum status: [:Inctive, :Active]
end
