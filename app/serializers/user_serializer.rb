class UserSerializer < ActiveModel::Serializer
  has_many :sales
  attributes :id, :username, :email, :location, :avatar

end
