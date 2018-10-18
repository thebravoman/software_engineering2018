class CalculationsController < ApplicationController
	def new
	end
	def create
	a=params[:a].to_f
	b=params[:b].to_f
	c=params[:c].to_f
		flag=0
	diskriminanta=(b*b)-(4*a*c)
	if a==0 && b==0 && c==0
		render plain: "*"
		flag =1 
	end
	if a==0 && b==0 && c!=0
		render plain: "NaN"
		flag =1 
	end 
	if a==0 && b!=0 && c==0 || a!=0 && b==0 && c==0
		x1=0.0
		flag = 1 
		render plain: "#{x1}"
	end
	if a==0 && b!=0 && c!=0
		x1=x2=(-c)/b
		x1=x1.round(3)
		flag =1
		render plain:"#{x1}"  
	end
	if a!=0 && b!=0 && c==0
		x1=0.0
		x2=(-b)/a
		x2=x2.round(3)
		if x1>x2
			x1=x1+x2
			x2=x1-x2
			x1=x1-x2
		end
		render plain:"#{x1},#{x2}"
		flag =1
	end
	if a!=0 && b==0 && c!=0
		x1=(-c)/a
		flag=1
		if x1<0
			render plain: "NaN"	
		else
			x1=Math.sqrt(x1)
			x2=-x1
			if x1>x2
				x1=x1+x2
				x2=x1-x2
				x1=x1-x2
			end
			x1=x1.round(3)
			x2=x2.round(3)
			render plain: "#{x1},#{x2}"	
		end
	end
	if flag!=1	
		if diskriminanta < 0
			render plain: "NaN"
		elsif diskriminanta==0
			x1=x2=(-b)/(2*a)
			x1=x1.round(3)
			puts x1
		else 
			diskriminanta=Math.sqrt(diskriminanta)
			x1=(-b+diskriminanta)/(2*a)
			x2=(-b-diskriminanta)/(2*a)
			if x1>x2
				x1=x1+x2
				x2=x1-x2
				x1=x1-x2
			end
			x1=x1.round(3)
			x2=x2.round(3)
			render plain: "#{x1},#{x2}"
		end
	end	
	end
end
