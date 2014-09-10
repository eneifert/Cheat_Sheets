class MyClass

  attr_accessor :text
  after_initialize :set_defaults #used to set default values

  # Constructor that uses a hash to initialize the values
	def initialize(*h)
	  if h.length == 1 && h.first.kind_of?(Hash)
	    h.first.each { |k,v| send("#{k}=",v) }
	  end
	end

  def set_defaults
    self.text  ||= 'My default text'           #will set the default value only if it's nil    
  end

  
end