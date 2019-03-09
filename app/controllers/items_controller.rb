class ItemsController < ApplicationController

  def show
    # Itemモデルのfindメソッドを使用して、パラメータの値に一致するidのデータを検索している
    # 取得したデータを@itemというインスタンス変数にセットする
    @item = Item.find(params[:id])
  end

  def index
    @items = Item.all
  end

  def new
    @items = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to "/items"

  end

private

  def item_params
    params.require(:item).permit(:name, :price, :seller, :description, :email, :image_url)
  end

end
