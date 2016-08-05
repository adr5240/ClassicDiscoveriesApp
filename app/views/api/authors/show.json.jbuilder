json.extract! @author, :fname, :mid_name, :lname, :description, :id
json.full_name @author.full_name
json.image_url asset_path(@author.image.url)
