class User < ActiveRecord::Base
    has_many :posts
    has_many :comments
    validates :name, presence: true, length: {maximum: 20}, uniqueness: true
    validates :email, presence: true, uniqueness: true
end
