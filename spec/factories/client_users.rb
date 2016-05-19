# == Schema Information
#
# Table name: client_users
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  client_id  :integer
#  role       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :client_user do
    user_id 1
client_id 1
role "MyString"
  end

end
