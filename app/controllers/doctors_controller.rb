class DoctorsController < ApplicationController
	before_action :find_doctor, only:[:show,:edit,:update,:destroy]
	
	def new
		@doctor = Doctor.new
	end

	def show
	end

	def create
		@doctor = Doctor.new(doctor_params)

		if @doctor.save
			redirect_to @doctor, notice: "Successfully created new Doctor"
		else
			render 'new'
		end
	end

	def index
		@pins = Pin.all
	end

	def update
	end

	def delete
	end

	private

	def doctor_params
		params.require(:doctor).permit(:officename,:address,:city,:state,:zipcode,:description)
	end

	def find_doctor
		@doctor = Doctor.find(params[:id])
	end

end
