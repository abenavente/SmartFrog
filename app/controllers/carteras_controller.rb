class CarterasController < ApplicationController
  # GET /carteras
  # GET /carteras.json
  def index
    @carteras = Cartera.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @carteras }
    end
  end

  # GET /carteras/1
  # GET /carteras/1.json
  def show
    @cartera = Cartera.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cartera }
    end
  end

  # GET /carteras/new
  # GET /carteras/new.json
  def new
    @cartera = Cartera.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cartera }
    end
  end

  # GET /carteras/1/edit
  def edit
    @cartera = Cartera.find(params[:id])
  end

  # POST /carteras
  # POST /carteras.json
  def create
    @cartera = Cartera.new(params[:cartera])

    respond_to do |format|
      if @cartera.save
        format.html { redirect_to @cartera, notice: 'Cartera was successfully created.' }
        format.json { render json: @cartera, status: :created, location: @cartera }
      else
        format.html { render action: "new" }
        format.json { render json: @cartera.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /carteras/1
  # PUT /carteras/1.json
  def update
    @cartera = Cartera.find(params[:id])

    respond_to do |format|
      if @cartera.update_attributes(params[:cartera])
        format.html { redirect_to @cartera, notice: 'Cartera was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cartera.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carteras/1
  # DELETE /carteras/1.json
  def destroy
    @cartera = Cartera.find(params[:id])
    @cartera.destroy

    respond_to do |format|
      format.html { redirect_to carteras_url }
      format.json { head :no_content }
    end
  end
end
