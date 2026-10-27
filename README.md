# dding94/homebrew-tap

[Synapse](https://github.com/dding94/synapse)를 Homebrew로 설치하는 tap이에요.

tap을 한 번 등록하면 그다음부터는 이름만으로 설치해요.

```bash
brew tap dding94/tap
brew install synapse
```

한 줄로 하려면 `brew install dding94/tap/synapse`도 돼요(tap 등록까지 함께 해요).

설치가 끝나면 앱을 응용 프로그램 폴더에 연결해요.

```bash
ln -sfn "$(brew --prefix synapse)/Synapse.app" ~/Applications/Synapse.app
```

- 소스를 이 Mac에서 빌드해요(5~10분, Xcode Command Line Tools 필요).
- macOS 14(Sonoma) 이상이 필요해요.
- 업데이트: `brew upgrade synapse` · 지우기: `brew uninstall synapse`
