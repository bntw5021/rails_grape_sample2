class API < Grape::API
  prefix "api"
  format :json

  mount Books_API
end
