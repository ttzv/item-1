module GoogleApiServices
  require 'google/apis/oauth2_v2'
  class ProfileService
  
    def initialize(client)
      @service = Google::Apis::Oauth2V2::Oauth2Service.new
      @service.authorization = client
    end

    def userinfo
      @userinfo = @service.get_userinfo
    end

    def picture
      userinfo if @userinfo.nil?
      @userinfo.picture
    end

    def email
      userinfo if @userinfo.nil?
      @userinfo.email
    end

    def name
      userinfo if @userinfo.nil?
      @userinfo.name
    end

  end
end