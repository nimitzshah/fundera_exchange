class User < ActiveRecord::Base
  attr_accessor :password,:email
  validates_confirmation_of :password, unless: :guest?
  before_save :encrypt_password

  def self.new_guest
    new {|user| user.guest = true}
  end

  def name
    guest? "Guest" : email
  end

  def encrypt_password
    self.password_salt = BCrypt::Engine.generate_salt
    self.password_hash = BCrypt::Engine.hash_secret(password,password_salt)
  end

  def self.authenticate(email,password)
    user = User.where(email: email).first
    if user && user.password_hash == BCrypt::Engine.hash_secret(password,user.password_salt)
      user
    else
      nil
    end
  end
end
