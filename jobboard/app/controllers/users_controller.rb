class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    authorize! :index, User
    @users = User.order('id')
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  def edit

  end

  # GET /users/admin_edit
  def admin_edit
    authorize! :edit, User
    ids = params['user_ids']
    role = params['role']
    delete = params['delete']



    #@users = User.find(ids, :order => 'id')
    @_users = User.order('id').find(ids);

    @users = Array.new

    @_users.each do |user|
      if !delete.nil? && delete[user.id.to_s] == '1'
        user.destroy
      else
        if user.role != role[user.id.to_s]
          user.role = role[user.id.to_s]
          user.save
        end
        @users.push(user)
      end
    end




    respond_to do |format|
      format.html { render :index }
    end
  end

  # POST /users
  # POST /users.json
  def create


    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:user_type, :surname, :first_name, :mail, :promo)
    end
end
