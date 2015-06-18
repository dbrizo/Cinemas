class EstrenosController < ApplicationController
  before_action :set_estreno, only: [:show, :edit, :update, :destroy]

  # GET /estrenos
  # GET /estrenos.json
  def index
    @estrenos = Estreno.all
  end

  # GET /estrenos/1
  # GET /estrenos/1.json
  def show
  end

  # GET /estrenos/new
  def new
    @estreno = Estreno.new
  end

  # GET /estrenos/1/edit
  def edit
  end

  # POST /estrenos
  # POST /estrenos.json
  def create
    @estreno = Estreno.new(estreno_params)

    respond_to do |format|
      if @estreno.save
        format.html { redirect_to @estreno, notice: 'Estreno creado exitosamente.' }
        format.json { render :show, status: :created, location: @estreno }
      else
        format.html { render :new }
        format.json { render json: @estreno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estrenos/1
  # PATCH/PUT /estrenos/1.json
  def update
    respond_to do |format|
      if @estreno.update(estreno_params)
        format.html { redirect_to @estreno, notice: 'Estreno actualizado correctamente.' }
        format.json { render :show, status: :ok, location: @estreno }
      else
        format.html { render :edit }
        format.json { render json: @estreno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estrenos/1
  # DELETE /estrenos/1.json
  def destroy
    @estreno.destroy
    respond_to do |format|
      format.html { redirect_to estrenos_url, notice: 'Estreno eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estreno
      @estreno = Estreno.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estreno_params
      params.require(:estreno).permit(:Nombre, :Hora, :Sala, :Oferta)
    end
end
