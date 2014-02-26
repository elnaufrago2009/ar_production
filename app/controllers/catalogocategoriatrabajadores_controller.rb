class CatalogocategoriatrabajadoresController < ApplicationController
  # GET /catalogocategoriatrabajadores
  # GET /catalogocategoriatrabajadores.json
  def index
    @catalogocategoriatrabajadores = Catalogocategoriatrabajadore.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @catalogocategoriatrabajadores }
    end
  end

  # GET /catalogocategoriatrabajadores/1
  # GET /catalogocategoriatrabajadores/1.json
  def show
    @catalogocategoriatrabajadore = Catalogocategoriatrabajadore.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @catalogocategoriatrabajadore }
    end
  end

  # GET /catalogocategoriatrabajadores/new
  # GET /catalogocategoriatrabajadores/new.json
  def new
    @catalogocategoriatrabajadore = Catalogocategoriatrabajadore.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @catalogocategoriatrabajadore }
    end
  end

  # GET /catalogocategoriatrabajadores/1/edit
  def edit
    @catalogocategoriatrabajadore = Catalogocategoriatrabajadore.find(params[:id])
  end

  # POST /catalogocategoriatrabajadores
  # POST /catalogocategoriatrabajadores.json
  def create
    @catalogocategoriatrabajadore = Catalogocategoriatrabajadore.new(params[:catalogocategoriatrabajadore])

    respond_to do |format|
      if @catalogocategoriatrabajadore.save
        format.html { redirect_to @catalogocategoriatrabajadore, notice: 'Catalogocategoriatrabajadore was successfully created.' }
        format.json { render json: @catalogocategoriatrabajadore, status: :created, location: @catalogocategoriatrabajadore }
      else
        format.html { render action: "new" }
        format.json { render json: @catalogocategoriatrabajadore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /catalogocategoriatrabajadores/1
  # PUT /catalogocategoriatrabajadores/1.json
  def update
    @catalogocategoriatrabajadore = Catalogocategoriatrabajadore.find(params[:id])

    respond_to do |format|
      if @catalogocategoriatrabajadore.update_attributes(params[:catalogocategoriatrabajadore])
        format.html { redirect_to @catalogocategoriatrabajadore, notice: 'Catalogocategoriatrabajadore was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @catalogocategoriatrabajadore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catalogocategoriatrabajadores/1
  # DELETE /catalogocategoriatrabajadores/1.json
  def destroy
    @catalogocategoriatrabajadore = Catalogocategoriatrabajadore.find(params[:id])
    @catalogocategoriatrabajadore.destroy

    respond_to do |format|
      format.html { redirect_to catalogocategoriatrabajadores_url }
      format.json { head :no_content }
    end
  end
end
