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

   validate :validate_name

   def validate_name
     if User.where(email: name).exists?
       errors.add(:name, :invalid)
     end
   end

   after_create :create_default_conversation
   private

  def create_default_conversation
    Conversation.create(sender_id: 1, recipient_id: self.id) unless self.id == 1
  end
end
