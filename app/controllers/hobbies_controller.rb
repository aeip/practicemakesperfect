class HobbiesController < ApplicationController
  before_action :set_hobby, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /hobbies
  # GET /hobbies.json
  def index
    @hobbies = Hobby.all
  end

  # GET /hobbies/1
  # GET /hobbies/1.json
  def show
  end

  # GET /hobbies/new
  def new
    @hobby = current_user.hobbies.build
  end

  # GET /hobbies/1/edit
  # GET /hobbies/1/edit
  def edit
  end

  # POST /hobbies
  # POST /hobbies.json
  def create
    @hobby = current_user.hobbies.build(hobby_params)
    @hobby.hours = 0
    @hoby.amount = 0
    if @hobby.save
      redirect_to @hobby, notice: 'Hobby was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /hobbies/1
  # PATCH/PUT /hobbies/1.json
  def update
    if @hobby.update(hobby_params)
      redirect_to @hobby, notice: 'Hobby was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /hobbies/1
  # DELETE /hobbies/1.json
  def destroy
    @hobby.destroy
    redirect_to hobbies_url
  end

  # GET /hobbies/1/add
  def add(amount)
    @hobby.hours += (amount)
  end

  # GET /hobbies/1/subtract
  def subtract(amount)
    @hobby.hours -= (amount)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hobby
      @hobby = Hobby.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hobby_params
      params.require(:hobby).permit(:name, :description, :sunday, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :created_at)
    end
end
