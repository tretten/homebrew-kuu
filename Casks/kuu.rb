cask "kuu" do
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/tretten/kuu/releases/download/v#{version}/Kuu-macos.zip"
  name "Kuu"
  desc "Minimal native macOS terminal"
  homepage "https://github.com/tretten/kuu"

  app "Kuu.app"

  postflight do
    system_command "xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/Kuu.app"]
  end
end
