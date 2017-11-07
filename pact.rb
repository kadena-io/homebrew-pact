class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "http://kadena.io/pact/builds/2.3.3/osx/pact-2.3.3.tar.gz"
  sha256 "476b45073d906d9fd05fd71383e0b27ce6af910d3414839d6abb7781c3c41557"

  bottle :unneeded

  def install
    bin.install "pact"
  end

  test do
    system "#{bin}/pact", "--version"
  end
end
