class EjemplosController < ApplicationController
  before_action :set_ejemplo, only: [:show, :edit, :update, :destroy]

  # GET /ejemplos
  # GET /ejemplos.json
  def index
    @ejemplos = Ejemplo.all
  end

  # GET /ejemplos/1
  # GET /ejemplos/1.json
  def show
  end

  # GET /ejemplos/new
  def new
    @ejemplo = Ejemplo.new
  end

  # GET /ejemplos/1/edit
  def edit
  end

  # POST /ejemplos
  # POST /ejemplos.json
  def create
    @ejemplo = Ejemplo.new(ejemplo_params)

    respond_to do |format|
      if @ejemplo.save
        format.html { redirect_to @ejemplo, notice: 'Ejemplo was successfully created.' }
        format.json { render :show, status: :created, location: @ejemplo }
      else
        format.html { render :new }
        format.json { render json: @ejemplo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ejemplos/1
  # PATCH/PUT /ejemplos/1.json
  def update
    respond_to do |format|
      if @ejemplo.update(ejemplo_params)
        format.html { redirect_to @ejemplo, notice: 'Ejemplo was successfully updated.' }
        format.json { render :show, status: :ok, location: @ejemplo }
      else
        format.html { render :edit }
        format.json { render json: @ejemplo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ejemplos/1
  # DELETE /ejemplos/1.json
  def destroy
    @ejemplo.destroy
    respond_to do |format|
      format.html { redirect_to ejemplos_url, notice: 'Ejemplo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ejemplo
      @ejemplo = Ejemplo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ejemplo_params
      params.require(:ejemplo).permit(:nombre, :contenido)
    end
end
