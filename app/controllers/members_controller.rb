class MembersController < ApplicationController
  def new
    @member = Member.new
  end

  def create
    @member = Member.new(member_params)
    if @member.save
      redirect_to root_url, :notice => "Signed up!"
    else
      render "new"
    end
  end

  private

  def member_params
    params.require(:member).permit(:email, :password, :password_confirmation)
  end
end
