class Pact < Formula
  desc "Interpreter for the Pact smart contract language"
  homepage "https://github.com/kadena-io/pact"

  on_macos do
    depends_on "z3"
    depends_on "openssl@3"

    on_intel do
      url "https://github.com/kadena-io/pact/releases/download/v4.11.0/pact-4.11.0-osx.tar.gz"
      sha256 "8d3e194a13593cdf33dcd314cb0ca2452302106bfe238624f8e9761c9a4e1ca2"
    end

    on_arm do
      url "https://github.com/kadena-io/pact/releases/download/v4.12.0/pact-4.12.0-aarch64-osx.tar.gz"
      sha256 "a05b5a74d7cccd5d0ea0a61ffad8fbe0cf383bc836598779b07fa5b37fc61ceb"
    end

    head do
      on_arm do
        url "https://github.com/kadena-io/pact-5/releases/download/nightly/pact-nightly-darwin-aarch64.tar.gz"
      sha256 "bce2fc7e4d20949a0584c6e2eb01a9859a5b27a1cf4f669bc291f1d0722fbd15"
      end
    end

    def install
      if Hardware::CPU.intel?
        opoo "Warning: On intel machines, we fallback to the Pact 4.11 release."
      end

      bin.install "pact"
    end

    def caveats
      <<~EOS
         The head version (Pact 5 development build) is currently only available for ARM-based Macs.
         The Intel Macs will use the 4.11 Release.
    EOS
    end
    test do
      system "#{bin}/z3", "-version"
      system "#{bin}/pact", "--version"
    end
  end
end
