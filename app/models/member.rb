class Member < ApplicationRecord

  def create
    Member.create(member_params)
  end

  private

  def member_params
    params.require(:email).permit(:password, :password_confirmation)
  end

  attr_accessor :password
  before_save :encrypt_password

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email

  def self.authenticate(email, password)
    member = find_by_email(email)
    if member && member.password_hash == BCrypt::Engine.hash_secret(password, member.password_salt)
      member
    else
      nil
    end
  end

  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end
end
