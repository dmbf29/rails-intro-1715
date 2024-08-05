require 'open-uri'

class PagesController < ApplicationController

  def about
    # render 'about.html.erb'
  end

  def contact
    # @members = Member.all
    # Are we trying to search????
    @members = ['doug', 'celso', 'matt', 'barry', 'edmond']
    if params[:member].present?
      @members = @members.select { |member| member.start_with?(params[:member].downcase) }
    end

    result = URI.open("https://dictionary.lewagon.com/#{params[:member]}").read
    result = JSON.parse(result)
    raise
  end

  def home

  end

  def show
    # @user = User.find_by(username: '')
  end
end
