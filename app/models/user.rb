class User < ActiveRecord::Base
  # Include default devise modules.
  # removed email confirmation: :confirmable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :omniauthable
  include DeviseTokenAuth::Concerns::User
  has_many :articles
  has_many :galleries
end
