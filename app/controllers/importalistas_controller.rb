class ImportalistasController < ApplicationController
  # GET /importalistas
  # GET /importalistas.json
  def index
    @importalistas = Importalista.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @importalistas }
    end
  end

  # GET /importalistas/1
  # GET /importalistas/1.json
  def show
    @importalista = Importalista.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @importalista }
    end
  end

  # GET /importalistas/new
  # GET /importalistas/new.json
  def new
    @importalista = Importalista.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @importalista }
    end
  end

  # GET /importalistas/1/edit
  def edit
    @importalista = Importalista.find(params[:id])
  end

  # POST /importalistas
  # POST /importalistas.json
  def create
    @importalista = Importalista.new(params[:importalista])

    respond_to do |format|
      if @importalista.save
        format.html { redirect_to @importalista, notice: 'Importalista was successfully created.' }
        format.json { render json: @importalista, status: :created, location: @importalista }
      else
        format.html { render action: "new" }
        format.json { render json: @importalista.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /importalistas/1
  # PUT /importalistas/1.json
  def update
    @importalista = Importalista.find(params[:id])

    respond_to do |format|
      if @importalista.update_attributes(params[:importalista])
        format.html { redirect_to @importalista, notice: 'Importalista was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @importalista.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /importalistas/1
  # DELETE /importalistas/1.json
  def destroy
    @importalista = Importalista.find(params[:id])
    @importalista.destroy

    respond_to do |format|
      format.html { redirect_to importalistas_url }
      format.json { head :no_content }
    end
  end

  def import
    @importalista = Importalista.new(params[:importalista])
    @importalista.save
    redirect_to listas_path
  end
end
