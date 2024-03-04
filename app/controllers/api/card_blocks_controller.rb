class Api::CardBlocksController < ApplicationController
  skip_before_action :authenticate_request

  def show
    card_block = CardBlock.find(params[:id])

    respond_to do |format|
      format.json { render json: card_block.as_json }
    end
  end
end
