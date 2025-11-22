FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# غيّر "main:app" إلى نقطة الدخول الفعلية لتطبيقك (مثلاً app:app أو server:app)
CMD ["gunicorn", "-b", "0.0.0.0:8080", "main:app"]