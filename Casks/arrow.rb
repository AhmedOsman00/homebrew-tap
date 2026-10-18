cask "arrow" do
  version "2.0.0"
  sha256 "8024bf43fb28da0b00cb395fcdd2caff598dd3ec6a764a372e96417d40f2d494"

  url "https://github.com/AhmedOsman00/arrow-generator/releases/download/#{version}/arrow"
  name "arrow"
  desc "Generates dependency registration code for the Arrow DI library"
  homepage "https://github.com/AhmedOsman00/arrow-generator"

  depends_on :macos

  binary "arrow"

  # The binary is not notarized, so Gatekeeper would quarantine it on first run.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "arrow"], chdir: "."
  end
end
