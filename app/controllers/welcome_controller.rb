class WelcomeController < ApplicationController
	 before_action :authenticate_user!
  def index
  end

  def profile
  end
  
  def update_profile
    
    
    p = params["profile_picture"]
    new_filename = SecureRandom.hex + "." + p.original_filename.split(".")[1]

    File.open(Rails.root.join('public', 'uploads', new_filename), 'wb') do |file|
      file.write(p.read)
    end

    current_user.profile_picture = new_filename
    current_user.save
    redirect_to :profile
  end	
end
