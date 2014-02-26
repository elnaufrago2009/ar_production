class InsumosController < ApplicationController
  # GET /insumos
  # GET /insumos.json
  def index
    @insumos = Insumo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @insumos }
    end
  end

  # GET /insumos/1
  # GET /insumos/1.json
  def show
    @insumo = Insumo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @insumo }
    end
  end

  # GET /insumos/new
  # GET /insumos/new.json
  def new
    @insumo = Insumo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @insumo }
    end
  end

  # GET /insumos/1/edit
  def edit
    @insumo = Insumo.find(params[:id])
  end

  # POST /insumos
  # POST /insumos.json
  def create
    @insumo = Insumo.new(params[:insumo])

    respond_to do |format|
      if @insumo.save
        format.html { redirect_to @insumo, notice: 'Insumo was successfully created.' }
        format.json { render json: @insumo, status: :created, location: @insumo }
      else
        format.html { render action: "new" }
        format.json { render json: @insumo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /insumos/1
  # PUT /insumos/1.json
  def update
    @insumo = Insumo.find(params[:id])

    respond_to do |format|
      if @insumo.update_attributes(params[:insumo])
        format.html { redirect_to @insumo, notice: 'Insumo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @insumo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /insumos/1
  # DELETE /insumos/1.json
  def destroy
    @insumo = Insumo.find(params[:id])
    @insumo.destroy

    respond_to do |format|
      format.html { redirect_to insumos_url }
      format.json { head :no_content }
    end
  end
end
