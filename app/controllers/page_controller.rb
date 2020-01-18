class PageController < ApplicationController
  before_action :set_page, only: [:show, :update, :destroy]

  def show
    render json: @page
  end
  
  def create
    @page = Page.new(page_params)
    if @page.save
      render json: @page
    else 
      render json: { error: @page.errors.full_messages }, status: 400
    end
  end

  def update
    if @page
      if @page.update(page_params) #allow users to change page name?
        render json: { message: 'Page updated' }, status: 200
      else 
        render json: { error: @page.errors.full_messages }, status: 400
      end
    else
      render json: { error: 'Page not found' }, status: 404
    end
  end

  private
  def set_page
    @page = Page.find(params[:name]) #index by name
  end
  
  def page_params
    params.permit(:pagejson, :name)
  end
end
