class UsersController < ApplicationController
    before_action :authorized, except: [:create, :login]

    def create
        @user = User.create(create_params)
        if @user.valid?
            token = encode_token({user_id: @user.email})
            render json: { token: token }
        end
    end

    def login
        @user = User.find_by(email: login_params[:email])

        if @user && @user.authenticate(login_params[:password])
            token = encode_token({user_id: @user.id})
            render json: { token: token }
        else
            render json: { error: 'Invalid credentials' }
        end
    end


# REQUIRE AUTH ROUTES BEGIN

    def auto_login
        render json: @user
    end

    def index
        @all_users = User.all.map { |u| { name: u.name, email: u.email } }
        render json: { users: @all_users }
    end

# REQUIRE AUTH ROUTES END

    private 

    def create_params
        params.require(:user).permit(:name, :email, :password)
    end

    def login_params
        params.require(:login).permit(:email, :password)
    end
    
end
