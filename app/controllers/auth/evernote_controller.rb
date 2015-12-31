class Auth::EvernoteController < ApplicationController
  def index
    client = EvernoteOAuth::Client.new
    request_token = client.request_token(:oauth_callback => '/auth/evernote/callback')
    request_token.authorize_url
    @access_token = request_token.get_access_token(oauth_verifier: params[:oauth_verifier])
  end

  def callback
    render 'le callback'
  end
end
