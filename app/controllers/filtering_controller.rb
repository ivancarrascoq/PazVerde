#class FilteringController < ApplicationController
class FilteringController < Spree::StoreController
   helper 'spree/products'
   respond_to :html
#  layout 'spree/layouts/spree_application'
  def filter
    @searcher = build_searcher(params.merge(include_images: true))
    @products = @searcher.retrieve_products
    @products = @products.includes(:possible_promotions) if @products.respond_to?(:includes)
    @taxonomies = Spree::Taxonomy.includes(root: :children)
  end
  def index
#    Spree::Config[:layout]='layouts/application'
#    render :partial => '/spree/shared/head', :locals => {title: "ComparaGrow"}
    @id1 = params[:id1]
    @id2 = params[:id2]
    @searcher = build_searcher(params.merge(include_images: true))
    @products = @searcher.retrieve_products
    @products = @products.includes(:possible_promotions) if @products.respond_to?(:includes)
    @taxonomies = Spree::Taxonomy.includes(root: :children)

  end
end
