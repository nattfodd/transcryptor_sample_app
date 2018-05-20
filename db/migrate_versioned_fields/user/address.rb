VersionedFields::Migrations.draw_for(User, :address) do
  version 1 # automatically set smallest version as initial one
  version 2 do |value|
    "Los Angeles #{value}"
  end

  version 3 do |value|
    value.gsub('Los Angeles', 'LA')
  end
end
