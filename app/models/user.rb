class User < ActiveRecord::Base
  has_many :shots
  has_many :projects
  has_many :comments
end
