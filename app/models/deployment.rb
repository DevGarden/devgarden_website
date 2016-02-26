# == Schema Information
#
# Table name: deployments
#
#  id          :integer          not null, primary key
#  project_id  :integer
#  phase       :string(255)
#  url         :string(255)
#  server_ip   :string(255)
#  domain_name :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Deployment < ActiveRecord::Base

  belongs_to :project  

  enum phase: [:development, :stage, :production]

end
