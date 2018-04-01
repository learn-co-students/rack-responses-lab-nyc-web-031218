class Application

  def call(env)
    resp = Rack::Response.new

    t = Time.now
    t_arr = t.to_a

    if t_arr[2] >= 12
    resp.write "Good Afternoon."
  else
    resp.write "Good Morning."
  end

    resp.finish
  end

end
