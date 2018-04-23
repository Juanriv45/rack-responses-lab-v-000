class Application

  def call(env)
    resp = Rack::Response.new
    t = Time.now

    if t.hour >= 12 then
      resp.write "#{t.hour} Good Afternoon!"
    else
      resp.write "#{t.hour} Good Morning!"
    end

    resp.finish
  end

end
