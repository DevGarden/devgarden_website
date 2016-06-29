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

class Deployment < ActiveRecord::Base

  belongs_to :project  

  enum phase: [:development, :staging, :production]

  def check_server_status
    u = build_url 
    h = {id: id, url: u} 

    Rails.logger.info "Checking status[#{project.name}][#{self.phase}] : #{u}"
    begin
      r = Faraday.new(u).get
      h[:status] = r.status
    rescue => e 
      h[:status] = -1 
      h[:error_message] = e.message 
    end
    h
  end

  def build_url
    return url if url.present?
    return "http://#{project.name}.staging.devgarden.io" if self.staging?
    return "http://#{project.name}.devgarden.io" if self.production?
    return "???"
  end
end
