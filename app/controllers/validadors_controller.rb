class ValidadorsController < ApplicationController
  # GET /validadors
  # GET /validadors.json
  def index
    @validadors = Validador.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @validadors }
    end
  end

  # GET /validadors/1
  # GET /validadors/1.json
  def show
    @validador = Validador.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @validador }
    end
  end

  # GET /validadors/new
  # GET /validadors/new.json
  def new
    @validador = Validador.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @validador }
    end
  end

  # GET /validadors/1/edit
  def edit
    @validador = Validador.find(params[:id])
  end

  # POST /validadors
  # POST /validadors.json
  def create
    @validador = Validador.new(params[:validador])

    respond_to do |format|
      if @validador.save
        format.html { redirect_to @validador, notice: 'Validador was successfully created.' }
        format.json { render json: @validador, status: :created, location: @validador }
      else
        format.html { render action: "new" }
        format.json { render json: @validador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /validadors/1
  # PUT /validadors/1.json
  def update
    @validador = Validador.find(params[:id])

    respond_to do |format|
      if @validador.update_attributes(params[:validador])
        format.html { redirect_to @validador, notice: 'Validador was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @validador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /validadors/1
  # DELETE /validadors/1.json
  def destroy
    @validador = Validador.find(params[:id])
    @validador.destroy

    respond_to do |format|
      format.html { redirect_to validadors_url }
      format.json { head :no_content }
    end
  end
end
