class Application

  def call(env)
    resp = Rack::Response.new

    t = Time.now
    t1 = t.hour

    resp.write "It is #{t}\n"

    if t1 < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
