cask "synapse-app" do
  version "0.10.0"
  sha256 "2c89194c6c37c1ec143e56feb7fa5fda653837d1b94e26fdfec572201eb6eb87"

  url "https://github.com/dding94/synapse/releases/download/v#{version}/Synapse-#{version}.zip"
  name "Synapse"
  desc "Personal search and work-tidying app for macOS (Korean UI)"
  homepage "https://github.com/dding94/synapse"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Synapse.app"
  binary "#{appdir}/Synapse.app/Contents/MacOS/synapse-mcp"

  caveats <<~EOS
    Apple 공증을 받지 않은 앱이라 처음 열 때 macOS가 막아요.
    시스템 설정 → 개인정보 보호 및 보안 → 아래쪽 "그래도 열기"를 한 번 눌러 주세요.
    다음부터 단축키 ⌃⌥Space로 불러요.

    Claude Code에서 Synapse 도구 쓰기(선택):
      claude mcp add --scope user synapse -- "#{appdir}/Synapse.app/Contents/MacOS/synapse-mcp"

    소스에서 빌드하는 수식(dding94/tap/synapse)과 함께 설치하지 마세요(synapse-mcp가 겹쳐요).
  EOS
end
