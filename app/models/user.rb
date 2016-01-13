class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #validates_presence_of :name, :email, :address, :postal_code, :city, :phone

  def full_address
	<<EOF
#{address}
#{postal_code} #{city}
#{state}
EOF
  end
end


