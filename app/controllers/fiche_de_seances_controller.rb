class FicheDeSeancesController < ApplicationController
  before_action :set_fiche_de_seance, only: %i[ show edit update destroy ]

  # GET /fiche_de_seances or /fiche_de_seances.json
  def index
    @fiche_de_seances = FicheDeSeance.all
  end

  # GET /fiche_de_seances/1 or /fiche_de_seances/1.json
  def show
  end

  # GET /fiche_de_seances/new
  def new
    @fiche_de_seance = FicheDeSeance.new
  end

  # GET /fiche_de_seances/1/edit
  def edit
  end

  # POST /fiche_de_seances or /fiche_de_seances.json
  def create
    @fiche_de_seance = FicheDeSeance.new(fiche_de_seance_params)

    respond_to do |format|
      if @fiche_de_seance.save
        format.html { redirect_to fiche_de_seance_url(@fiche_de_seance), notice: "Fiche de seance was successfully created." }
        format.json { render :show, status: :created, location: @fiche_de_seance }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fiche_de_seance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fiche_de_seances/1 or /fiche_de_seances/1.json
  def update
    respond_to do |format|
      if @fiche_de_seance.update(fiche_de_seance_params)
        format.html { redirect_to fiche_de_seance_url(@fiche_de_seance), notice: "Fiche de seance was successfully updated." }
        format.json { render :show, status: :ok, location: @fiche_de_seance }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fiche_de_seance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fiche_de_seances/1 or /fiche_de_seances/1.json
  def destroy
    @fiche_de_seance.destroy

    respond_to do |format|
      format.html { redirect_to fiche_de_seances_url, notice: "Fiche de seance was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fiche_de_seance
      @fiche_de_seance = FicheDeSeance.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fiche_de_seance_params
      params.require(:fiche_de_seance).permit(:date, :cohorte, :theme, :titre, :formateur, :effectif, :lieux, :duree, :seance_precedente, :seance_suivante, :reference, :moyen_pedagogique, :objectif, :plan, :points_cles, :introduction, :premiere_part, :deux_part, :trois_part, :conclusion)
    end
end
