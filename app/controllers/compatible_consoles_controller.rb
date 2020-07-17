class CompatibleConsolesController < ApplicationController
  before_action :set_compatible_console, only: [:show, :edit, :update, :destroy]

  # GET /compatible_consoles
  # GET /compatible_consoles.json
  def index
    @compatible_consoles = CompatibleConsole.all
  end

  # GET /compatible_consoles/1
  # GET /compatible_consoles/1.json
  def show
  end

  # GET /compatible_consoles/new
  def new
    @compatible_console = CompatibleConsole.new
  end

  # GET /compatible_consoles/1/edit
  def edit
  end

  # POST /compatible_consoles
  # POST /compatible_consoles.json
  def create
    @compatible_console = CompatibleConsole.new(compatible_console_params)

    respond_to do |format|
      if @compatible_console.save
        format.html { redirect_to @compatible_console, notice: 'Compatible console was successfully created.' }
        format.json { render :show, status: :created, location: @compatible_console }
      else
        format.html { render :new }
        format.json { render json: @compatible_console.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /compatible_consoles/1
  # PATCH/PUT /compatible_consoles/1.json
  def update
    respond_to do |format|
      if @compatible_console.update(compatible_console_params)
        format.html { redirect_to @compatible_console, notice: 'Compatible console was successfully updated.' }
        format.json { render :show, status: :ok, location: @compatible_console }
      else
        format.html { render :edit }
        format.json { render json: @compatible_console.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compatible_consoles/1
  # DELETE /compatible_consoles/1.json
  def destroy
    @compatible_console.destroy
    respond_to do |format|
      format.html { redirect_to compatible_consoles_url, notice: 'Compatible console was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_compatible_console
      @compatible_console = CompatibleConsole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def compatible_console_params
      params.require(:compatible_console).permit(:name)
    end
end
