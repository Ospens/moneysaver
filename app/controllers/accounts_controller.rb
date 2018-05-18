# accounts
class AccountsController < ApplicationController
  def index
    @accounts = Account.all
  end

  def show; end

  def new
    @account = Account.new
  end

  def create
    @account = Account.new(account_params)
    if @account.save
      redirect_to accounts_path, notice: 'Счет создан'
    else
      render :new
    end
  end

  def edit; end

  def update
    if @account.update_attributes(account_params)
      redirect_to @account, notice: 'Счет изменен'
    else
      render :edit
    end
  end

  def destroy
    @account.destroy
    redirect_to root_path, notice: 'Счет удален'
  end

  private

  def find_account
    @accounts = Account.find(params[:id])
  end

  def account_params
    params.require(:account).permit(:title,
                                    :icon,
                                    :color,
                                    :balance)
  end
end
