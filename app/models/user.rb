class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :ldap_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
<<<<<<< HEAD
  attr_accessible :email, :password, :password_confirmation

=======
  attr_accessible :email, :password, :password_confirmation, :remember_me
>>>>>>> 8d166e61b022cc2c65b33bb320a812e79b048cd4
end
