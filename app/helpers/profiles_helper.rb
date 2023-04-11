module ProfilesHelper
  def profile_nil?(user)
    user.profile.nil?
  end  
end
