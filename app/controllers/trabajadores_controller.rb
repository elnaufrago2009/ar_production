class TrabajadoresController < ApplicationController
  # GET /trabajadores
  # GET /trabajadores.json
  def index
    @trabajadores = Trabajadore.paginate(:page => params[:page], :per_page => 12).order('id Desc')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @trabajadores }
    end
  end

  # GET /trabajadores/1
  # GET /trabajadores/1.json
  def show
    @trabajadore = Trabajadore.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @trabajadore }
    end
  end

  # GET /trabajadores/new
  # GET /trabajadores/new.json
  def new
    @trabajadore = Trabajadore.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @trabajadore }
    end
  end

  # GET /trabajadores/1/edit
  def edit
    @trabajadore = Trabajadore.find(params[:id])
  end

  # POST /trabajadores
  # POST /trabajadores.json
  def create
    @trabajadore = Trabajadore.new(params[:trabajadore])

    respond_to do |format|
      if @trabajadore.save
        format.html { redirect_to @trabajadore, notice: 'Trabajadore was successfully created.' }
        format.json { render json: @trabajadore, status: :created, location: @trabajadore }
      else
        format.html { render action: "new" }
        format.json { render json: @trabajadore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /trabajadores/1
  # PUT /trabajadores/1.json
  def update
    @trabajadore = Trabajadore.find(params[:id])

    respond_to do |format|
      if @trabajadore.update_attributes(params[:trabajadore])
        format.html { redirect_to @trabajadore, notice: 'Trabajadore was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @trabajadore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trabajadores/1
  # DELETE /trabajadores/1.json
  def destroy
    @trabajadore = Trabajadore.find(params[:id])
    @trabajadore.destroy

    respond_to do |format|
      format.html { redirect_to trabajadores_url }
      format.json { head :no_content }
    end
  end
end
