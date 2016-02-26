# == Schema Information
#
# Table name: projects
#
#  id                :integer          not null, primary key
#  client_id         :string(255)
#  name              :string(255)
#  github_repo       :string(255)
#  jira_project_id   :string(255)
#  toggle_project_id :string(255)
#  google_drive_url  :string(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Project < ActiveRecord::Base

  belongs_to :client 

  has_many :deployments

end
