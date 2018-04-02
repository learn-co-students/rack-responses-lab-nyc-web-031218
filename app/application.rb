class Application

  def call(env)
    resp = Rack::Response.new

    time = Time.now.strftime('%H:%M')
    twelve = '12:00'

    if time > twelve
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end

    resp.finish
  end

end
