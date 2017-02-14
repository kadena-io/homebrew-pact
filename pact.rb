class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"
  url "http://kadena.io/pact/builds/2.1.0/osx/pact-2.1.0.tar.gz"
  sha256 "74a2768f69798b133aeafefde0b01d7b7c3aefd3ed606956e839f2052f934438"

  bottle :unneeded

  def install
    bin.install "pact"
  end

  test do
    system "#{bin}/pact", "--version"
  end
end
