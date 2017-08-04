class Velvetoptimiser < Formula
  desc "Optimisation of Velvet genome assembly"
  homepage "https://github.com/tseemann/VelvetOptimiser"
  # tag "Bioinformatics"

  url "https://github.com/tseemann/VelvetOptimiser/archive/2.2.6.tar.gz"
  sha256 "b407db61b58ed983760b80a3a40c8f8a355851ecfab3e61a551bed29bf5b40b3"

  head "https://github.com/tseemann/VelvetOptimiser.git"

  depends_on "velvet"
  depends_on "Bio::Perl" => :perl

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_match version.to_s, shell_output("VelvetOptimiser.pl --version 2>&1")
  end
end
