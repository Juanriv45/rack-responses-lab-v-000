class Application

  def call(env)
    resp = Rack::Response.new
    t = Time.now

    if t.hour >= 12 then
      resp.write "#{t.utc.hour} Good Afternoon!"
    else
      resp.write "#{t.utc.hour} Good Morning!"
    end

    resp.finish
  end

end
