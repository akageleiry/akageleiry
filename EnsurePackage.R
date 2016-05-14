
EnsurePackage <- function(pkg) {
  
  #
  # Author:  Andy Kageleiry
  # Updated: 2016-05-14
  #
  # Description:
  # Short function to (a) ensure a single package is installed then (b) load it.
  #
  # Inputs:
  # pkg = Package name, in quotes
  #
  # Outputs:
  # [none]
  #
  # Disclaimer:
  # This material is for private use only. Any use (including but not limited
  # to copying, modifying, or redistributing) for either personal or
  # commercial use without express permission from the author is strictly
  # prohibited.
  #
  
  # Install if the package is not yet installed
  if (!(pkg %in% installed.packages()[,1])) {
    install.packages(pkg)
  }
  
  # Load package
  require(pkg, character.only = T)
  
}
