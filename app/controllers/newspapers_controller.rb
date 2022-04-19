class NewspapersController < ApplicationController
  before_action :fetch_newspaper, only: [:edit, :update]

  def index
    @newspapers = Newspaper.all()
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
    @user = @current_user
  end

  def update
    if @newspaper.update!(newspaper_params)
      redirect_to newspaper_index_path
    else
      render 'edit'
    end
  end

  def edit
  end

  def update
  end

  private

    def fetch_newspaper
      @newspaper = Newspaper.find(params[:id])
    rescue => e
      render status: :not_found, json: { error: e }
    end

    def newspaper_params
      params.require(:newspaper).permit(:abstract)
    end
end
