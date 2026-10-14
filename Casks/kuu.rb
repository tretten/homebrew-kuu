cask "kuu" do
  version "0.8.24"
  sha256 "8584b98a9d409950ec810d315e8407bb0882b9f56dbeed1ed17c076defe84ff0"

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
