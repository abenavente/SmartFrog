class CampaingsController < ApplicationController
  before_filter :authenticate_supervisor!
  # GET /campaings
  # GET /campaings.json
  def index
    @campaings = Campaing.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @campaings }
    end
  end

  # GET /campaings/1
  # GET /campaings/1.json
  def show
    @campaing = Campaing.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @campaing }
    end
  end

  # GET /campaings/new
  # GET /campaings/new.json
  def new
    @campaing = Campaing.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @campaing }
    end
  end

  # GET /campaings/1/edit
  def edit
    @campaing = Campaing.find(params[:id])
  end

  # POST /campaings
  # POST /campaings.json
  def create
    @campaing = Campaing.new(params[:campaing])

    respond_to do |format|
      if @campaing.save
        format.html { redirect_to @campaing, notice: 'Campaing was successfully created.' }
        format.json { render json: @campaing, status: :created, location: @campaing }
      else
        format.html { render action: "new" }
        format.json { render json: @campaing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /campaings/1
  # PUT /campaings/1.json
  def update
    @campaing = Campaing.find(params[:id])

    respond_to do |format|
      if @campaing.update_attributes(params[:campaing])
        format.html { redirect_to @campaing, notice: 'Campaing was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @campaing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campaings/1
  # DELETE /campaings/1.json
  def destroy
    @campaing = Campaing.find(params[:id])
    @campaing.destroy

    respond_to do |format|
      format.html { redirect_to campaings_url }
      format.json { head :no_content }
    end
  end
end
