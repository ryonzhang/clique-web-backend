class ClientsController < ApplicationController

  def index
    @clients = Client.all
    json_response(@clients || [])
  end

  def create
    @client = Client.create!(client_params)
    params[:categories].each do |cat|
      ClientCategory.create(client:@client,category:Category.find(cat))
    end
    ContractMailer.clique_email(@client).deliver
    json_response(@client, :created)
  end


  private
  def client_params
    params.permit(:name, :email, :company_name, :phone, :uen, :studio_count, :categories, :signature)
  end
end
