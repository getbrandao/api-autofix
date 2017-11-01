class Api::V1::Billing::CreditsController < ApplicationController
  def index
    @credit = {name: 'teste'}
    render json: @credit
  end
end
