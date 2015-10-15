class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :shift_detail, inverse_of: :user, dependent: :restrict_with_exception

  searchable do
  	text :name
  	text :email
  end
end
