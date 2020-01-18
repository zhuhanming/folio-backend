class PagesController < ApplicationController
  before_action :set_page, only: [:show, :update, :destroy, :change_name]

  def show
    render json: @page
  end
  
  def create
    puts "create"
    @page = Page.new(pagejson: params[:pagejson], name: params[:newname])
    if @page.save
      render json: @page
    else 
      render json: { error: @page.errors.full_messages }, status: 400
    end
  end

  def update
    puts "update"
    if @page
      if @page.update(pagejson: params[:pagejson], name: params[:newname]) #allow users to change page name?
        render json: @page, status: 200
      else 
        render json: { error: @page.errors.full_messages }, status: 400
      end
    else
      render json: { error: 'Page not found' }, status: 404
    end
  end

  # def change_name
  #   puts "update name"
  #   if @page
  #     if params[:newname]
  #       puts params[:newname]
  #       @page.update(name: params[:newname])
  #       render json: @page, status: 200
  #     else 
  #       render json: { error: @page.errors.full_messages }, status: 400
  #     end
  #   else
  #     render json: { error: 'Page not found' }, status: 404
  #   end
  # end

  private
  def set_page
    @page = Page.find_by(name: params[:name]) #index by name
  end
  
  def page_params
    params.permit(:pagejson, :name, :newname)
  end
end
