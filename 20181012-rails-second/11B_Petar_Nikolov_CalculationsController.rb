class TimeTellerController < ApplicationController
  def show
    text = "Current time: #{Time.now}\n"\
            "Number in class: 22"
    render plain: text
  end
end

