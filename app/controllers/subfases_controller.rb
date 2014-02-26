class SubfasesController < ApplicationController
  # GET /subfases
  # GET /subfases.json
  
  def migrar
    s = Roo::Excel.new("/home/moises/Escritorio/subfases_linux.xls")
	@subfases = []
	@fases = []
	(6..797).each do |fila|
	temp2 = s.cell('B',fila).to_i.to_s.rjust(2,'0')
	temp4 = s.cell('C', fila)
	temp3 = s.cell('A',fila).to_i.to_s.rjust(2,'0')
	fase_id = Fase.find_by_codigo("#{temp3}")
	fase_id_temp = fase_id['id']
	#@subfases.push("#{temp2}")
      	## Obtener codigo de fase
	  	if temp2 == '00'
#			@subfases.push(temp4)

#    	    @subfases.push(fase_id_temp)
	  	end
      	## Celda Actual Subfase
    	#subfase_descripcion = s.cell('C',fila)
		#subfase_codigo		= s.cell('B',fila)
		#if temp2 != '00'
			@guardar_subfases = Subfase.new(:codigo => temp2, :descripcion => temp4, :fase_id => fase_id_temp)
			@guardar_subfases.save
		#end
    end
  end


  def index
	@subfases = Subfase.paginate(:page => params[:page], :per_page => 25).order('id Desc')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @subfases }
    end
  end

  # GET /subfases/1
  # GET /subfases/1.json
  def show
    @subfase = Subfase.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @subfase }
    end
  end

  # GET /subfases/new
  # GET /subfases/new.json
  def new
    @subfase = Subfase.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @subfase }
    end
  end

  # GET /subfases/1/edit
  def edit
    @subfase = Subfase.find(params[:id])
  end

  # POST /subfases
  # POST /subfases.json
  def create
    @subfase = Subfase.new(params[:subfase])

    respond_to do |format|
      if @subfase.save
        format.html { redirect_to "/subfases/new", notice: 'Subfase was successfully created.' }
        format.json { render json: @subfase, status: :created, location: @subfase }
      else
        format.html { render action: "new" }
        format.json { render json: @subfase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /subfases/1
  # PUT /subfases/1.json
  def update
    @subfase = Subfase.find(params[:id])

    respond_to do |format|
      if @subfase.update_attributes(params[:subfase])
        format.html { redirect_to @subfase, notice: 'Subfase was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @subfase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subfases/1
  # DELETE /subfases/1.json
  def destroy
    @subfase = Subfase.find(params[:id])
    @subfase.destroy

    respond_to do |format|
      format.html { redirect_to subfases_url }
      format.json { head :no_content }
    end
  end
end
