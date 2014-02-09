module PrescrisHelper
	def total price,amount
		price*amount
	end
	def link_to_add_fields(name, f, association)
        new_object = f.object.class.reflect_on_association(association).klass.new
        fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
          render(association.to_s.singularize, :f => builder)
        end
        link_to_function(name, "add_fields(this,'#{association}', '#{escape_javascript(fields)}')",class: "btn btn-success")
   end

   def use_method
     {
       "静脉滴注一天一次" => "静脉滴注一天一次",
       "肌肉注射一天一次" => "肌肉注射一天一次",
       "肌肉注射一天二次" => "肌肉注射一天二次"
     }
   end
end
