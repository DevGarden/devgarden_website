class Echo < Grape::API

  desc "Echo" do 
    detail "Test the DevGarden API with a simple 'echo' call"
  end 
  params do
    requires :text, type: String
  end
  
  namespace :echo do 
    get do
      {text: params[:text]}
    end
  end
end