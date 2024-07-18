class DadJokeService

  def self.generate_joke
    call_api
  end

  private

  def self.call_api
    response = conn.get
    JSON.parse(response.body, symbolize_names: true)
  rescue Faraday::Error => e
    { error: e.message }
  end

  def self.conn
    Faraday.new(url: "https://icanhazdadjoke.com/")
  end
end