class ClothesController < ApplicationController

  def index
  @clothe = Clothe.all
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

  private

    def clothe_params
      params.require(:clothe).permit(:name, :gia, :soluong,:picture)
    end

    
end
