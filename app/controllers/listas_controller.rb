class ListasController < ApplicationController
  # GET /listas
  # GET /listas.json
  require 'csv'
  require 'iconv'  
  def migrar    
    #s = Roo::Excel.new('D:/\partidas_copia.xls')    
    #listacategoria_id = 0 
    #(2..85).each do |fila|
    #  codigo = s.cell('A',fila).to_s
    #  nombre = s.cell('B',fila)
    #  unidad = s.cell('C',fila)
    #  precio_unitario = s.cell('D',fila).to_f.round(2)
    #  if codigo[6,7] == '00'
    #    listacategoria_id = listacategoria_id +1
    #  end

    #  if codigo[6,7] != '00'
    #    lista = Lista.new(:codigo => codigo, :nombre => nombre, :unidad => unidad, :precio_unitario => precio_unitario, :listacategoria_id => listacategoria_id)
    #    lista.save
    #  end
    #end
  end

  def import
    
  end

  def index
    #@listas = Lista.search(params[:search], params[:page])
    #@listas = Lista.where('lower(nombre) like ?',"%#{params[:search]}%").paginate(:page => params[:page], :per_page => 25).order('id Desc')
    @listas = Lista.where('lower(nombre) like ?',"%#{params[:search]}%").order('id Desc')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @listas }
    end
  end

  # GET /listas/1
  # GET /listas/1.json
  def show
    @lista = Lista.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lista }
    end
  end

  # GET /listas/new
  # GET /listas/new.json
  def new
    @lista = Lista.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lista }
    end
  end

  # GET /listas/1/edit
  def edit
    @lista = Lista.find(params[:id])
  end

  # POST /listas
  # POST /listas.json
  def create
    @lista = Lista.new(params[:lista])

    respond_to do |format|
      if @lista.save
        format.html { redirect_to @lista, notice: 'Lista was successfully created.' }
        format.json { render json: @lista, status: :created, location: @lista }
      else
        format.html { render action: "new" }
        format.json { render json: @lista.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /listas/1
  # PUT /listas/1.json
  def update
    @lista = Lista.find(params[:id])

    respond_to do |format|
      if @lista.update_attributes(params[:lista])
        format.html { redirect_to @lista, notice: 'Lista was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lista.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listas/1
  # DELETE /listas/1.json
  def destroy
    @lista = Lista.find(params[:id])
    @partidas = Partida.where('lista_id = ?', params[:id])
    if @partidas.count == 0
      @lista.destroy
      redirect_to listas_path, notice: 'La partida se ha Eliminado Correctamente.'
    else
      redirect_to listas_path, notice: 'No se puede eliminar por que esta partida esta siendo usada en ParteObra'
    end
    
  end
end
