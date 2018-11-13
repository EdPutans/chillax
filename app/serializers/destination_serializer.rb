class DestinationSerializer < ActiveModel::Serializer
  attributes :id, :title, :price, :content, :comments, :user_destinations, :pictures, :months
end
