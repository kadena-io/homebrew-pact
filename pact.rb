class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "http://kadena.io/pact/builds/2.3.5/osx/pact-2.3.5.tar.gz"
  sha256 "0ec869901b9e6752003c1b4a8680cf61403dc1ae9dfce44655e23b853648a0da"


  bottle :unneeded

  def install
    bin.install "pact"
  end

  test do
    system "#{bin}/pact", "--version"
  end
end
