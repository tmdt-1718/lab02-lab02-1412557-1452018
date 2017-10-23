class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:authentication_keys => [:login]
  has_many :conversations, :foreign_key => :sender_id
  validates :name,
            :presence => true,
            :uniqueness => {
              :case_sensitive => false
            } # etc.
     attr_accessor :login
     def self.find_for_database_authentication(warden_conditions)
      conditions = warden_conditions.dup
      if login = conditions.delete(:login)
        where(conditions.to_h).where(["lower(name) = :value OR lower(email) = :value", { :value => login.downcase }]).first
      elsif conditions.has_
        key?(:name) || conditions.has_key?(:email)
        where(conditions.to_h).first
      end
    end

    validate :validate_username
    def validate_username
      if User.where(email: name).exists?
        errors.add(:name, :invalid)
      end
    end
 
end
