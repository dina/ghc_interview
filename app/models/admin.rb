class Admin < ActiveRecord::Base

  devise :database_authenticatable, :rememberable, :trackable, :timeoutable

end
