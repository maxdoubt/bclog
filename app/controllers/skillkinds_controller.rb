class SkillkindsController < ApplicationController
  before_action :set_skillkind, only: [:show, :edit, :update, :destroy]

  # GET /skillkinds
  # GET /skillkinds.json
  def index
    @skillkinds = Skillkind.all
  end

  # GET /skillkinds/1
  # GET /skillkinds/1.json
  def show
  end

  # GET /skillkinds/new
  def new
    @skillkind = Skillkind.new
  end

  # GET /skillkinds/1/edit
  def edit
  end

  # POST /skillkinds
  # POST /skillkinds.json
  def create
    @skillkind = Skillkind.new(skillkind_params)

    respond_to do |format|
      if @skillkind.save
        format.html { redirect_to @skillkind.profile, notice: 'Skillkind was successfully created.' }
        format.json { render :show, status: :created, location: @skillkind }
      else
        format.html { render :new }
        format.json { render json: @skillkind.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skillkinds/1
  # PATCH/PUT /skillkinds/1.json
  def update
    respond_to do |format|
      if @skillkind.update(skillkind_params)
        format.html { redirect_to @skillkind.profile, notice: 'Skillkind was successfully updated.' }
        format.json { render :show, status: :ok, location: @skillkind }
      else
        format.html { render :edit }
        format.json { render json: @skillkind.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skillkinds/1
  # DELETE /skillkinds/1.json
  def destroy
    @skillkind.destroy
    respond_to do |format|
      format.html { redirect_to skillkinds_url, notice: 'Skillkind was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skillkind
      @skillkind = Skillkind.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def skillkind_params
      params.require(:skillkind).permit(:name, :profile_id, :image)
    end
end
