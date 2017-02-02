class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "http://kadena.io/pact/builds/2.0.0/osx/pact-2.0.0.tar.gz"
  sha256 "ed6291e0854b39dbb96bbe71cfe2a940a4ef07c3737b438da60a6af8c9d81142"

  bottle :unneeded

  def install
    bin.install "pact"
  end

  test do
    system "#{bin}/pact", "--version"
  end
end
