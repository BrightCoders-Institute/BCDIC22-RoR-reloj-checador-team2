class ReportsController < ApplicationController
  def index
    @stores = Store.all
    @avgin = []
    @avgout = []
    @stores.each do |store|
      @avgin.append(avg_of_times(Check.select("timestamp").where(id_sucursal: store.id, check: 'in')))
      @avgout.append(avg_of_times(Check.select("timestamp").where(id_sucursal: store.id, check: 'out')))
    end
  end

  def show
    @store = Store.find(params[:id])
    @checks = Check.where(id_sucursal: params[:id])
  end

  def avg_of_times(array_of_time)
    size = array_of_time.size
    if (size != 0)
      avg_minutes = array_of_time.map do |timestamp|
        timestamp = timestamp.timestamp.strftime("%H:%M")
        hour, minute = timestamp.split(':')
        total_minutes = hour.to_i * 60 + minute.to_i
      end.inject(:+)/size
      "#{avg_minutes/60}:#{avg_minutes%60}"
    else
      0
    end
  end
end 
