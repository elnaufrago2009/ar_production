class GruposdetrabajosController < ApplicationController
  # GET /gruposdetrabajos
  # GET /gruposdetrabajos.json
  def index
    @gruposdetrabajos = Gruposdetrabajo.order('id Desc')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gruposdetrabajos }
    end
  end

  # GET /gruposdetrabajos/1
  # GET /gruposdetrabajos/1.json
  def show
    @gruposdetrabajo = Gruposdetrabajo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gruposdetrabajo }
    end
  end

  # GET /gruposdetrabajos/new
  # GET /gruposdetrabajos/new.json
  def new
    @gruposdetrabajo = Gruposdetrabajo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gruposdetrabajo }
    end
  end

  # GET /gruposdetrabajos/1/edit
  def edit
    @gruposdetrabajo = Gruposdetrabajo.find(params[:id])
  end

  # POST /gruposdetrabajos
  # POST /gruposdetrabajos.json
  def create
    @gruposdetrabajo = Gruposdetrabajo.new(params[:gruposdetrabajo])

    respond_to do |format|
      if @gruposdetrabajo.save
        format.html { redirect_to @gruposdetrabajo, notice: 'Gruposdetrabajo was successfully created.' }
        format.json { render json: @gruposdetrabajo, status: :created, location: @gruposdetrabajo }
      else
        format.html { render action: "new" }
        format.json { render json: @gruposdetrabajo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gruposdetrabajos/1
  # PUT /gruposdetrabajos/1.json
  def update
    @gruposdetrabajo = Gruposdetrabajo.find(params[:id])

    respond_to do |format|
      if @gruposdetrabajo.update_attributes(params[:gruposdetrabajo])
        format.html { redirect_to @gruposdetrabajo, notice: 'Gruposdetrabajo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gruposdetrabajo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gruposdetrabajos/1
  # DELETE /gruposdetrabajos/1.json
  def destroy
    @gruposdetrabajo = Gruposdetrabajo.find(params[:id])
    @gruposdetrabajo.destroy

    respond_to do |format|
      format.html { redirect_to gruposdetrabajos_url }
      format.json { head :no_content }
    end
  end
end
