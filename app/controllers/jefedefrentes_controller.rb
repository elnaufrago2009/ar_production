class JefedefrentesController < ApplicationController
  # GET /jefedefrentes
  # GET /jefedefrentes.json
  def index
    @jefedefrentes = Jefedefrente.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @jefedefrentes }
    end
  end

  # GET /jefedefrentes/1
  # GET /jefedefrentes/1.json
  def show
    @jefedefrente = Jefedefrente.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @jefedefrente }
    end
  end

  # GET /jefedefrentes/new
  # GET /jefedefrentes/new.json
  def new
    @jefedefrente = Jefedefrente.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @jefedefrente }
    end
  end

  # GET /jefedefrentes/1/edit
  def edit
    @jefedefrente = Jefedefrente.find(params[:id])
  end

  # POST /jefedefrentes
  # POST /jefedefrentes.json
  def create
    @jefedefrente = Jefedefrente.new(params[:jefedefrente])

    respond_to do |format|
      if @jefedefrente.save
        format.html { redirect_to @jefedefrente, notice: 'Jefedefrente was successfully created.' }
        format.json { render json: @jefedefrente, status: :created, location: @jefedefrente }
      else
        format.html { render action: "new" }
        format.json { render json: @jefedefrente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /jefedefrentes/1
  # PUT /jefedefrentes/1.json
  def update
    @jefedefrente = Jefedefrente.find(params[:id])

    respond_to do |format|
      if @jefedefrente.update_attributes(params[:jefedefrente])
        format.html { redirect_to @jefedefrente, notice: 'Jefedefrente was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @jefedefrente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jefedefrentes/1
  # DELETE /jefedefrentes/1.json
  def destroy
    @jefedefrente = Jefedefrente.find(params[:id])
    @jefedefrente.destroy

    respond_to do |format|
      format.html { redirect_to jefedefrentes_url }
      format.json { head :no_content }
    end
  end
end
