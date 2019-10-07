class Application

    def call(env)
      resp = Rack::Response.new
      current_time = Time.now

      msg = current_time.hour >= 12 ? "Good Afternoon" : "Good Morning"

      resp.write msg
      
      resp.finish
    end
  
  end