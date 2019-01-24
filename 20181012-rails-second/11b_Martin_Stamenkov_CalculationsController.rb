class CalculationsController < ApplicationController

        def new
                time2 = Time.now
               render plain: time2 + 14
        end
end
