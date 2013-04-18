class SpielersController < ApplicationController
  # GET /spielers
  # GET /spielers.json
  def index
    @spielers = Spieler.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @spielers }
    end
  end

  # GET /spielers/1
  # GET /spielers/1.json
  def show
    @spieler = Spieler.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @spieler }
    end
  end

  # GET /spielers/new
  # GET /spielers/new.json
  def new
    @spieler = Spieler.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @spieler }
    end
  end

  # GET /spielers/1/edit
  def edit
    @spieler = Spieler.find(params[:id])
  end

  # POST /spielers
  # POST /spielers.json
  def create
    @spieler = Spieler.new(params[:spieler])

    respond_to do |format|
      if @spieler.save
        format.html { redirect_to @spieler, notice: 'Spieler was successfully created.' }
        format.json { render json: @spieler, status: :created, location: @spieler }
      else
        format.html { render action: "new" }
        format.json { render json: @spieler.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /spielers/1
  # PUT /spielers/1.json
  def update
    @spieler = Spieler.find(params[:id])

    respond_to do |format|
      if @spieler.update_attributes(params[:spieler])
        format.html { redirect_to @spieler, notice: 'Spieler was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @spieler.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spielers/1
  # DELETE /spielers/1.json
  def destroy
    @spieler = Spieler.find(params[:id])
    @spieler.destroy

    respond_to do |format|
      format.html { redirect_to spielers_url }
      format.json { head :no_content }
    end
  end
end
