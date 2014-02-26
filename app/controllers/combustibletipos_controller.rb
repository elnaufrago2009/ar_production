class CombustibletiposController < ApplicationController
  # GET /combustibletipos
  # GET /combustibletipos.json
  def index
    @combustibletipos = Combustibletipo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @combustibletipos }
    end
  end

  # GET /combustibletipos/1
  # GET /combustibletipos/1.json
  def show
    @combustibletipo = Combustibletipo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @combustibletipo }
    end
  end

  # GET /combustibletipos/new
  # GET /combustibletipos/new.json
  def new
    @combustibletipo = Combustibletipo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @combustibletipo }
    end
  end

  # GET /combustibletipos/1/edit
  def edit
    @combustibletipo = Combustibletipo.find(params[:id])
  end

  # POST /combustibletipos
  # POST /combustibletipos.json
  def create
    @combustibletipo = Combustibletipo.new(params[:combustibletipo])

    respond_to do |format|
      if @combustibletipo.save
        format.html { redirect_to @combustibletipo, notice: 'Combustibletipo was successfully created.' }
        format.json { render json: @combustibletipo, status: :created, location: @combustibletipo }
      else
        format.html { render action: "new" }
        format.json { render json: @combustibletipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /combustibletipos/1
  # PUT /combustibletipos/1.json
  def update
    @combustibletipo = Combustibletipo.find(params[:id])

    respond_to do |format|
      if @combustibletipo.update_attributes(params[:combustibletipo])
        format.html { redirect_to @combustibletipo, notice: 'Combustibletipo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @combustibletipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /combustibletipos/1
  # DELETE /combustibletipos/1.json
  def destroy
    @combustibletipo = Combustibletipo.find(params[:id])
    @combustibletipo.destroy

    respond_to do |format|
      format.html { redirect_to combustibletipos_url }
      format.json { head :no_content }
    end
  end
end
