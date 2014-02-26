class ApgraficosController < ApplicationController
  # GET /apgraficos
  # GET /apgraficos.json
  def index
    @apgraficos = Apgrafico.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @apgraficos }
    end
  end

  # GET /apgraficos/1
  # GET /apgraficos/1.json
  def show
    @apgrafico = Apgrafico.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @apgrafico }
    end
  end

  # GET /apgraficos/new
  # GET /apgraficos/new.json
  def new
    @apgrafico = Apgrafico.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @apgrafico }
    end
  end

  # GET /apgraficos/1/edit
  def edit
    @apgrafico = Apgrafico.find(params[:id])
  end

  # POST /apgraficos
  # POST /apgraficos.json
  def create
    @apgrafico = Apgrafico.new(params[:apgrafico])

    respond_to do |format|
      if @apgrafico.save
        format.html { redirect_to @apgrafico, notice: 'Apgrafico was successfully created.' }
        format.json { render json: @apgrafico, status: :created, location: @apgrafico }
      else
        format.html { render action: "new" }
        format.json { render json: @apgrafico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /apgraficos/1
  # PUT /apgraficos/1.json
  def update
    @apgrafico = Apgrafico.find(params[:id])

    respond_to do |format|
      if @apgrafico.update_attributes(params[:apgrafico])
        format.html { redirect_to @apgrafico, notice: 'Apgrafico was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @apgrafico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apgraficos/1
  # DELETE /apgraficos/1.json
  def destroy
    @apgrafico = Apgrafico.find(params[:id])
    @apgrafico.destroy

    respond_to do |format|
      format.html { redirect_to apgraficos_url }
      format.json { head :no_content }
    end
  end

  def start
    if !params[:frente].nil? and !params[:inicio].nil? and !params[:fin].nil?
      @frente = params[:frente]
      @inicio = params[:inicio]
      @fin = params[:fin]
      @difference = range_weeks(@inicio.to_date,@fin.to_date)
    end
  end

  def generate

  end

  def range_days(inicio, fin)
    days = []
    while fin >= inicio
      days << inicio.strftime("%Y-%m-%d")
      inicio = inicio + 1.day
    end
    return days
  end

  def range_weeks(inicio,fin)
    weeks = []
    difference = fin - inicio
    difference.to_i.times do |x|
      temp = inicio + 6.day

      weeks << [inicio,]
    end

    
    return difference
  end

end
