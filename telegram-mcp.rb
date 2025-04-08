# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TelegramMcp < Formula
  desc "Telegram MCP server for AI assistants"
  homepage "https://github.com/chaindead/telegram-mcp"
  version "0.1.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/chaindead/telegram-mcp/releases/download/v0.1.21/telegram-mcp_Darwin_x86_64.tar.gz"
      sha256 "27fc48b72d3419ab07bad082e7a2766a08d3e911ec2329d2e6f4ea406abeef52"

      def install
        bin.install "telegram-mcp"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/chaindead/telegram-mcp/releases/download/v0.1.21/telegram-mcp_Darwin_arm64.tar.gz"
      sha256 "ee0eec855b5d87958d0f703a915c15616794aba7dfcb80450de72f68de3b17b3"

      def install
        bin.install "telegram-mcp"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chaindead/telegram-mcp/releases/download/v0.1.21/telegram-mcp_Linux_x86_64.tar.gz"
        sha256 "28f5e06fbd861da9a264e0662da68bd32b92a6446c5bc8b1c78d766c7f12230b"

        def install
          bin.install "telegram-mcp"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chaindead/telegram-mcp/releases/download/v0.1.21/telegram-mcp_Linux_arm64.tar.gz"
        sha256 "3a3a2a37aabfac272cfc09e0edecd3a25f66c73d6d8ab3cc8134599e57af9384"

        def install
          bin.install "telegram-mcp"
        end
      end
    end
  end

  test do
    system "#{bin}/telegram-mcp", "--version"
  end
end
