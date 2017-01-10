class AnthoniesController < ApplicationController
  before_action :set_anthony, only: [:show, :edit, :update, :destroy]

  # GET /anthonies
  # GET /anthonies.json
  def index
    @anthonies = Anthony.all
  end

  # GET /anthonies/1
  # GET /anthonies/1.json
  def show
  end

  # GET /anthonies/new
  def new
    @anthony = Anthony.new
  end

  # GET /anthonies/1/edit
  def edit
  end

  # POST /anthonies
  # POST /anthonies.json
  def create
    @anthony = Anthony.new(anthony_params)

    respond_to do |format|
      if @anthony.save
        format.html { redirect_to @anthony, notice: 'Anthony was successfully created.' }
        format.json { render :show, status: :created, location: @anthony }
      else
        format.html { render :new }
        format.json { render json: @anthony.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anthonies/1
  # PATCH/PUT /anthonies/1.json
  def update
    respond_to do |format|
      if @anthony.update(anthony_params)
        format.html { redirect_to @anthony, notice: 'Anthony was successfully updated.' }
        format.json { render :show, status: :ok, location: @anthony }
      else
        format.html { render :edit }
        format.json { render json: @anthony.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anthonies/1
  # DELETE /anthonies/1.json
  def destroy
    @anthony.destroy
    respond_to do |format|
      format.html { redirect_to anthonies_url, notice: 'Anthony was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anthony
      @anthony = Anthony.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def anthony_params
      params.require(:anthony).permit(:title, :description)
    end
end
