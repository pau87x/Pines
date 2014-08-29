class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :pins

  def avatar
    "http://gravatar.com/avatar/#{ Digest::MD5::hexdigest( self.email) }"
  end
end
