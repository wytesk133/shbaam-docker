FROM continuumio/miniconda

apt-get install git

RUN useradd -ms /bin/bash wyte
USER wyte
WORKDIR /home/wyte

git clone https://github.com/wytesk133/shbaam
WORKDIR /home/wyte/shbaam
ADD environment.yml .

RUN conda env create -f environment.yml
CMD source activate your-environment && \
    python tst/tst_pub_dwnl_David_etal_201x_SER.sh && \
    python tst/tst_pub_repr_David_etal_201x_SER.sh
