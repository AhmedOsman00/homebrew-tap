class Arrow < Formula
  desc "Swift-based command-line tool for generating dependency extension"
  homepage "https://github.com/AhmedOsman00/arrow-generator"

  # These values will be replaced by brew bump-formula-pr
  url "https://example.com/arrow"
  version "0.0.0"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

  def install
    bin.install "arrow"
  end

  test do
    system "#{bin}/arrow", "--help"
  end
end
