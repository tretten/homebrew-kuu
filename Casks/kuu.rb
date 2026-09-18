cask "kuu" do
  version "0.8.8"
  sha256 "bfccb789f69e638adcef378740aaf1e0e1530c75f9642a85bb7ebef058905fed"

  url "https://github.com/tretten/kuu/releases/download/v#{version}/Kuu-#{version}.zip"
  name "Kuu"
  desc "Minimal native macOS terminal"
  homepage "https://github.com/tretten/kuu"

  app "Kuu.app"

  postflight do
    system_command "xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/Kuu.app"]
  end
end
