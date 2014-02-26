class MaterialesController < ApplicationController
  # GET /materiales
  # GET /materiales.json
  def index    
    @materiales = Materiale.paginate(:page => params[:page], :per_page => 15).order('id Desc')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @materiales }
    end
  end

  # GET /materiales/1
  # GET /materiales/1.json
  def show
    @materiale = Materiale.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @materiale }
    end
  end

  # GET /materiales/new
  # GET /materiales/new.json
  def new
    @materiale = Materiale.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @materiale }
    end
  end

  # GET /materiales/1/edit
  def edit
    @materiale = Materiale.find(params[:id])
  end

  # POST /materiales
  # POST /materiales.json
  def create
    @materiale = Materiale.new(params[:materiale])

    respond_to do |format|
      if @materiale.save
        format.html { redirect_to @materiale, notice: 'Materiale was successfully created.' }
        format.json { render json: @materiale, status: :created, location: @materiale }
      else
        format.html { render action: "new" }
        format.json { render json: @materiale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /materiales/1
  # PUT /materiales/1.json
  def update
    @materiale = Materiale.find(params[:id])

    respond_to do |format|
      if @materiale.update_attributes(params[:materiale])
        format.html { redirect_to @materiale, notice: 'Materiale was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @materiale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /materiales/1
  # DELETE /materiales/1.json
  def destroy
    @materiale = Materiale.find(params[:id])
    @materiale.destroy

    respond_to do |format|
      format.html { redirect_to materiales_url }
      format.json { head :no_content }
    end
  end
end
