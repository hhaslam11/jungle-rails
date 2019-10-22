class User < ActiveRecord::Base
  has_secure_password

  validates_uniqueness_of :email, case_sensitive: false
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
  before_save { self.email.downcase! }

  def self.authenticate_with_credentials(email, password)
    user = User.find_by_email(email.downcase)

    if user && user.authenticate(password)
      return user
    else
      return nil
    end
  end
  
end
