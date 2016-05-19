# == Schema Information
#
# Table name: projects
#
#  id                :integer          not null, primary key
#  client_id         :integer
#  name              :string(255)
#  description       :string(1000)
#  trello_project_id :string(255)
#  toggl_project_id  :string(255)
#  google_drive_url  :string(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Project < ActiveRecord::Base

  belongs_to :client 

  has_many :deployments

end
