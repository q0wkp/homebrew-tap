cask "zap-terminal" do
  version "2026.07.09.2-mod.2"

  on_arm do
    sha256 "da96c0e01651ec468d380ed3f84c27796c93f21852e74ea2d3a74200253f0da9"

    url "https://github.com/q0wkp/zap/releases/download/v2026.07.09.2-mod.2/Zap-arm64.dmg"
  end
  on_intel do
    sha256 "9014d84addc9149def27e648651e2c750845c4fa9a26a4eaad2087cce096754a"

    url "https://github.com/q0wkp/zap/releases/download/v2026.07.09.2-mod.2/Zap-intel.dmg"
  end

  name "Zap"
  desc "Community fork of the Warp terminal"
  homepage "https://github.com/q0wkp/zap"

  auto_updates true
  conflicts_with cask: "zap"
  depends_on :macos

  app "Zap.app"

  # The app isn't notarized, so Gatekeeper would refuse to open it.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Zap.app"]
  end
end
