class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "http://kadena.io/pact/builds/2.2.2/osx/pact-2.2.2.tar.gz"
  sha256 "a31d909feeee8456b2409974b87c6b3d0bbfe1bc09e5e8e2fff5b1391fd59ec7"

  bottle :unneeded

  def install
    bin.install "pact"
  end

  test do
    system "#{bin}/pact", "--version"
  end
end
