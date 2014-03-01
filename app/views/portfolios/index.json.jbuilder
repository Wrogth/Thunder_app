json.array!(@portfolios) do |portfolio|
  json.extract! portfolio, :feed, :cover_image, :bio
  json.url portfolio_url(portfolio, format: :json)
end