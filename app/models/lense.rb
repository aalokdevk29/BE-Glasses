class Lense < ApplicationRecord
  has_many :glasses
  enum prescription_type: [:fashion, :single_vision, :varifocals]
  enum lens_type: [:classic, :blue_light, :transition]
end
