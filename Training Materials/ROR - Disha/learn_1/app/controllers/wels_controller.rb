class WelsController < ApplicationController
  def index
    @welcomes=Wel.all
  end

  def new
    @welcome=Wel.new
  end

  def create
    @welcome=Wel.new(:firstname=>params[:wel][:firstname],:lastname=>params[:wel][:lastname],:desig=>params[:wel][:desig],:origin=>params[:wel][:origin])
     if @welcome.valid?
       @welcome.save
       redirect_to wel_path(@welcome)
     else
       render 'new'
    end
  end
    def show
       @welcome=Wel.find(params[:id])
    end
end







