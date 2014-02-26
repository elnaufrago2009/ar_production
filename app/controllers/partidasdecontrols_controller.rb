class PartidasdecontrolsController < ApplicationController
  # GET /partidasdecontrols
  # GET /partidasdecontrols.json

  def index    
    @partidasdecontrols = Partidasdecontrol.paginate(:page => params[:page], :per_page => 20)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @partidasdecontrols }
    end
  end

  # GET /partidasdecontrols/1
  # GET /partidasdecontrols/1.json
  def show
    @partidasdecontrol = Partidasdecontrol.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @partidasdecontrol }
    end
  end

  # GET /partidasdecontrols/new
  # GET /partidasdecontrols/new.json
  def new
    @partidasdecontrol = Partidasdecontrol.new

    @fases = Fase.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @partidasdecontrol }
    end
  end

  # GET /partidasdecontrols/1/edit
  def edit
    @partidasdecontrol = Partidasdecontrol.find(params[:id])    
    @fases = Fase.all
  end

  # POST /partidasdecontrols
  # POST /partidasdecontrols.json
  def create
    @partidasdecontrol = Partidasdecontrol.new(params[:partidasdecontrol])

    

    respond_to do |format|
      if @partidasdecontrol.save
        format.html { redirect_to @partidasdecontrol, notice: 'Partidasdecontrol was successfully created.' }
        format.json { render json: @partidasdecontrol, status: :created, location: @partidasdecontrol }
      else
        format.html { render action: "new" }
        format.json { render json: @partidasdecontrol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /partidasdecontrols/1
  # PUT /partidasdecontrols/1.json
  def update
    @partidasdecontrol = Partidasdecontrol.find(params[:id])

    respond_to do |format|
      if @partidasdecontrol.update_attributes(params[:partidasdecontrol])
        format.html { redirect_to @partidasdecontrol, notice: 'Partidasdecontrol was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @partidasdecontrol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /partidasdecontrols/1
  # DELETE /partidasdecontrols/1.json
  def destroy
    @partidasdecontrol = Partidasdecontrol.find(params[:id])
    @partidasdecontrol.destroy

    respond_to do |format|
      format.html { redirect_to partidasdecontrols_url }
      format.json { head :no_content }
    end
  end

  def valuesubfase
    id = params[:id]
    @subfases = Subfase.where(fase_id: id).all

    respond_to do |format|
      format.html {render :layout => 'select'}
    end
  end

  def mostrar
    id = params[:id]
    @subsectores = Subsectore.where(sectore_id: id).all
    
    respond_to do |format|
      format.html {render :layout => 'select'}
    end    
  end

end
