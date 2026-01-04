class Arrow < Formula
  desc "Swift-based command-line tool for generating dependency extension"
  homepage "https://github.com/AhmedOsman00/arrow-generator"

  # These values will be replaced by brew bump-formula-pr
  url "https://github.com/AhmedOsman00/arrow-generator/releases/download/v1.0.1/arrow"
  version "1.0.1"
  sha256 "db1fd6b0cd845e302db7319d3905f03404035735f55638021bf3b5d21389b858"

  def install
    bin.install "arrow"
  end

  test do
    system "#{bin}/arrow", "--help"
  end
end
