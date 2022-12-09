class UserInstrumentsController < ApplicationController
  before_action :set_user_instrument, only: %i[ show edit update destroy ]

  # GET /user_instruments or /user_instruments.json
  def index
    @q = UserInstrument.ransack(params[:q])
    @user_instruments = @q.result
    # @user_instruments = UserInstrument.all
  end

  # GET /user_instruments/1 or /user_instruments/1.json
  def show
  end

  # GET /user_instruments/new
  def new
    @user_instrument = UserInstrument.new
  end

  # GET /user_instruments/1/edit
  def edit
  end

  # POST /user_instruments or /user_instruments.json
  def create
    @user_instrument = UserInstrument.new(user_instrument_params)

    respond_to do |format|
      if @user_instrument.save
        format.html { redirect_to user_instrument_url(@user_instrument), notice: "User instrument was successfully created." }
        format.json { render :show, status: :created, location: @user_instrument }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_instrument.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_instruments/1 or /user_instruments/1.json
  def update
    respond_to do |format|
      if @user_instrument.update(user_instrument_params)
        format.html { redirect_to user_instrument_url(@user_instrument), notice: "User instrument was successfully updated." }
        format.json { render :show, status: :ok, location: @user_instrument }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_instrument.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_instruments/1 or /user_instruments/1.json
  def destroy
    @user_instrument.destroy

    respond_to do |format|
      format.html { redirect_to user_instruments_url, notice: "User instrument was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_instrument
      @user_instrument = UserInstrument.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_instrument_params
      params.require(:user_instrument).permit(:own_level_id, :min_teaching_level_id, :max_teaching_level_id, :instrument_id, :musician_id, :years_played)
    end
end
