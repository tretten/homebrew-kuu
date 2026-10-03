cask "kuu" do
  version "0.8.20"
  sha256 "2c67ea74374acc7b996ac51e2a1079c9cb54b7f350caa291d34a9ac6987b2bc0"

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
