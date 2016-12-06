module API
  module Ver1
    class Root < Grape::API
      version 'ver1', using: :path
      format :json
      # mount Users

      route :any, '*path' do
        error! I18.t('grape.errors.not_found'), 404
      end
    end
  end
end