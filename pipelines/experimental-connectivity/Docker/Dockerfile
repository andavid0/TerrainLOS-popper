FROM continuumio/miniconda
 
# Install compilers for Contiki motes
RUN apt-get update
<<<<<<< HEAD
RUN apt-get -y install unzip build-essential binutils-msp430 gcc-msp430 msp430-libc binutils-avr gcc-avr gdb-avr avr-libc avrdude binutils-arm-none-eabi gcc-arm-none-eabi gdb-arm-none-eabi openjdk-7-jdk openjdk-7-jre ant libncurses5-dev doxygen srecord git
=======
RUN apt-get -y install build-essential binutils-msp430 gcc-msp430 msp430-libc binutils-avr gcc-avr gdb-avr avr-libc avrdude binutils-arm-none-eabi gcc-arm-none-eabi gdb-arm-none-eabi openjdk-7-jdk openjdk-7-jre ant libncurses5-dev doxygen srecord git
>>>>>>> 8f39ad222372de5bee0eb62f6392a453db07a344

# Add a default user called user

# Set java environment variables
ENV JAVA_TOOL_OPTIONS -Dfile.encoding=UTF8
ENV JAVA_HOME /usr/lib/jvm/default-java

WORKDIR /root

# Clone contiki
RUN git clone git://github.com/contiki-os/contiki && \
    git -C ./contiki checkout release-2-7 && \
    git -C ./contiki submodule update --recursive --init && \
    git clone git://github.com/samgmansfield/TerrainLOS && \
    cd TerrainLOS && \
    ant jar

#Setup Anaconda environment
COPY environment.yml .
RUN conda install backports backports.functools_lru_cache backports_abc ca-certificates certifi cycler decorator freetype functools32 futures intel-openmp kiwisolver libedit libffi libgfortran libpng matplotlib mkl ncurses networkx numpy openssl pip pyparsing python python-dateutil pytz readline singledispatch six sqlite subprocess32 tk tornado wget wheel zlib

COPY cooja.properties /root/.cooja.user.properties

#RUN conda install -c conda-forge libcxx
#RUN conda install -c statiskit libcxxabi
