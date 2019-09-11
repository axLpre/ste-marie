class User < ApplicationRecord
  # Include default devise modules. Others available are:
  has_many :articles
  before_save { self.email = email.downcase}
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
