class UsersController < ApplicationController
  def index
    @q = User.ransack(params[:q])
    @users = @q.result(:distinct => true).includes(:genres, :location, :instruments)
    # @users = User.all.order({ :username => :asc }) 
  end

  def show
    @user = User.find_by!(username: params.fetch(:username))
  end

  def email_request
    @user = User.find_by!(username: params.fetch(:username))
    sender_email = params.fetch(:sender_address)
    message_subject = params.fetch(:subject)
    message_body = params.fetch(:body)

    mg_key = ENV.fetch("MAILGUN_API_KEY")
    mg_sending_domain = ENV.fetch("MAILGUN_SENDING_DOMAIN")
    personal_email = ENV.fetch("PERSONAL_EMAIL")
    mg_client = Mailgun::Client.new(mg_key)

    email_info = {
      :from => sender_email,
      :to => personal_email,
      :subject => message_subject,
      :text => message_body
    }

    mg_client.send_message(mg_sending_domain, email_info)

    redirect_to user_path(@user.username)
  end
end
