cask "arrow" do
  version "2.1.0"
  sha256 "5026146ececf5b90030701a1b0305d8ea3eb374c6767f8fbb7b34abc8e48d90f"

  url "https://github.com/AhmedOsman00/arrow/releases/download/#{version}/arrow"
  name "arrow"
  desc "Generates dependency registration code for the Arrow DI library"
  homepage "https://github.com/AhmedOsman00/arrow/tree/main/Generator"

  depends_on :macos

  binary "arrow"

  # The binary is not notarized, so Gatekeeper would quarantine it on first run.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "arrow"], chdir: "."
  end
end
