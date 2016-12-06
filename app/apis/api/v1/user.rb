module API
  module Ver1
    class Users < Grape::API
      format :json
      get '/' do
        @users = User.where("addr1 = ?", user_paramas[:addr1])
      end
    end
  end
end