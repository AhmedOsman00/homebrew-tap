class Arrow < Formula
  desc "Swift-based command-line tool for generating dependency extension"
  homepage "https://github.com/AhmedOsman00/arrow-generator"

  # These values will be replaced by brew bump-formula-pr
  url "https://github.com/AhmedOsman00/arrow-generator/releases/download/v1.0.2/arrow"
  version "1.0.2"
  sha256 "a609c182cfe4c26b83730351d2146c34abce918a59cbc80ac79fa16d0a7dbb15"

  def install
    bin.install "arrow"
  end

  test do
    system "#{bin}/arrow", "--help"
  end
end
