class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
         
  has_many :comments  
  
  def display_name
    if nick.present?
      return nick
    else  
      return email.split('@').first
    end
  end          
end
