class AddcommentsController < ComtsController
  before_filter :find_comt
  # GET /addcomments.json
  def index
    @addcomments = Addcomment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @addcomments }
    end
  end

  def show
    @addcomment = Addcomment.find(params[:id])

    respond_to do |format|
      format.html 
      format.json { render json: @addcomment }
    end
  end

  def new
    @addcomment  = Addcomment.new
  end

  # GET /addcomments/1/edit
  def edit
     comt = Comt.find(params[:comt_id])
   @addcomment = comt.addcomments.find(params[:id])
  #   @addcomment=@comt.addcomment.find(params[:id])
   
  end

  def create
    @addcomment = Addcomment.new(params[:addcomment])
    @addcomment.comt = @comt

    if @addcomment.save
     #omtMailer.addcomment_notfication(current_user, @comt).deliver
      redirect_to @comt, notice: 'Comment was successfully created.'
    else
      render action: "new"
    end
  end

  # PUT /addcomments/1
  # PUT /addcomments/1.json
  def update
 comt = Comt.find(params[:comt_id])
     @addcomment=comt.addcomments.find(params[:id]) 
    respond_to do |format|
      if @addcomment.update_attributes(params[:addcomment])
        format.html { redirect_to [@addcomment.comt, @addcomment], notice: 'Addcomment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @addcomment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /addcomments/1
  # DELETE /addcomments/1.json
  def destroy
    @addcomment =Addcomment.find(params[:id])
    @addcomment.destroy

    respond_to do |format|

      format.html { redirect_to @addcomment.comt}
      format.json { head :no_content }
    end
  end

end