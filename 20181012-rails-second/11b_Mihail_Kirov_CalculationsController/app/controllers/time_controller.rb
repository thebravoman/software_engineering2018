class TimeController < ApplicationController

    def new
        time = Time.now
        render plain: time.inspect + "Number in class: 19"
    end

end