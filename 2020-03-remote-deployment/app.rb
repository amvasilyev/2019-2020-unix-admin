require 'roda'

class App < Roda
  plugin :render
  plugin :static, ['/js', '/css']

  route do |r|
    r.root do
      view :root
    end

    r.on 'login' do
      r.get do
        view :login
      end

      r.post do
        @user = r.params['user']
        view :login # Не делайте так!!!!! Если всё хорошо redirect на страницу с информацией
      end
    end
  end
end
