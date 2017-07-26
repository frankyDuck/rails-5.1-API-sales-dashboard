class ApiConstraints
  def initialize(options)
    @version = options[:version]
    @default = options[:default]
  end
    
  def matches?(req)
    @default || req.headers['Accept'].include?("application/vnd.sales_app.v#{@version}")
  end
end

# in initialize we extract the options out into instance variables. We also provide a matches? 
# method which the router will trigger for the constraint. This checks to see if 
# if the default version is required or if the request’s Accept header 
# matches the given version string. This string can be whatever you want the header to match.