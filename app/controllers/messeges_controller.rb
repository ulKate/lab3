class MessegesController < ApplicationController
  # GET /messeges
  # GET /messeges.json
  def index
    @messeges = Messege.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @messeges }
    end
  end

  # GET /messeges/1
  # GET /messeges/1.json
  def show
    @messege = Messege.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @messege }
    end
  end

  # GET /messeges/new
  # GET /messeges/new.json
  def new
    @messege = Messege.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @messege }
    end
  end

  # GET /messeges/1/edit
  def edit
    @messege = Messege.find(params[:id])
  end

  # POST /messeges
  # POST /messeges.json
  def create
    @messege = Messege.new(params[:messege])

    respond_to do |format|
      if @messege.save
        format.html { redirect_to @messege, notice: 'Messege was successfully created.' }
        format.json { render json: @messege, status: :created, location: @messege }
      else
        format.html { render action: "new" }
        format.json { render json: @messege.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /messeges/1
  # PUT /messeges/1.json
  def update
    @messege = Messege.find(params[:id])

    respond_to do |format|
      if @messege.update_attributes(params[:messege])
        format.html { redirect_to @messege, notice: 'Messege was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @messege.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /messeges/1
  # DELETE /messeges/1.json
  def destroy
    @messege = Messege.find(params[:id])
    @messege.destroy

    respond_to do |format|
      format.html { redirect_to messeges_url }
      format.json { head :no_content }
    end
  end
end
