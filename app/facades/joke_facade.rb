class JokeFacade
  def self.gen_joke
    format_joke
  end

  def self.format_joke
    service_json = DadJokeService.generate_joke

    joke = service_json[:joke]
  end
end