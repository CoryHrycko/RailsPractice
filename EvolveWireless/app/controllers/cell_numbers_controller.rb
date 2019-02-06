class CellNumbersController < ApplicationController
  before_action :set_cell_number, only: [:show, :edit, :update, :destroy]

  # GET /cell_numbers
  # GET /cell_numbers.json
  def index
    @cell_numbers = CellNumber.all
  end

  # GET /cell_numbers/1
  # GET /cell_numbers/1.json
  def show
  end

  # GET /cell_numbers/new
  def new
    @cell_number = CellNumber.new
  end

  # GET /cell_numbers/1/edit
  def edit
  end

  # POST /cell_numbers
  # POST /cell_numbers.json
  def create
    @cell_number = CellNumber.new(cell_number_params)

    respond_to do |format|
      if @cell_number.save
        format.html { redirect_to @cell_number, notice: 'Cell number was successfully created.' }
        format.json { render :show, status: :created, location: @cell_number }
      else
        format.html { render :new }
        format.json { render json: @cell_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cell_numbers/1
  # PATCH/PUT /cell_numbers/1.json
  def update
    respond_to do |format|
      if @cell_number.update(cell_number_params)
        format.html { redirect_to @cell_number, notice: 'Cell number was successfully updated.' }
        format.json { render :show, status: :ok, location: @cell_number }
      else
        format.html { render :edit }
        format.json { render json: @cell_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cell_numbers/1
  # DELETE /cell_numbers/1.json
  def destroy
    @cell_number.destroy
    respond_to do |format|
      format.html { redirect_to cell_numbers_url, notice: 'Cell number was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cell_number
      @cell_number = CellNumber.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cell_number_params
      params.require(:cell_number).permit(:relative, :relative, :relative)
    end
end
