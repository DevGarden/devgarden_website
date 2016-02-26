# == Schema Information
#
# Table name: clients
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  website_url :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Client < ActiveRecord::Base

  has_many :client_users 
  has_many :users, through: :client_users 
  
  has_many :projects 
  
end
