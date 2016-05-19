# == Schema Information
#
# Table name: deployments
#
#  id          :integer          not null, primary key
#  project_id  :integer
#  phase       :integer
#  url         :string(255)
#  server_ip   :string(255)
#  domain_name :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryGirl.define do
  factory :deployment do
    project_id 1
phase "MyString"
url "MyString"
server_ip "MyString"
domain_name "MyString"
  end

end
