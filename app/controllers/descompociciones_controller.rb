class DescompocicionesController < ApplicationController
  # GET /descompociciones
  # GET /descompociciones.json
  def index
    @descompociciones = Descompocicione.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @descompociciones }
    end
  end

  # GET /descompociciones/1
  # GET /descompociciones/1.json
  def show
    @descompocicione = Descompocicione.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @descompocicione }
    end
  end

  # GET /descompociciones/new
  # GET /descompociciones/new.json
  def new
    @descompocicione = Descompocicione.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @descompocicione }
    end
  end

  # GET /descompociciones/1/edit
  def edit
    @descompocicione = Descompocicione.find(params[:id])
  end

  # POST /descompociciones
  # POST /descompociciones.json
  def create
    @descompocicione = Descompocicione.new(params[:descompocicione])

    respond_to do |format|
      if @descompocicione.save
        format.html { redirect_to @descompocicione, notice: 'Descompocicione was successfully created.' }
        format.json { render json: @descompocicione, status: :created, location: @descompocicione }
      else
        format.html { render action: "new" }
        format.json { render json: @descompocicione.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /descompociciones/1
  # PUT /descompociciones/1.json
  def update
    @descompocicione = Descompocicione.find(params[:id])

    respond_to do |format|
      if @descompocicione.update_attributes(params[:descompocicione])
        format.html { redirect_to @descompocicione, notice: 'Descompocicione was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @descompocicione.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /descompociciones/1
  # DELETE /descompociciones/1.json
  def destroy
    @descompocicione = Descompocicione.find(params[:id])
    @descompocicione.destroy

    respond_to do |format|
      format.html { redirect_to descompociciones_url }
      format.json { head :no_content }
    end
  end
end
