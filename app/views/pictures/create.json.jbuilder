
# This is the kind of json response that is required by jQuery-File-Upload
# The required bits are buried somewhere in the jquery-file-download scripts
json.array!([@picture]) do |json, picture|
  json.picture          picture.picture
  json.url              picture.picture_url
end
