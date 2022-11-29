#Menggunakan image node versi 14
FROM node:14

#Menentukan working directory pada direktori /app
WORKDIR /app

#Menyalin seluruh source code ke working directory di container
COPY . .

#Menentukan aplikasi berjalan dalam prudction mode
#dan menggunakan container bernama item-db sebagai database host
ENV NODE_ENV=production DB_HOST=item-db

#Menginstall dependencies untuk production dan kemudian build aplikasi
RUN npm install --production --unsafe-perm && npm run build

#Ekspos port yang akan digunakan aplikasi
EXPOSE 8080

#Menjalankan server
CMD ["npm","start"]
