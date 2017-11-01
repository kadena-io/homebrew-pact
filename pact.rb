class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "http://kadena.io/pact/builds/2.3.0/osx/pact-2.3.0.tar.gz"
  sha256 "485a4790f7306f031b58040134656eea00c37ab649dfed9c76e5e0689526b482"

  bottle :unneeded

  def install
    bin.install "pact"
  end

  test do
    system "#{bin}/pact", "--version"
  end
end
