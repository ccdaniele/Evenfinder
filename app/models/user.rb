class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    has_many :eventusers
    has_many :events, through: :eventusers

def coolest_host
  Event.most_popular.users.first.name
end

  

end
