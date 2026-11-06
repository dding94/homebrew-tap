cask "poke-token-bar-battle" do
  version "2.7.1"
  sha256 "32acd7fb4f96e489021d68c6e815e0a648ccfb6b1dce1f3e3948058f3a6fe8d6"

  url "https://github.com/dding94/poketokenbar-battle/releases/download/v#{version}/PokeTokenBarBattle.zip"
  name "PokeTokenBattle"
  desc "Menu bar companion with local practice and online battles"
  homepage "https://github.com/dding94/poketokenbar-battle"

  depends_on macos: :sequoia
  app "PokeTokenBattle.app"
end
