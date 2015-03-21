json.array!(@companynames) do |companyname|
  json.extract! companyname, :id, :title, :name, :address, :phone
  json.url companyname_url(companyname, format: :json)
end
