class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact-5"
  version "5.1"

  on_macos do
    depends_on "z3"
    depends_on "openssl@3"
    depends_on "mpfr"

    on_arm do
      url "https://github.com/kadena-io/pact-5/releases/download/5.1/pact-5.1-darwin-aarch64.tar.gz"
      sha256 "ccf1522cb974c0b939c53e0dcd60746a1e17b8201f9b69b299a45fe991e64df7"
    end

    head do
      on_arm do
        url "https://github.com/kadena-io/pact-5/releases/download/nightly/pact-nightly-darwin-aarch64.tar.gz"
      sha256 "2f3ecbcc4c04102c48c8f30836f162f81343efc5f335a50dd76d2caf5bc63822"
      end
    end

    def install
      if Hardware::CPU.intel?
        odie "Error: Pact 5 is not supported on Intel Macs."
      end

      bin.install "pact"
    end

    def caveats
      <<~EOS
         Pact 5 is only available for ARM-based Macs.
    EOS
    end
    test do
      system "#{bin}/z3", "-version"
      system "#{bin}/pact", "--version"
    end
  end
end
