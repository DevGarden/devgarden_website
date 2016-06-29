require 'spec_helper'

describe Upmin::ActiveRecord::Model do

  if ActiveRecord::Base.respond_to? :enum
    describe ".attribute_type" do
      it "correctly identifies an enum attribute" do
        model = Upmin::Model.find_class(UserWithRoleEnum).new
        attribute = Upmin::Attribute.new(model, :role)
        expect(attribute.type).to eq(:enum)
      end
    end
  end

end
