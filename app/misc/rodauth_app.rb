class RodauthApp < Rodauth::Rails::App
  configure RodauthMain

  route do |r|
    rodauth.load_memory # autologin remembered users
    r.rodauth

    if r.path.start_with?("/admin")
      rodauth.require_authenication
      if Account.find(rodauth.session_value).role != 'admin'
        raise SecurityError.new 'not allowed'
      end
    end

  end
end
