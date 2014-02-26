class FrentesController < ApplicationController
  # GET /frentes
  # GET /frentes.json
  def index
    @frentes = Frente.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @frentes }
    end
  end

  # GET /frentes/1
  # GET /frentes/1.json
  def show
    @frente = Frente.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @frente }
    end
  end

  # GET /frentes/new
  # GET /frentes/new.json
  def new
    @frente = Frente.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @frente }
    end
  end

  # GET /frentes/1/edit
  def edit
    @frente = Frente.find(params[:id])
  end

  # POST /frentes
  # POST /frentes.json
  def create
    @frente = Frente.new(params[:frente])

    respond_to do |format|
      if @frente.save
        format.html { redirect_to @frente, notice: 'Frente was successfully created.' }
        format.json { render json: @frente, status: :created, location: @frente }
      else
        format.html { render action: "new" }
        format.json { render json: @frente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /frentes/1
  # PUT /frentes/1.json
  def update
    @frente = Frente.find(params[:id])

    respond_to do |format|
      if @frente.update_attributes(params[:frente])
        format.html { redirect_to @frente, notice: 'Frente was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @frente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /frentes/1
  # DELETE /frentes/1.json
  def destroy
    @frente = Frente.find(params[:id])
    @frente.destroy

    respond_to do |format|
      format.html { redirect_to frentes_url }
      format.json { head :no_content }
    end
  end
end
