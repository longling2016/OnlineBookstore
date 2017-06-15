module ApplicationHelper
	def hidden_div_if(condition, attributes = {}, &block)
 content_tag("div", attributes, &block)
 end
end
