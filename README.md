# Entrega del curso: "Introducción a Big Data con Apache Spark"
Este repositorio contiene la entrega final del curso optativo "Introducción a Big Data con Apache Spark" que se ofertó en la ETSISI de la UPM en julio de 2023.
</br></br>
La entrega final del curso consistía en realizar consultas analíticas de un dataset utilizando el módulo `pyspark.sql`.
</br></br>
En el curso se utilizaba una máquina virtual que contenía todas las librerías necesarias, este repositorio ha sido adaptado para que se pueda ejecutar en un entorno de Anaconda o en un contenedor de Docker.

## Como ejecutar el proyecto

### Usando Anaconda
Para ejecutar el proyecto usando Anaconda debemos de realizar los siguientes pasos:

Primero debemos abrir una terminal y ejecutar el siguiente comando, sustituyendo
\<nombre-del-entorno> por un nombre personalizado
```bash
conda create --name <nombre-del-entorno> -y --file requirements.txt
```
A continuación debemos activar el entorno. Si se utiliza Windows debemos usar el comando
```bash
conda activate <nombre-del-entorno>
```
Si se usa macOS o Linux debemos usar el comando
```bash
source activate <nombre-del-entorno>
```

### Usando Docker
Primero debemos de crear la imagen con el siguiente comando, sustituyendo
\<nombre-del-entorno> por un nombre personalizado
```bash
docker build -t <nombre-de-la-imagen> .
```
Una vez creada la imagen debemos de crear un contenedor con el siguiente comando, sustituyendo \<nombre-del-contenedor> y \<nombre-de-la-imagen> por valores personalizados
```bash
docker run -dp 8888:8888 --name <nombre-del-contenedor> <nombre-de-la-imagen>
```
Finalmente, usando Docker Desktop inspeccionamos la terminal del contenedor creado y obtendremos una URL del siguiente estilo:
```url
http://127.0.0.1:8888/tree?token=<token>
```
si la pulsamos podremos acceder a la interfaz web de Jupyter

## Autores
Juan Antonio Celaya Rodríguez