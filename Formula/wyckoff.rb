class Wyckoff < Formula
  include Language::Python::Virtualenv

  desc "Wyckoff method quantitative analysis agent for A-shares"
  homepage "https://github.com/YoungCan-Wang/Wyckoff-Analysis"
  url "https://files.pythonhosted.org/packages/source/y/youngcan-wyckoff-analysis/youngcan_wyckoff_analysis-0.9.1.tar.gz"
  sha256 "887999c54ddc4f90bd5c4be5620f46e93a1a74b88d4cf5cfb9dbef242c8c6db1"
  license "AGPL-3.0-only"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wyckoff --version")
  end
end
