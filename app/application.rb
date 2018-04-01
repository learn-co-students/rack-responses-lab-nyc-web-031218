class Application

  def call(env)
    resp = Rack::Response.new

    t = Time.now.strftime('%H:%M')
    resp.write "Current time: #{t}\n"

    if t < "12:00"
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end
end
