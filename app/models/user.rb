class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_and_belongs_to_many :movies
  before_destroy { movies.clear } # clears out this user's movies from join table when user is destroyed
  has_many :reviews, dependent: :destroy
end
