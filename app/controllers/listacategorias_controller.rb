class ListacategoriasController < ApplicationController
  # GET /listacategorias
  # GET /listacategorias.json
  def index
    @listacategorias = Listacategoria.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @listacategorias }
    end
  end

  # GET /listacategorias/1
  # GET /listacategorias/1.json
  def show
    @listacategoria = Listacategoria.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @listacategoria }
    end
  end

  # GET /listacategorias/new
  # GET /listacategorias/new.json
  def new
    @listacategoria = Listacategoria.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @listacategoria }
    end
  end

  # GET /listacategorias/1/edit
  def edit
    @listacategoria = Listacategoria.find(params[:id])
  end

  # POST /listacategorias
  # POST /listacategorias.json
  def create
    @listacategoria = Listacategoria.new(params[:listacategoria])

    respond_to do |format|
      if @listacategoria.save
        format.html { redirect_to @listacategoria, notice: 'Listacategoria was successfully created.' }
        format.json { render json: @listacategoria, status: :created, location: @listacategoria }
      else
        format.html { render action: "new" }
        format.json { render json: @listacategoria.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /listacategorias/1
  # PUT /listacategorias/1.json
  def update
    @listacategoria = Listacategoria.find(params[:id])

    respond_to do |format|
      if @listacategoria.update_attributes(params[:listacategoria])
        format.html { redirect_to @listacategoria, notice: 'Listacategoria was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @listacategoria.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listacategorias/1
  # DELETE /listacategorias/1.json
  def destroy
    @listacategoria = Listacategoria.find(params[:id])
    @listacategoria.destroy

    respond_to do |format|
      format.html { redirect_to listacategorias_url }
      format.json { head :no_content }
    end
  end



  def importar_partidas
    @listacategoria = Listacategoria.new(params[:listacategoria])    
    @listacategoria.save    

    #params[:listacategoria].each do |k, listacategoria|
    #  @listacategoria = Listacategoria.new(listacategoria)   
    #  @listacategoria.save 
    #end
    redirect_to listacategorias_path
  end


end
