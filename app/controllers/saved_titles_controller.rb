class SavedTitlesController < ApplicationController
  before_action :set_saved_title, only: [:show, :edit, :update, :destroy]

  # GET /saved_titles
  # GET /saved_titles.json
  def index
    @saved_titles = SavedTitle.all
  end

  # GET /saved_titles/1
  # GET /saved_titles/1.json
  def show
  end

  # GET /saved_titles/new
  def new
    @saved_title = SavedTitle.new
  end

  # GET /saved_titles/1/edit
  def edit
  end

  # POST /saved_titles
  # POST /saved_titles.json
  def create
    @saved_title = SavedTitle.new(saved_title_params)
    respond_to do |format|
      if @saved_title.save
        format.html { redirect_to @saved_title, notice: 'Movie was successfully added to list.' }
        format.json { render :show, status: :created, location: @saved_title }
      else
        format.html { render :new }
        format.json { render json: @saved_title.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /saved_titles/1
  # PATCH/PUT /saved_titles/1.json
  def update
    respond_to do |format|
      if @saved_title.update(saved_title_params)
        format.html { redirect_to @saved_title, notice: 'Saved title was successfully updated.' }
        format.json { render :show, status: :ok, location: @saved_title }
      else
        format.html { render :edit }
        format.json { render json: @saved_title.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /saved_titles/1
  # DELETE /saved_titles/1.json
  def destroy
    @saved_title.destroy
    respond_to do |format|
      format.html { redirect_to saved_titles_url, notice: 'Saved title was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saved_title
      @saved_title = SavedTitle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def saved_title_params
      params.permit(:title, :description, :image_url)
    end
end
