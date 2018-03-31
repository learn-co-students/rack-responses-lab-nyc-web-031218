class Application
  def call(env)
    resp = Rack::Response.new
    time = Time.now 
    hour = time.hour
    min = time.min
    sec = time.sec
    resp.write "It is #{hour}:#{min}:#{sec}\n"

    if hour < 12
      resp.write "Good Morning!"
    elsif hour >= 12
      resp.write "Good Afternoon!"
    end
    resp.finish
  end
end
