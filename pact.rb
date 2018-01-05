class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "http://kadena.io/pact/builds/2.3.6/osx/pact-2.3.6.tar.gz"
  sha256 "c2b2a4ac105717cf7356f8dd10dc7bd6dc572cf3313ea0b3a86b8ba8ed5dad9f"


  bottle :unneeded

  def install
    bin.install "pact"
  end

  test do
    system "#{bin}/pact", "--version"
  end
end
