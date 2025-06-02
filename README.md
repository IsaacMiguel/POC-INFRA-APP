# POC-INFRA-APP

Este es un proyecto de prueba de concepto (POC) que demuestra una infraestructura básica de una aplicación Node.js utilizando Docker.

## Requisitos Previos

- Docker
- Docker Compose
- Make (opcional, pero recomendado)
- Node.js (para desarrollo local)

### Verificación e Instalación de Requisitos

#### Docker y Docker Compose

**Windows:**
1. Instalar Docker Desktop para Windows:
   - Descargar desde [Docker Hub](https://hub.docker.com/editions/community/docker-ce-desktop-windows)
   - Seguir el asistente de instalación
   - Docker Compose viene incluido con Docker Desktop

2. Verificar la instalación:
```powershell
docker --version
docker-compose --version
```

**Linux:**
1. Instalar Docker:
```bash
# Ubuntu/Debian
sudo apt update
sudo apt install docker.io

# Fedora
sudo dnf install docker
```

2. Instalar Docker Compose:
```bash
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
```

3. Iniciar Docker y habilitarlo al inicio:
```bash
sudo systemctl start docker
sudo systemctl enable docker
```

4. Verificar las instalaciones:
```bash
docker --version
docker-compose --version
```

#### Make

**Windows:**
1. Instalar Make usando Chocolatey (recomendado):
   ```powershell
   # Instalar Chocolatey si no está instalado
   Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
   
   # Instalar Make
   choco install make
   ```

2. Verificar la instalación:
   ```powershell
   make --version
   ```

**Linux:**
1. Instalar Make:
```bash
# Ubuntu/Debian
sudo apt update
sudo apt install make

# Fedora
sudo dnf install make
```

2. Verificar la instalación:
```bash
make --version
```

#### Node.js

**Windows:**
1. Descargar e instalar desde [Node.js official website](https://nodejs.org/)
2. Verificar la instalación:
```powershell
node --version
npm --version
```

**Linux:**
1. Instalar usando nvm (recomendado):
```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
source ~/.bashrc
nvm install --lts
```

2. Verificar la instalación:
```bash
node --version
npm --version
```

## Estructura del Proyecto

```
.
├── src/                # Código fuente de la aplicación
├── Dockerfile         # Configuración de Docker
├── docker-compose.yml # Configuración de Docker Compose
├── Makefile          # Comandos make para facilitar la operación
├── package.json      # Dependencias y scripts de npm
└── README.md         # Este archivo
```

## Comandos Disponibles

### Usando Make

```bash
# Construir la imagen
make build

# Ejecutar la aplicación en modo desarrollo
make dev

# Ejecutar la aplicación
make run

# Detener la aplicación
make stop

# Limpiar contenedores y recursos
make clean

# Ejecutar pruebas
make test
```

### Usando Docker Compose directamente

```bash
# Construir la imagen
docker-compose build

# Ejecutar la aplicación
docker-compose up

# Detener la aplicación
docker-compose down
```

### Desarrollo Local (sin Docker)

```bash
# Instalar dependencias
npm install

# Ejecutar en modo desarrollo
npm run dev

# Ejecutar pruebas
npm test
```

## Puertos y Configuración

- La aplicación se ejecuta en el puerto 3000
- En modo desarrollo, el código se recarga automáticamente al detectar cambios

## Contribución

1. Fork el repositorio
2. Crea una rama para tu feature (`git checkout -b feature/AmazingFeature`)
3. Commit tus cambios (`git commit -m 'Add some AmazingFeature'`)
4. Push a la rama (`git push origin feature/AmazingFeature`)
5. Abre un Pull Request
