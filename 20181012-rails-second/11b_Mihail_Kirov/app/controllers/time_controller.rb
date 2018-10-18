class TimeController < ApplicationController

    def new
        time = Time.now
        render plain: time.inspect
    end

end