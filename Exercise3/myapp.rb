class MyApp
  def initialize
    @show = lambda{|env| env.keys.map {|key| "<b>key</b> => #{env[key]} <br/>"}}
  end
  def call env
    [200,{'Content_type'=>'text/plain'},@show.call(env)]
  end
end	
