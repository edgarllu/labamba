class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :roles

  def admin?
    !!(roles.find_by_nombre('Admin'))
  end

  def editor?
    !!(roles.find_by_nombre('Editor'))
  end

  def basic?
    !!(roles.find_by_nombre('Basic'))
  end
  
end
