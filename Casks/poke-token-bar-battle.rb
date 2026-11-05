cask "poke-token-bar-battle" do
  version "2.7.0"
  sha256 "af57f05d2f1c69bd60e4bac60b5331bb36761f97fb06163f0fb732f1804f2818"

  url "https://github.com/dding94/poketokenbar-battle/releases/download/v#{version}/PokeTokenBarBattle.zip"
  name "PokeTokenBattle"
  desc "Menu bar companion with local practice and online battles"
  homepage "https://github.com/dding94/poketokenbar-battle"

  depends_on macos: ">= :sequoia"
  app "PokeTokenBattle.app"
end
