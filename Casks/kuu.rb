cask "kuu" do
  version "0.8.26"
  sha256 "d175401cd2fa94302a034d0be1e5bd82bda89a6d1562a775582019662bdb8fdb"

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
