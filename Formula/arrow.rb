class Arrow < Formula
  desc "Swift-based command-line tool for generating dependency extension"
  homepage "https://github.com/AhmedOsman00/arrow-generator"

  # These values will be replaced by brew bump-formula-pr
  url "https://github.com/AhmedOsman00/arrow-generator/releases/download/v1.0.0/arrow"
  version "v1.0.0"
  sha256 "d84cb9e7761a5bc63ce135e9b1b043539eb2e6bd71fdb6055f1d426e14b21912"

  def install
    bin.install "arrow"
  end

  test do
    system "#{bin}/arrow", "--help"
  end
end
