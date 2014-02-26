class SubsectoresController < ApplicationController
  # GET /subsectores
  # GET /subsectores.json
  def index
    @subsectores = Subsectore.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @subsectores }
    end
  end

  # GET /subsectores/1
  # GET /subsectores/1.json
  def show
    @subsectore = Subsectore.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @subsectore }
    end
  end

  # GET /subsectores/new
  # GET /subsectores/new.json
  def new
    @subsectore = Subsectore.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @subsectore }
    end
  end

  # GET /subsectores/1/edit
  def edit
    @subsectore = Subsectore.find(params[:id])
  end

  # POST /subsectores
  # POST /subsectores.json
  def create
    @subsectore = Subsectore.new(params[:subsectore])

    respond_to do |format|
      if @subsectore.save
        format.html { redirect_to @subsectore, notice: 'Subsectore was successfully created.' }
        format.json { render json: @subsectore, status: :created, location: @subsectore }
      else
        format.html { render action: "new" }
        format.json { render json: @subsectore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /subsectores/1
  # PUT /subsectores/1.json
  def update
    @subsectore = Subsectore.find(params[:id])

    respond_to do |format|
      if @subsectore.update_attributes(params[:subsectore])
        format.html { redirect_to @subsectore, notice: 'Subsectore was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @subsectore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subsectores/1
  # DELETE /subsectores/1.json
  def destroy
    @subsectore = Subsectore.find(params[:id])
    @subsectore.destroy

    respond_to do |format|
      format.html { redirect_to subsectores_url }
      format.json { head :no_content }
    end
  end
end
