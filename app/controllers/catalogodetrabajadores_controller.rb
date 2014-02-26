class CatalogodetrabajadoresController < ApplicationController
  # GET /catalogodetrabajadores
  # GET /catalogodetrabajadores.json
  def index
    @catalogodetrabajadores = Catalogodetrabajadore.order('id Desc')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @catalogodetrabajadores }
    end
  end

  # GET /catalogodetrabajadores/1
  # GET /catalogodetrabajadores/1.json
  def show
    @catalogodetrabajadore = Catalogodetrabajadore.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @catalogodetrabajadore }
    end
  end

  # GET /catalogodetrabajadores/new
  # GET /catalogodetrabajadores/new.json
  def new
    @catalogodetrabajadore = Catalogodetrabajadore.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @catalogodetrabajadore }
    end
  end

  # GET /catalogodetrabajadores/1/edit
  def edit
    @catalogodetrabajadore = Catalogodetrabajadore.find(params[:id])
  end

  # POST /catalogodetrabajadores
  # POST /catalogodetrabajadores.json
  def create
    @catalogodetrabajadore = Catalogodetrabajadore.new(params[:catalogodetrabajadore])

    respond_to do |format|
      if @catalogodetrabajadore.save
        format.html { redirect_to @catalogodetrabajadore, notice: 'Catalogodetrabajadore was successfully created.' }
        format.json { render json: @catalogodetrabajadore, status: :created, location: @catalogodetrabajadore }
      else
        format.html { render action: "new" }
        format.json { render json: @catalogodetrabajadore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /catalogodetrabajadores/1
  # PUT /catalogodetrabajadores/1.json
  def update
    @catalogodetrabajadore = Catalogodetrabajadore.find(params[:id])

    respond_to do |format|
      if @catalogodetrabajadore.update_attributes(params[:catalogodetrabajadore])
        format.html { redirect_to @catalogodetrabajadore, notice: 'Catalogodetrabajadore was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @catalogodetrabajadore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catalogodetrabajadores/1
  # DELETE /catalogodetrabajadores/1.json
  def destroy
    @catalogodetrabajadore = Catalogodetrabajadore.find(params[:id])
    @catalogodetrabajadore.destroy

    respond_to do |format|
      format.html { redirect_to catalogodetrabajadores_url }
      format.json { head :no_content }
    end
  end
end
