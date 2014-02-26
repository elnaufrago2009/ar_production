class MaquinariaequiporesumenesController < ApplicationController
  # GET /maquinariaequiporesumenes
  # GET /maquinariaequiporesumenes.json
  def index
    @maquinariaequiporesumenes = Maquinariaequiporesumene.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @maquinariaequiporesumenes }
    end
  end

  # GET /maquinariaequiporesumenes/1
  # GET /maquinariaequiporesumenes/1.json
  def show
    @maquinariaequiporesumene = Maquinariaequiporesumene.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @maquinariaequiporesumene }
    end
  end

  # GET /maquinariaequiporesumenes/new
  # GET /maquinariaequiporesumenes/new.json
  def new
    @maquinariaequiporesumene = Maquinariaequiporesumene.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @maquinariaequiporesumene }
    end
  end

  # GET /maquinariaequiporesumenes/1/edit
  def edit
    @maquinariaequiporesumene = Maquinariaequiporesumene.find(params[:id])
  end

  # POST /maquinariaequiporesumenes
  # POST /maquinariaequiporesumenes.json
  def create
    @maquinariaequiporesumene = Maquinariaequiporesumene.new(params[:maquinariaequiporesumene])

    respond_to do |format|
      if @maquinariaequiporesumene.save
        format.html { redirect_to @maquinariaequiporesumene, notice: 'Maquinariaequiporesumene was successfully created.' }
        format.json { render json: @maquinariaequiporesumene, status: :created, location: @maquinariaequiporesumene }
      else
        format.html { render action: "new" }
        format.json { render json: @maquinariaequiporesumene.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /maquinariaequiporesumenes/1
  # PUT /maquinariaequiporesumenes/1.json
  def update
    @maquinariaequiporesumene = Maquinariaequiporesumene.find(params[:id])

    respond_to do |format|
      if @maquinariaequiporesumene.update_attributes(params[:maquinariaequiporesumene])
        format.html { redirect_to @maquinariaequiporesumene, notice: 'Maquinariaequiporesumene was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @maquinariaequiporesumene.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maquinariaequiporesumenes/1
  # DELETE /maquinariaequiporesumenes/1.json
  def destroy
    @maquinariaequiporesumene = Maquinariaequiporesumene.find(params[:id])
    @maquinariaequiporesumene.destroy

    respond_to do |format|
      format.html { redirect_to maquinariaequiporesumenes_url }
      format.json { head :no_content }
    end
  end
end
