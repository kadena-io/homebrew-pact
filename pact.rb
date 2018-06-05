class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "http://kadena.io/pact/builds/2.4.1/osx/pact-2.4.1.tar.gz"
  sha256 "a30b8d6906b820ed57be9b812ab272fd45e9611e6e0d4287ea5405ab20de69b5"

  depends_on "z3"

  bottle :unneeded

  def install
    bin.install "pact"
  end

  test do
    system "#{bin}/z3", "-version"
    system "#{bin}/pact", "--version"
  end
end
