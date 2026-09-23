cask "kuu" do
  version "0.8.16"
  sha256 "f1ce82a7301d8d75fde3b8832084ce5fe9d8fb727bb8b24d84698e5438c64b47"

  url "https://github.com/tretten/kuu/releases/download/v#{version}/Kuu-#{version}.zip"
  name "Kuu"
  desc "Minimal native terminal"
  homepage "https://github.com/tretten/kuu"

  depends_on :macos

  app "Kuu.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-dr", "com.apple.quarantine", "{{appdir}}/Kuu.app"]
  end
end
