class MaestrodeobrasController < ApplicationController
  # GET /maestrodeobras
  # GET /maestrodeobras.json
  def index
    @maestrodeobras = Maestrodeobra.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @maestrodeobras }
    end
  end

  # GET /maestrodeobras/1
  # GET /maestrodeobras/1.json
  def show
    @maestrodeobra = Maestrodeobra.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @maestrodeobra }
    end
  end

  # GET /maestrodeobras/new
  # GET /maestrodeobras/new.json
  def new
    @maestrodeobra = Maestrodeobra.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @maestrodeobra }
    end
  end

  # GET /maestrodeobras/1/edit
  def edit
    @maestrodeobra = Maestrodeobra.find(params[:id])
  end

  # POST /maestrodeobras
  # POST /maestrodeobras.json
  def create
    @maestrodeobra = Maestrodeobra.new(params[:maestrodeobra])

    respond_to do |format|
      if @maestrodeobra.save
        format.html { redirect_to @maestrodeobra, notice: 'Maestrodeobra was successfully created.' }
        format.json { render json: @maestrodeobra, status: :created, location: @maestrodeobra }
      else
        format.html { render action: "new" }
        format.json { render json: @maestrodeobra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /maestrodeobras/1
  # PUT /maestrodeobras/1.json
  def update
    @maestrodeobra = Maestrodeobra.find(params[:id])

    respond_to do |format|
      if @maestrodeobra.update_attributes(params[:maestrodeobra])
        format.html { redirect_to @maestrodeobra, notice: 'Maestrodeobra was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @maestrodeobra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maestrodeobras/1
  # DELETE /maestrodeobras/1.json
  def destroy
    @maestrodeobra = Maestrodeobra.find(params[:id])
    @maestrodeobra.destroy

    respond_to do |format|
      format.html { redirect_to maestrodeobras_url }
      format.json { head :no_content }
    end
  end
end
