FROM danielguerra/ubuntu-xrdp:20.04

ENV TZ=Europe/Saratov
ENV DEBIAN_FRONTEND=noninteractive

RUN apt -y update 
# RUN apt -y upgrade
RUN apt install -y sudo xterm lsb csh rpm
RUN apt install -y libglib2.0-dev
RUN apt install -y xfonts-base xfonts-100dpi xfonts-100dpi-transcoded xfonts-75dpi xfonts-75dpi-transcoded xfonts-cyrillic
RUN apt install -y libmotif-common mesa-utils libxm4 libxt6 libxext6 libxi6 libx11-6 libsm6 libice6  libxxf86vm1 libpng16-16 libtiff5 gcc g++ libstdc++6 libstdc++5
RUN apt clean

# RUN chmod +x INSTALL
# RUN ./INSTALL -silent

# COPY /opt/ansys/_SolidSQUAD_/ANSYS.2022.R1.PRODUCT.LINX64-SSQ/ansys_inc /usr

# ENV ANSYSLIC_DIR=/usr/ansys_inc/shared_files/licensing

# CMD [ "/usr/ansys_inc/v221/Framework/bin/Linux64/runwb2" ]

#https://www.cfd-online.com/Forums/ansys/199190-ansys-18-2-ubuntu-16-04-installation-guide.html




