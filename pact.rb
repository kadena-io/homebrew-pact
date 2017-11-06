class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "http://kadena.io/pact/builds/2.3.2/osx/pact-2.3.2.tar.gz"
  sha256 "6b95dcebbeb3f7ab87a191e48c0816a703c962f6d6688e2e2f311e19fc89835f"

  bottle :unneeded

  def install
    bin.install "pact"
  end

  test do
    system "#{bin}/pact", "--version"
  end
end
