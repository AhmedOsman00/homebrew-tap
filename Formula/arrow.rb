class Arrow < Formula
  desc "Swift-based command-line tool for generating dependency extension"
  homepage "https://github.com/AhmedOsman00/arrow-generator"

  # These values will be replaced by brew bump-formula-pr
  url "https://github.com/AhmedOsman00/arrow-generator/releases/download/2.0.0/arrow"
  version "2.0.0"
  sha256 "8024bf43fb28da0b00cb395fcdd2caff598dd3ec6a764a372e96417d40f2d494"

  def install
    bin.install "arrow"
  end

  test do
    system "#{bin}/arrow", "--help"
  end
end
