class BKrasimirGeorgievCalculationsController < ApplicationController
	def new
		class_num = 13

		render plain: "#{Time.now + class_num}"
	end
end
