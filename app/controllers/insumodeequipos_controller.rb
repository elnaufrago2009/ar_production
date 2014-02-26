class InsumodeequiposController < ApplicationController
  # GET /insumodeequipos
  # GET /insumodeequipos.json
  def index
    @insumodeequipos = Insumodeequipo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @insumodeequipos }
    end
  end

  # GET /insumodeequipos/1
  # GET /insumodeequipos/1.json
  def show
    @insumodeequipo = Insumodeequipo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @insumodeequipo }
    end
  end

  # GET /insumodeequipos/new
  # GET /insumodeequipos/new.json
  def new
    @insumodeequipo = Insumodeequipo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @insumodeequipo }
    end
  end

  # GET /insumodeequipos/1/edit
  def edit
    @insumodeequipo = Insumodeequipo.find(params[:id])
  end

  # POST /insumodeequipos
  # POST /insumodeequipos.json
  def create
    @insumodeequipo = Insumodeequipo.new(params[:insumodeequipo])

    respond_to do |format|
      if @insumodeequipo.save
        format.html { redirect_to @insumodeequipo, notice: 'Insumodeequipo was successfully created.' }
        format.json { render json: @insumodeequipo, status: :created, location: @insumodeequipo }
      else
        format.html { render action: "new" }
        format.json { render json: @insumodeequipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /insumodeequipos/1
  # PUT /insumodeequipos/1.json
  def update
    @insumodeequipo = Insumodeequipo.find(params[:id])

    respond_to do |format|
      if @insumodeequipo.update_attributes(params[:insumodeequipo])
        format.html { redirect_to @insumodeequipo, notice: 'Insumodeequipo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @insumodeequipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /insumodeequipos/1
  # DELETE /insumodeequipos/1.json
  def destroy
    @insumodeequipo = Insumodeequipo.find(params[:id])
    @insumodeequipo.destroy

    respond_to do |format|
      format.html { redirect_to insumodeequipos_url }
      format.json { head :no_content }
    end
  end
end
