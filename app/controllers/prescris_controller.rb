class PrescrisController < ApplicationController
  before_action :set_prescri, only: [:show, :edit, :update, :destroy]

  # GET /prescris
  # GET /prescris.json
  def index
    @prescris = Prescri.all
  end

  # GET /prescris/1
  # GET /prescris/1.json
  def show
  end

  # GET /prescris/new
  def new
    @prescri = Prescri.new
  end

  # GET /prescris/1/edit
  def edit
  end

  # POST /prescris
  # POST /prescris.json
  def create
    @prescri = Prescri.new(prescri_params)

    respond_to do |format|
      if @prescri.save
        format.html { redirect_to @prescri, notice: 'Prescri was successfully created.' }
        format.json { render action: 'show', status: :created, location: @prescri }
      else
        format.html { render action: 'new' }
        format.json { render json: @prescri.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prescris/1
  # PATCH/PUT /prescris/1.json
  def update
    respond_to do |format|
      if @prescri.update(prescri_params)
        format.html { redirect_to @prescri, notice: 'Prescri was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @prescri.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prescris/1
  # DELETE /prescris/1.json
  def destroy
    @prescri.destroy
    respond_to do |format|
      format.html { redirect_to prescris_url }
      format.json { head :no_content }
    end
  end

  def print
    @prescri = Prescri.find(params[:id])
    render layout: "print"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prescri
      @prescri = Prescri.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prescri_params
      params.require(:prescri).permit(:name, :patient_name, :gender, :age, :departments, :diagnose, :doctor, :re_doctor, :re_re_doctor, :total_price)
    end
end
