class FrameSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :status, :stock, :price
end
