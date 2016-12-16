class Usuario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  devise :omniauthable, omniauth_providers: [:facebook, :twitter]

  validates :username, presence: true, uniqueness: true,
  					   length: {in: 5..20, too_short: "Al menos 5 " , too_long: "Maximo 20"}
  					   #format: {with: }

  def self.find_or_create_by_omniauth(auth)
  	usuario = Usuario.where(provider: auth[:provider], uid: auth[:uid]).first

  	unless usuario
  		usuario = Usuario.create(
  			nombre: auth[:nombre],
  			apellido: auth[:apellido],
  			username: auth[:username],
  			email: auth[:email],
  			uid: auth[:uid],
  			provider: auth[:provider],
  			password: Devise.friendly_token[0..20]
		)
  	end
  end
end
								