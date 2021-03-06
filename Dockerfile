FROM telnext/telnext_image:v4

RUN apt-get install -y yarn
RUN echo "7.78.1" && npm install sfdx-cli --global

# clone and install raf-dx-plugin
RUN echo "0.5.1" && git clone https://github.com/ImperiumMaximus/raf-dx-plugin.git
RUN cd raf-dx-plugin && yarn install
RUN cd raf-dx-plugin && sfdx plugins:link

RUN npm install -g @salesforce/sfdx-scanner
