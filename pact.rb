class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "http://kadena.io/pact/builds/2.3.1/osx/pact-2.3.1.tar.gz"
  sha256 "595710e06d439c1bd8cc1d3d35c54dfd2a730936eab457a60d31551da5eb9bde"

  bottle :unneeded

  def install
    bin.install "pact"
  end

  test do
    system "#{bin}/pact", "--version"
  end
end
