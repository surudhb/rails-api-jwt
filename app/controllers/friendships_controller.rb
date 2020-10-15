class FriendshipsController < ApplicationController
    before_action :authorized

    def add_friend
        @friendship = Friendship.create(user_id: @user.email, friend_id: "#{params[:email]}.#{params[:domain]}")
        render json: Friendship.all
    end

    def list_my_friends
        friender = Friendship.where(user_id: @user.email)
        friendee = Friendship.where(friend_id: @user.email)
        render json: { friends: friender + friendee }
    end
end