class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :password, :first_name, :last_name, :address1, :address2, :city, :country, :postcode, :mobile, :telephone
end
