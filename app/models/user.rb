# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
  private

  def user_params  
    params.require(user_params).permit(:email, :name)

  end

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :name, :presence   => true,
                   :length     =>{:maximum=>50}
  validates :email, :presence  => true,
                    :format    => {:with =>email_regex },
                    :uniqueness=> {:case_sensitive =>false}
  
end
