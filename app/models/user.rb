class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  #:lockable, :timeoutable, :omniauthable : recoverable, :rememberable, :trackable, :validatable, :registerable, :rememberable, :database_authenticatable,
  devise :database_authenticatable, :omniauthable, :omniauth_providers => [:google_oauth2]

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :provider, :uid, :name

  def self.find_for_google_oauth2(access_token, signed_in_resource=nil)
    data = access_token.info
    user = User.where(:email => data["email"]).first

    unless user
      user = User.create(name: data["name"],
                         email: data["email"],
                         password: Devise.friendly_token[0, 20],
                         provider: 'Google',
                         uid: data["name"]
      )
    end
    user
  end

end
