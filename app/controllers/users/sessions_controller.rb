class Users::SessionsController < Devise::SessionsController
	
	skip_before_action :verify_authenticity_token

	def new
        super do |resource|
          # resource.build_profile_user
        end
    end
    
    protected
        
        def after_sign_in_path_for(resource)
            # stored_location = stored_location_for(resource)

            # if stored_location.match(root_path)
            #     stored_location
            # else
            #     new_user_session_path
            # end
            root_path
        end
end
