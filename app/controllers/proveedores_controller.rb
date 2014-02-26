class ProveedoresController < ApplicationController
  # GET /proveedores
  # GET /proveedores.json
  def index
    #@proveedores = Proveedore.all
    @proveedores = Proveedore.paginate(:page => params[:page], :per_page => 10)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @proveedores }
    end
  end

  # GET /proveedores/1
  # GET /proveedores/1.json
  def show
    @proveedore = Proveedore.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @proveedore }
    end
  end

  # GET /proveedores/new
  # GET /proveedores/new.json
  def new
    @proveedore = Proveedore.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @proveedore }
    end
  end

  # GET /proveedores/1/edit
  def edit
    @proveedore = Proveedore.find(params[:id])
  end

  # POST /proveedores
  # POST /proveedores.json
  def create
    @proveedore = Proveedore.new(params[:proveedore])

    respond_to do |format|
      if @proveedore.save
        format.html { redirect_to @proveedore, notice: 'Proveedore was successfully created.' }
        format.json { render json: @proveedore, status: :created, location: @proveedore }
      else
        format.html { render action: "new" }
        format.json { render json: @proveedore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /proveedores/1
  # PUT /proveedores/1.json
  def update
    @proveedore = Proveedore.find(params[:id])

    respond_to do |format|
      if @proveedore.update_attributes(params[:proveedore])
        format.html { redirect_to @proveedore, notice: 'Proveedore was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @proveedore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proveedores/1
  # DELETE /proveedores/1.json
  def destroy
    @proveedore = Proveedore.find(params[:id])
    @proveedore.destroy

    respond_to do |format|
      format.html { redirect_to proveedores_url }
      format.json { head :no_content }
    end
  end
end
