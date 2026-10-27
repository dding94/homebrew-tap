class Synapse < Formula
  desc "Personal search and work-tidying app for macOS (Korean UI)"
  homepage "https://github.com/dding94/synapse"
  url "https://github.com/dding94/synapse/releases/download/v0.9.0/synapse-0.9.0.tar.gz"
  sha256 "630a7ac421157a0ba289ae07ef667729ca2ecd5c108c3469108765663e222989"
  license "MIT"
  head "https://github.com/dding94/synapse.git", branch: "main"

  depends_on macos: :sonoma

  def install
    # 소스를 이 Mac에서 빌드한다(Xcode Command Line Tools의 swiftc). 앱은 prefix 안에 둔다.
    ENV["SYNAPSE_OUTPUTS"] = prefix.to_s
    system "bash", "./build.sh"
    bin.install "build/synapse-cli"
    bin.install_symlink prefix/"Synapse.app/Contents/MacOS/synapse-mcp"
  end

  def caveats
    <<~EOS
      앱을 응용 프로그램 폴더에 연결하려면:
        ln -sfn "#{opt_prefix}/Synapse.app" ~/Applications/Synapse.app
      열기: open ~/Applications/Synapse.app   (다음부터 단축키 ⌃⌥Space)
      Claude Code에서 Synapse 도구 쓰기(선택):
        claude mcp add --scope user synapse -- "#{opt_bin}/synapse-mcp"
    EOS
  end

  test do
    assert_predicate prefix/"Synapse.app/Contents/MacOS/Synapse", :executable?
    assert_match "사용법", shell_output("#{bin}/synapse-cli 2>&1", 0)
  end
end
