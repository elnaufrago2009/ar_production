class AnhosController < ApplicationController
  # GET /anhos
  # GET /anhos.json
  def index
    @anhos = Anho.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @anhos }
    end
  end

  # GET /anhos/1
  # GET /anhos/1.json
  def show
    @anho = Anho.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @anho }
    end
  end

  # GET /anhos/new
  # GET /anhos/new.json
  def new
    @anho = Anho.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @anho }
    end
  end

  # GET /anhos/1/edit
  def edit
    @anho = Anho.find(params[:id])
  end

  # POST /anhos
  # POST /anhos.json
  def create
    @anho = Anho.new(params[:anho])

    respond_to do |format|
      if @anho.save
        format.html { redirect_to @anho, notice: 'Anho was successfully created.' }
        format.json { render json: @anho, status: :created, location: @anho }
      else
        format.html { render action: "new" }
        format.json { render json: @anho.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /anhos/1
  # PUT /anhos/1.json
  def update
    @anho = Anho.find(params[:id])

    respond_to do |format|
      if @anho.update_attributes(params[:anho])
        format.html { redirect_to @anho, notice: 'Anho was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @anho.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anhos/1
  # DELETE /anhos/1.json
  def destroy
    @anho = Anho.find(params[:id])
    @anho.destroy

    respond_to do |format|
      format.html { redirect_to anhos_url }
      format.json { head :no_content }
    end
  end
end
