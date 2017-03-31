class SaleController < ApplicationController
  def index
    @inventories = Inventory.all
    #@sale= @inventory.sale
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end
end
