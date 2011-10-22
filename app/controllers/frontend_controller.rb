class FrontendController < ApplicationController
  def show
    render params[:template]
  end
end