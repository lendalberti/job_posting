class User < ApplicationRecord

  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :email
  validates_presence_of :phone

  def fullname
    first_name + ' ' + last_name
  end

end
