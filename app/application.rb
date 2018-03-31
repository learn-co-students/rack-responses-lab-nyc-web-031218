class Application
  def call(env)
    r = Rack::Response.new
    if Time.now.hour > 12
      r.write "Good Afternoon!"
    else
      r.write "Good Morning!"
    end
    r.finish
  end

end
