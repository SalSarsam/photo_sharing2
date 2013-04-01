class ComtsController < ApplicationController
before_filter :authenticate_user!, :except => [:show, :index]
before_filter :find_comt, only: [:show, :edit, :update, :destroy]

  def index
    @comts = Comt.all
    @comts = Comt.search(params[:search])
  end

  def show
  
   @addcomment= Addcomment.new
    @like=Like.new

     end

  def new
    @comt = Comt.new
    4.times { @comt.pics.build }
  end
 
  def create
    @comt = Comt.new(params[:comt])
    @comt.user = current_user
    if @comt.save
      redirect_to @comt, :notice => "Comment Created Successfully  ."
    else
      render :action => 'new'
    end
  end

  def edit
    #@comt = Comt.find(params[:id])
    4.times { @comt.pics.build }
  end

  def update
    #comt = Comt.find(params[:id])
    if @comt.update_attributes(params[:comt])
      redirect_to @comt, :notice  => "Comment Updated Successfully ."
    else
      render :edit
    end
  end

  def destroy
    #@comt = Comt.find(params[:id])
    @comt.destroy
    redirect_to comts_path, :notice => "Successfully destroyed comment."
  end

 private

  def find_comt
    @comt = Comt.find(params[:comt_id] || params[:id])
  end

end