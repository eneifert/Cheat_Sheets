class SearchPosts
	
  #Allows model to be used with the form helpers
	extend ActiveModel::Naming
	  include ActiveModel::Conversion
	  def persisted?
	    false
	  end	


    # Creates getters and setters for fields which are then accessed by the @ symbol. Ex: @text
    # !!!!!!!!!!!!!!IMPORTANT!!!!! Do NOT huse the attr_accessor with ActiveRecord!!!!!!!!!!!!
  	attr_accessor :text, :min, :max, :sort, :housing_type, :bedrooms

    # Static method
  	def self.default
  		return SearchPosts.new({text: '', sort: 'date'})
  	end

    # Constructor that uses a hash to initialize the values
    def initialize(*h)
      if h.length == 1 && h.first.kind_of?(Hash)
        h.first.each { |k,v| send("#{k}=",v) }
      end
    end

    # Standard constructor
  	# def initialize(text, min, max, sort)
  	# 	@text = text  		
  	# 	@min = min
  	# 	@max = max
  	# 	@sort = sort == nil ? 'date' : sort
  	# end

    # public method
  	def get_sort_cat
  		if @sort == 'data'
  			return 'created_at'
  		elsif @sort == 'cheapest'
  			return 'price'
  		else
  			return 'price desc'  		
  		end
  	end
  	
end