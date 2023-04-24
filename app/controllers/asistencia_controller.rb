class AsistenciaController < ApplicationController
  before_action :set_asistencium, only: %i[ show edit update destroy ]

  # GET /asistencia or /asistencia.json
  def index
    @asistencia = Asistencium.all
  end

  # GET /asistencia/1 or /asistencia/1.json
  def show
  end

  # GET /asistencia/new
  def new
    @asistencium = Asistencium.new
  end

  # GET /asistencia/1/edit
  def edit
  end

  # POST /asistencia or /asistencia.json
  def create
    @asistencium = Asistencium.new(asistencium_params)

    respond_to do |format|
      if @asistencium.save
        format.html { redirect_to asistencium_url(@asistencium), notice: "Asistencium was successfully created." }
        format.json { render :show, status: :created, location: @asistencium }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @asistencium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asistencia/1 or /asistencia/1.json
  def update
    respond_to do |format|
      if @asistencium.update(asistencium_params)
        format.html { redirect_to asistencium_url(@asistencium), notice: "Asistencium was successfully updated." }
        format.json { render :show, status: :ok, location: @asistencium }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @asistencium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asistencia/1 or /asistencia/1.json
  def destroy
    @asistencium.destroy

    respond_to do |format|
      format.html { redirect_to asistencia_url, notice: "Asistencium was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asistencium
      @asistencium = Asistencium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def asistencium_params
      params.require(:asistencium).permit(:alumno_id, :asistencia)
    end
end
