def nyc_pigeon_organizer(data)
  pigeon_names = data[:gender][:male] + data[:gender][:female]
  pigeon_hash = {}
  pigeon_names.each do |name|
    pigeon_hash[name] = {}
    data.each do |property, values|
      pigeon_hash[name][property] = []
      values.each do |value, array|
        if array.include?(name)
          pigeon_hash[name][property] << value.to_s
        end
      end
    end
  end
  return pigeon_hash
end
