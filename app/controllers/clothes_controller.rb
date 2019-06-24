class ClothesController < ApplicationController
  before_action :logged_in_user, only: [:edit, :update, :new , :show , :index]

  def index
    @clothes = if params[:term]
    Clothe.where('name LIKE ?', "%#{params[:term]}%")
    else
    @clothes = Clothe.all
    end
  end

  def show
  @clothe = Clothe.find(params[:id])
  end

  def new
  @clothe = Clothe.new
  end

  def create
    @clothe = Clothe.new(clothe_params)    
    if @clothe.save
      flash[:success] = "Thêm thành công"
      redirect_to @clothe
    else
      render 'new'
    end
  end

  def buy
  end

  private
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

    def clothe_params
      params.require(:clothe).permit(:name, :gia, :soluong,
                                   :picture, :term)
    end
    
end
