class EquipoincluyesController < ApplicationController
  # GET /equipoincluyes
  # GET /equipoincluyes.json
  def index
    @equipoincluyes = Equipoincluye.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @equipoincluyes }
    end
  end

  # GET /equipoincluyes/1
  # GET /equipoincluyes/1.json
  def show
    @equipoincluye = Equipoincluye.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @equipoincluye }
    end
  end

  # GET /equipoincluyes/new
  # GET /equipoincluyes/new.json
  def new
    @equipoincluye = Equipoincluye.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @equipoincluye }
    end
  end

  # GET /equipoincluyes/1/edit
  def edit
    @equipoincluye = Equipoincluye.find(params[:id])
  end

  # POST /equipoincluyes
  # POST /equipoincluyes.json
  def create
    @equipoincluye = Equipoincluye.new(params[:equipoincluye])

    respond_to do |format|
      if @equipoincluye.save
        format.html { redirect_to @equipoincluye, notice: 'Equipoincluye was successfully created.' }
        format.json { render json: @equipoincluye, status: :created, location: @equipoincluye }
      else
        format.html { render action: "new" }
        format.json { render json: @equipoincluye.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /equipoincluyes/1
  # PUT /equipoincluyes/1.json
  def update
    @equipoincluye = Equipoincluye.find(params[:id])

    respond_to do |format|
      if @equipoincluye.update_attributes(params[:equipoincluye])
        format.html { redirect_to @equipoincluye, notice: 'Equipoincluye was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @equipoincluye.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipoincluyes/1
  # DELETE /equipoincluyes/1.json
  def destroy
    @equipoincluye = Equipoincluye.find(params[:id])
    @equipoincluye.destroy

    respond_to do |format|
      format.html { redirect_to equipoincluyes_url }
      format.json { head :no_content }
    end
  end
end
