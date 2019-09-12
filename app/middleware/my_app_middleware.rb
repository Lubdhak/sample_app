class MyAppMiddleware
    def initialize(app)
      @app = app
    end
  
    def call(env)
      status, headers, body = @app.call(env)
      puts "******************************* - EOR - *******************************"
      [status, headers, body]
    end
end