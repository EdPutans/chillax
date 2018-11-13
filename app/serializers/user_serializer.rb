class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :name, :comments, :user_destinations
end
