class AbonadosController < ApplicationController
  # GET /abonados
  # GET /abonados.json
  def index
    @abonados = Abonado.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @abonados }
    end
  end

  # GET /abonados/1
  # GET /abonados/1.json
  def show
    @abonado = Abonado.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @abonado }
    end
  end

  # GET /abonados/new
  # GET /abonados/new.json
  def new
    @abonado = Abonado.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @abonado }
    end
  end

  # GET /abonados/1/edit
  def edit
    @abonado = Abonado.find(params[:id])
  end

  # POST /abonados
  # POST /abonados.json
  def create
    @abonado = Abonado.new(params[:abonado])

    respond_to do |format|
      if @abonado.save
        format.html { redirect_to @abonado, notice: 'Abonado was successfully created.' }
        format.json { render json: @abonado, status: :created, location: @abonado }
      else
        format.html { render action: "new" }
        format.json { render json: @abonado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /abonados/1
  # PUT /abonados/1.json
  def update
    @abonado = Abonado.find(params[:id])

    respond_to do |format|
      if @abonado.update_attributes(params[:abonado])
        format.html { redirect_to @abonado, notice: 'Abonado was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @abonado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /abonados/1
  # DELETE /abonados/1.json
  def destroy
    @abonado = Abonado.find(params[:id])
    @abonado.destroy

    respond_to do |format|
      format.html { redirect_to abonados_url }
      format.json { head :no_content }
    end
  end
end
