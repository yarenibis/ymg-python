# Python 3.9 bazlı küçük bir image
FROM python:3.9-slim

# Uygulama dosyalarının kopyalanacağı dizin
WORKDIR /app

# Gereksinimlerin yüklenmesi
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Uygulama kodunu kopyala
COPY app.py .

# 5000 portunu dışa aç
EXPOSE 5000

# Container başlatıldığında çalışacak komut
CMD ["python", "app.py"]
