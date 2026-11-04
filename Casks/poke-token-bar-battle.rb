cask "poke-token-bar-battle" do
  version "2.6.0"
  sha256 "08a92c13134ef6fe6355a1732a1f76dfc2910ceb62be56b2e3a843c0eb833e90"

  url "https://github.com/dding94/poketokenbar-battle/releases/download/v#{version}/PokeTokenBarBattle.zip"
  name "PokeTokenBar Battle"
  desc "Menu bar companion with local practice and online battles"
  homepage "https://github.com/dding94/poketokenbar-battle"

  depends_on macos: ">= :sequoia"
  app "PokeTokenBar Battle.app"
end
