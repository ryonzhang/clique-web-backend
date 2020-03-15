class PotentialClientsController < ApplicationController
  def index
    @potentials = PotentialClient.all
    json_response(@potentials || [])
  end

  def create
    @potential = PotentialClient.create!(potential_client_params)
    json_response(@potential, :created)
  end


  private
  def potential_client_params
    params.permit(:name, :email, :phone)
  end
end

