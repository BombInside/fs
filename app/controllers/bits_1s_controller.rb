class Bits1sController < ApplicationController
  before_action :set_bits_1, only: [:show, :edit, :update, :destroy]

  # GET /bits_1s
  # GET /bits_1s.json
  def index
    @bits_1s = Bits1.all
  end

  # GET /bits_1s/1
  # GET /bits_1s/1.json
  def show
  end

  # GET /bits_1s/new
  def new
    @bits_1 = Bits1.new
  end

  # GET /bits_1s/1/edit
  def edit
  end

  # POST /bits_1s
  # POST /bits_1s.json
  def create
    @bits_1 = Bits1.new(bits_1_params)

    respond_to do |format|
      if @bits_1.save
        format.html { redirect_to @bits_1, notice: 'Bits 1 was successfully created.' }
        format.json { render action: 'show', status: :created, location: @bits_1 }
      else
        format.html { render action: 'new' }
        format.json { render json: @bits_1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bits_1s/1
  # PATCH/PUT /bits_1s/1.json
  def update
    respond_to do |format|
      if @bits_1.update(bits_1_params)
        format.html { redirect_to @bits_1, notice: 'Bits 1 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @bits_1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bits_1s/1
  # DELETE /bits_1s/1.json
  def destroy
    @bits_1.destroy
    respond_to do |format|
      format.html { redirect_to bits_1s_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bits_1
      @bits_1 = Bits1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bits_1_params
      params.require(:bits_1).permit(:user_id, :bit_cost, :comment)
    end
end
