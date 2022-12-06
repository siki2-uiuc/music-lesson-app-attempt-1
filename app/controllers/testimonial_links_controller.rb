class TestimonialLinksController < ApplicationController
  before_action :set_testimonial_link, only: %i[ show edit update destroy ]

  # GET /testimonial_links or /testimonial_links.json
  def index
    @testimonial_links = TestimonialLink.all
  end

  # GET /testimonial_links/1 or /testimonial_links/1.json
  def show
  end

  # GET /testimonial_links/new
  def new
    @testimonial_link = TestimonialLink.new
  end

  # GET /testimonial_links/1/edit
  def edit
  end

  # POST /testimonial_links or /testimonial_links.json
  def create
    @testimonial_link = TestimonialLink.new(testimonial_link_params)

    respond_to do |format|
      if @testimonial_link.save
        format.html { redirect_to testimonial_link_url(@testimonial_link), notice: "Testimonial link was successfully created." }
        format.json { render :show, status: :created, location: @testimonial_link }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @testimonial_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testimonial_links/1 or /testimonial_links/1.json
  def update
    respond_to do |format|
      if @testimonial_link.update(testimonial_link_params)
        format.html { redirect_to testimonial_link_url(@testimonial_link), notice: "Testimonial link was successfully updated." }
        format.json { render :show, status: :ok, location: @testimonial_link }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @testimonial_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testimonial_links/1 or /testimonial_links/1.json
  def destroy
    @testimonial_link.destroy

    respond_to do |format|
      format.html { redirect_to testimonial_links_url, notice: "Testimonial link was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testimonial_link
      @testimonial_link = TestimonialLink.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def testimonial_link_params
      params.require(:testimonial_link).permit(:link_url, :user_id)
    end
end
