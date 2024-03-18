# Installing Rstudio on a new system

sudo apt update -qq && sudo apt upgrade

sudo add-apt-repository universe
sudo apt-get install gdebi-core -y

sudo apt install libssl-dev libcurl4-openssl-dev unixodbc-dev libxml2-dev libmariadb-dev libfontconfig1-dev libharfbuzz-dev libfribidi-dev libfreetype6-dev libpng-dev libtiff5-dev libjpeg-dev liblapack-dev libblas-dev software-properties-common ca-certificates apt-transport-https gnupg dirmngr -y

# Adding a repo, verifying

wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | sudo tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc

sudo add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"

sudo apt install --no-install-recommends r-base r-base-dev -y

https://posit.co/download/rstudio-desktop/

https://download1.rstudio.org/electron/jammy/amd64/rstudio-2023.12.1-402-amd64.deb

https://download1.rstudio.org/electron/'$(lsb_release -cs)'/amd64/rstudio-2023.12.1-402-amd64.deb


wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-x.x.x-amd64.deb

# Installing package saved to home folder. This should be the latest version of Rstudio

sudo gdebi rstudio-x.x.x-amd64.deb

# Required for tidyverse to install

sudo R -e 'install.packages("xml2", dependencies = T, INSTALL_opts = c("--no-lock"))'

