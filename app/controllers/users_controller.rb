class UsersController < ApplicationController

    def index
        @articles = Article.all
    end

    def new
        @article = User.new
    end

    def create
        @user = User.new(user_params)

        respond_to do |format|
            if @user.save
                UserMailer.with(user: @user).welcome_email.deliver_now

                format.html { redirect_to(@user, notice: 'ユーザーが正常に作成されました') }
                format.json { render json: @user, status: :created, location: @user }
            else
                format.html { render action: 'new'}
                format.json { render json: @user.errors, status: :unprocessable_entity }
            end
        end
    end
end
