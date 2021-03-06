class User < ActiveRecord::Base
  has_secure_password
  has_many :reviews

  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 7 }
  validates :first_name, presence: true
  validates :last_name, presence: true

  def self.authenticate_with_credentials(email, password)
    user = User.find_by_email(email.strip.downcase)
    user && user.authenticate(password)
  end

end
