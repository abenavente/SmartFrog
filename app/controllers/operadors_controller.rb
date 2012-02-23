class OperadorsController < ApplicationController
  # GET /operadors
  # GET /operadors.json
  def index
    @operadors = Operador.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @operadors }
    end
  end

  # GET /operadors/1
  # GET /operadors/1.json
  def show
    @operador = Operador.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @operador }
    end
  end

  # GET /operadors/new
  # GET /operadors/new.json
  def new
    @operador = Operador.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @operador }
    end
  end

  # GET /operadors/1/edit
  def edit
    @operador = Operador.find(params[:id])
  end

  # POST /operadors
  # POST /operadors.json
  def create
    @operador = Operador.new(params[:operador])

    respond_to do |format|
      if @operador.save
        format.html { redirect_to @operador, notice: 'Operador was successfully created.' }
        format.json { render json: @operador, status: :created, location: @operador }
      else
        format.html { render action: "new" }
        format.json { render json: @operador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /operadors/1
  # PUT /operadors/1.json
  def update
    @operador = Operador.find(params[:id])

    respond_to do |format|
      if @operador.update_attributes(params[:operador])
        format.html { redirect_to @operador, notice: 'Operador was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @operador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /operadors/1
  # DELETE /operadors/1.json
  def destroy
    @operador = Operador.find(params[:id])
    @operador.destroy

    respond_to do |format|
      format.html { redirect_to operadors_url }
      format.json { head :no_content }
    end
  end
end
