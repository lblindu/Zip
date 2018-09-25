class ZipcodedatabasesController < ApplicationController
  before_action :set_zipcodedatabase, only: [:show, :edit, :update, :destroy]

  # GET /zipcodedatabases
  # GET /zipcodedatabases.json
  def index
    @zipcodedatabases = Zipcodedatabase.all
  end

  # GET /zipcodedatabases/1
  # GET /zipcodedatabases/1.json
  def show
  end

  # GET /zipcodedatabases/new
  def new
    @zipcodedatabase = Zipcodedatabase.new
  end

  # GET /zipcodedatabases/1/edit
  def edit
  end

  # POST /zipcodedatabases
  # POST /zipcodedatabases.json
  def create
    @zipcodedatabase = Zipcodedatabase.new(zipcodedatabase_params)

    respond_to do |format|
      if @zipcodedatabase.save
        format.html { redirect_to @zipcodedatabase, notice: 'Zipcodedatabase was successfully created.' }
        format.json { render :show, status: :created, location: @zipcodedatabase }
      else
        format.html { render :new }
        format.json { render json: @zipcodedatabase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zipcodedatabases/1
  # PATCH/PUT /zipcodedatabases/1.json
  def update
    respond_to do |format|
      if @zipcodedatabase.update(zipcodedatabase_params)
        format.html { redirect_to @zipcodedatabase, notice: 'Zipcodedatabase was successfully updated.' }
        format.json { render :show, status: :ok, location: @zipcodedatabase }
      else
        format.html { render :edit }
        format.json { render json: @zipcodedatabase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zipcodedatabases/1
  # DELETE /zipcodedatabases/1.json
  def destroy
    @zipcodedatabase.destroy
    respond_to do |format|
      format.html { redirect_to zipcodedatabases_url, notice: 'Zipcodedatabase was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zipcodedatabase
      @zipcodedatabase = Zipcodedatabase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zipcodedatabase_params
      params.require(:zipcodedatabase).permit(:zip, :City, :state, :StateAbb, :county)
    end
end
