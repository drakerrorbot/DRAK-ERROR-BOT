FROM Mr.Hansamala/drakerror:fullcontrol

RUN git clone https://github.com/drakerrorbot/drakerrorbot.git
WORKDIR /root/DrakErrorWhatsappBot/
ENV TZ=Asia/Colombo
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "drak.js"]
