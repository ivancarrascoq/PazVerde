class FilteringController < ApplicationController
#Spree::HomeController#index
#  layout 'spree/layouts/spree_application'
  def filter
  end
  def index
    @title = "ComparaGrow"
    @id1 = params[:id1]
    @id2 = params[:id2]

  end
end
