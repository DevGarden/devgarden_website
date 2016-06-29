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

require 'rails_helper'

RSpec.describe Deployment, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
