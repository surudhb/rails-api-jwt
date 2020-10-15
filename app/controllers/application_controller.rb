class ApplicationController < ActionController::API
    before_action :authorized # runs before running any action
    
    def encode_token(payload)
        JWT.encode(payload, Rails.application.secrets.secret_key_base)
    end

    def auth_header
        request.headers['Authorization']
    end

    def decoded_token
        if auth_header
            token = auth_header.split("\s")[1] # { 'Authorization' : 'Bearer #{token}' }
            begin
                JWT.decode(token, Rails.application.secrets.secret_key_base, true, algorithm: 'HS256')
            rescue JWT::DecodeError
                nil # puts("ERROR DECODING TOKEN")
            end
        end
    end

    def logged_in_user
        if decoded_token
            user_id = decoded_token[0]['user_id']
            @user = User.find_by(id: user_id)
        end
    end

    def logged_in?
        !!logged_in_user # convert to boolean
    end

    def authorized
        render json: { message: 'Please Log In/Sign up' }, status: :unauthorized unless logged_in?  
    end

end
