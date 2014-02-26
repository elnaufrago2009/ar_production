class SubcontratosController < ApplicationController
  # GET /subcontratos
  # GET /subcontratos.json
  def index
    @subcontratos = Subcontrato.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @subcontratos }
    end
  end

  # GET /subcontratos/1
  # GET /subcontratos/1.json
  def show
    @subcontrato = Subcontrato.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @subcontrato }
    end
  end

  # GET /subcontratos/new
  # GET /subcontratos/new.json
  def new
    @subcontrato = Subcontrato.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @subcontrato }
    end
  end

  # GET /subcontratos/1/edit
  def edit
    @subcontrato = Subcontrato.find(params[:id])
  end

  # POST /subcontratos
  # POST /subcontratos.json
  def create    
    @subcontrato = Subcontrato.new(params[:subcontrato])

    respond_to do |format|
      if @subcontrato.save
        format.html { redirect_to @subcontrato, notice: 'Subcontrato was successfully created.' }
        format.json { render json: @subcontrato, status: :created, location: @subcontrato }
      else
        format.html { render action: "new" }
        format.json { render json: @subcontrato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /subcontratos/1
  # PUT /subcontratos/1.json
  def update
    @subcontrato = Subcontrato.find(params[:id])

    respond_to do |format|
      if @subcontrato.update_attributes(params[:subcontrato])
        format.html { redirect_to @subcontrato, notice: 'Subcontrato was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @subcontrato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subcontratos/1
  # DELETE /subcontratos/1.json
  def destroy
    @subcontrato = Subcontrato.find(params[:id])
    @subcontrato.destroy

    respond_to do |format|
      format.html { redirect_to subcontratos_url }
      format.json { head :no_content }
    end
  end
end
