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

require 'rails_helper'

RSpec.describe ClientUser, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
