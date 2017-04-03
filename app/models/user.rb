class User < ApplicationRecord
  
  attr_accessor :password, :password_confirmation
  before_save   :downcase_email
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true

 
  private

    # Converts email to all lower-case.
    def downcase_email
      self.email = email.downcase
    end
end

