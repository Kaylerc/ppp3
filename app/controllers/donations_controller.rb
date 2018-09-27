class DonationsController < ApplicationController
  before_action :set_donation, only: [:show, :edit, :update]


  def new
    @donation = Donation.new
  end

  def index
    @donations = Donation.all
  end

  def create
    @donation = Donation.new(donation_params)
    if @donation.save
      msg = "Your donation has been successfully created"
      p msg
      redirect_to @donation
    else
        msg = "There was an error in creating your donation.  Try again"
      p msg
      p @donation.errors.messages
      render 'new'
    end


  def show
  end


  def update
    if @donation.update(donation_params)
      p 'Donation Successfully Updated!'
      redirect_to @donation
    else
      render 'edit'
    end
  end



    def edit
    end
end


private

  def set_donation
      @donation = Donation.find(params[:id])
  end

  def donation_params
    params.require(:donation).permit(:first_name, :last_name, :email, :phone, :region, :pickup_location, :pickup_time, :runner, :distributor, :password, :password_confirmation)
  end
end
