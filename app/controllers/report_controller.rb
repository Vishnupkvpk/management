class ReportController < ApplicationController
  def show
    @expenses = current_user.expenses.total_value
    @incomes = current_user.incomes.total_value
    @report = @incomes - @expenses

    @users = User.all
  end
end
