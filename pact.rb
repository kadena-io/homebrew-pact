class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "http://kadena.io/pact/builds/2.3.8/osx/pact-2.3.8.tar.gz"
  sha256 "d00e94a0895bae1b97f1e155a1a664f35f62a150456618992d6f870f54468e5d"


  bottle :unneeded

  def install
    bin.install "pact"
  end

  test do
    system "#{bin}/pact", "--version"
  end
end
