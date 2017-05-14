class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "http://kadena.io/pact/builds/2.2.1/osx/pact-2.2.1.tar.gz"
  sha256 "fad0e5d139e685ff6576c11d2e4c14712a12bc29818d2fdf44dd72e656044153"

  bottle :unneeded

  def install
    bin.install "pact"
  end

  test do
    system "#{bin}/pact", "--version"
  end
end
