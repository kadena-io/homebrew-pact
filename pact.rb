class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "http://kadena.io/pact/builds/2.2.3/osx/pact-2.2.3.tar.gz"
  sha256 "bdcd0b6b48887330a157d47da8bd9369c8a530d827aaeefd1c5315c563da7f37"

  bottle :unneeded

  def install
    bin.install "pact"
  end

  test do
    system "#{bin}/pact", "--version"
  end
end
