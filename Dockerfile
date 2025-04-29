# Base image olarak nginx kullanıyoruz
FROM nginx:alpine

# Çalışma dizinini ayarla
WORKDIR /usr/share/nginx/html

# Proje dosyalarını nginx'in varsayılan dizinine kopyala
COPY . .

# Nginx zaten varsayılan olarak 80 portunu dinler
EXPOSE 80

# Nginx başlat
CMD ["nginx", "-g", "daemon off;"]