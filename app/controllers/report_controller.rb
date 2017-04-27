class ReportController < ApplicationController
  def daily
  	@sales = Sale.where("created_at >= ?", Time.zone.now.beginning_of_day)
  end

  def weekly
  	@sales = Sale.where("created_at >= ?", Time.zone.now.beginning_of_week)
  end

  def monthly
  	@sales = Sale.where("created_at >= ?", Time.zone.now.beginning_of_month)
  end

  def topselling

  end
end
