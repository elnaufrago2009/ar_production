class DiasController < ApplicationController
  # GET /dias
  # GET /dias.json
  def index
    @dias = Dia.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dias }
    end
  end

  # GET /dias/1
  # GET /dias/1.json
  def show
    @dia = Dia.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dia }
    end
  end

  # GET /dias/new
  # GET /dias/new.json
  def new
    @dia = Dia.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dia }
    end
  end

  # GET /dias/1/edit
  def edit
    @dia = Dia.find(params[:id])
  end

  # POST /dias
  # POST /dias.json
  def create
    @dia = Dia.new(params[:dia])

    respond_to do |format|
      if @dia.save
        format.html { redirect_to @dia, notice: 'Dia was successfully created.' }
        format.json { render json: @dia, status: :created, location: @dia }
      else
        format.html { render action: "new" }
        format.json { render json: @dia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dias/1
  # PUT /dias/1.json
  def update
    @dia = Dia.find(params[:id])

    respond_to do |format|
      if @dia.update_attributes(params[:dia])
        format.html { redirect_to @dia, notice: 'Dia was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dias/1
  # DELETE /dias/1.json
  def destroy
    @dia = Dia.find(params[:id])
    @dia.destroy

    respond_to do |format|
      format.html { redirect_to dias_url }
      format.json { head :no_content }
    end
  end
end
