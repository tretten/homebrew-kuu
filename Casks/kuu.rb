cask "kuu" do
  version "0.8.11"
  sha256 "69ad599f49069ecd2c7f576c2ff02313a680733c3cc5869eadad8e2a416c5dc1"

  url "https://github.com/tretten/kuu/releases/download/v#{version}/Kuu-#{version}.zip"
  name "Kuu"
  desc "Minimal native macOS terminal"
  homepage "https://github.com/tretten/kuu"

  app "Kuu.app"

  postflight do
    system_command "xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/Kuu.app"]
  end
end
