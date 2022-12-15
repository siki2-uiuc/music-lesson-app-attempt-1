class MusicianGenresController < ApplicationController
  before_action :set_musician_genre, only: %i[ show edit update destroy ]

  # GET /musician_genres or /musician_genres.json
  def index
    @q = User.ransack(params[:q])
    @users = @q.result(:distinct => true).includes(:genres)
    # @musician_genres = MusicianGenre.all
    # @users = User.all
  end

  # GET /musician_genres/1 or /musician_genres/1.json
  def show
  end

  # GET /musician_genres/new
  def new
    @musician_genre = MusicianGenre.new
  end

  # GET /musician_genres/1/edit
  def edit
  end

  # POST /musician_genres or /musician_genres.json
  def create
    @musician_genre = MusicianGenre.new(musician_genre_params)

    respond_to do |format|
      if @musician_genre.save
        format.html { redirect_to musician_genre_url(@musician_genre), notice: "Musician genre was successfully created." }
        format.json { render :show, status: :created, location: @musician_genre }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @musician_genre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /musician_genres/1 or /musician_genres/1.json
  def update
    respond_to do |format|
      if @musician_genre.update(musician_genre_params)
        format.html { redirect_to musician_genre_url(@musician_genre), notice: "Musician genre was successfully updated." }
        format.json { render :show, status: :ok, location: @musician_genre }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @musician_genre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /musician_genres/1 or /musician_genres/1.json
  def destroy
    @musician_genre.destroy

    respond_to do |format|
      format.html { redirect_to musician_genres_url, notice: "Musician genre was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_musician_genre
      @musician_genre = MusicianGenre.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def musician_genre_params
      params.require(:musician_genre).permit(:user_id, :genre_id)
    end
end
