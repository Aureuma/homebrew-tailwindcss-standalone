class TailwindcssStandalone < Formula
  desc "Standalone CLI for Tailwind CSS - no Node.js required"
  homepage "https://tailwindcss.com"
  version "v4.3.4"
  license "MIT"

  # NOTE: SHA256 checksums will be automatically updated by the GitHub Actions workflow
  # The workflow runs daily and on manual trigger to fetch latest releases
  # Initial checksums should be updated by running the workflow manually after setup
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tailwindlabs/tailwindcss/releases/download/v4.3.4/tailwindcss-macos-arm64"
      sha256 "a516a11b439bfbb5ecd4a2d13b75e6cdcc284dc710aed8731e31d2e5c03895a4"
    else
      url "https://github.com/tailwindlabs/tailwindcss/releases/download/v4.3.4/tailwindcss-macos-x64"
      sha256 "7ec771593a1fb8bbd204f70429361b0158f7989e4136bc68d04513bf543a15ba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tailwindlabs/tailwindcss/releases/download/v4.3.4/tailwindcss-linux-arm64"
      sha256 "f6d7baae1d350ed3a2defe98d0b5cc58e37400c0173b2e38d42f690ccc4bbfe1"
    elsif Hardware::CPU.intel?
      url "https://github.com/tailwindlabs/tailwindcss/releases/download/v4.3.4/tailwindcss-linux-x64"
      sha256 "149a8ece5b855587a9c10de6da9dcbcfad0e47c4ed5dca219f721b3eae39d817"
    end
  end

  def install
    # Rename the downloaded binary to tailwindcss
    raise "Binary not found" if Dir["tailwindcss-*"].empty?
    bin.install Dir["tailwindcss-*"].first => "tailwindcss"
    chmod 0755, bin/"tailwindcss"
  end

  def caveats
    <<~EOS
      The tap auto-updates daily via GitHub Actions to keep TailwindCSS current.
      If Homebrew reports a checksum mismatch, run `brew update` to pull the
      latest tap revision before reinstalling.
    EOS
  end

  test do
    # Test that the binary runs and shows version
    system bin/"tailwindcss", "--help"
  end
end
