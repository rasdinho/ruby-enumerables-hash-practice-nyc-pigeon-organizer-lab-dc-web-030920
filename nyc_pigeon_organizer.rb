
# require 'pry'

# def nyc_pigeon_organizer(data)

#   new_pigeon_data = {}

#   data.each do |attribute_category, attribute_data_hash|
#     attribute_data_hash.each do |attribute, name_array|
#       name_array.each do |name|
#         new_pigeon_data[name] = {:color => [], :gender => [], :lives => []}  #establish top tier
#       end
#     end
#   end
#   data[:color].each do |attribute, name_array|
#     name_array.each do |name|
#       if data[:color][attribute].include?(name)
#         new_pigeon_data[name][:color] << attribute.to_s
#       end
#     end
#   end
#   data[:gender].each do |attribute, name_array|
#     name_array.each do |name|
#       if data[:gender][attribute].include?(name)
#         new_pigeon_data[name][:gender] << attribute.to_s
#       end
#     end
#   end
#   data[:lives].each do |attribute, name_array|
#     name_array.each do |name|
#       if data[:lives][attribute].include?(name)
#         new_pigeon_data[name][:lives] << attribute
#       end
#     end
#   end
#   binding.pry
#   new_pigeon_data
# end



def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  data.each do |property, hash|
    hash.each do |attribute, array|
      array.each do |name|
        if !new_hash.has_key?(name)
          new_hash[name] = {}
        end

        if !new_hash[name].has_key?(property)
          new_hash[name][property] = []
        end

        if !new_hash[name][property].include?(attribute)
          new_hash[name][property] << attribute.to_s
        end
      end
    end
  end
  new_hash
end