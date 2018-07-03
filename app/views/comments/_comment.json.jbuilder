json.extract! comment, :id, :rsname, :city, :content, :imgURL1, :imgURL2, :imgURL3, :user, :created_at, :updated_at
json.url comment_url(comment, format: :json)
