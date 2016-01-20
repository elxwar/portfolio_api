class User < ActiveRecord::Base
  has_many :articles, :galleries
end
