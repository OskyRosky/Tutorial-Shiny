# Tutorial Shiny

**Desarrollo de Apps Interactivas con R Shiny**

Este repositorio contiene el material completo del curso Shiny, orientado a enseñar desde los fundamentos hasta la construcción, conexión y despliegue de aplicaciones interactivas en R.
El curso está diseñado para estudiantes, analistas y científicos de datos que desean transformar análisis tradicionales en herramientas dinámicas y visuales que faciliten la toma de decisiones.

La estructura presentada aquí corresponde a los contenidos formales impartidos durante el curso.

<table>
  <tr>
    <td><img src="/ima/Shinylogo.png" alt="LogoShiny" style="width: 150px;"/></td>
    <td><img src="/ima/rshiny.png" alt="LogoShiny2" style="width: 150px;"/></td>
  </tr>
</table>

---

## 🧭 1. Introducción al Shiny

En esta primera sección se abordan los conceptos esenciales:

- ¿Qué es R Shiny y para qué sirve?  
- ¿Por qué transforma la forma de presentar y compartir análisis?  
- Modalidades de Shiny:  
  - Shiny clásico  
  - Shiny Dashboard  
  - Aplicaciones locales, en red o en la nube  
- Cómo compartir proyectos con otros usuarios o equipos.

---

## 🗂️ 2. La estructura de un proyecto en R

Se presenta cómo debe organizarse un proyecto profesional:

- ¿Es correcto utilizar un solo script?  
- ¿Qué ventajas ofrece un proyecto estructurado con RStudio?  
- Organización de carpetas y archivos.  
- Flujo de trabajo recomendado para aplicaciones Shiny reproducibles.

---

## ⚙️ 3. Parametrizaciones generales

Todo proyecto Shiny necesita configuraciones iniciales.  
Este módulo explica:

- Opciones generales (`options()`)  
- Manejo del directorio de trabajo  
- Carga y control de librerías  
- Importación de datos mediante scripts auxiliares  

---

## 🧩 4. La estructura de una App Shiny

Aquí se estudian los componentes centrales:

- Header  
- Sidebar  
- Body  
- UI (interfaz de usuario)  
- Server (lógica reactiva)

Cada uno de estos elementos conforma la arquitectura base de una app Shiny bien diseñada.

---

## 🔗 5. Conexión entre Body y Server: la clave del Shiny

Este es el corazón del curso.

En esta sección se explica detalladamente:

- Cómo se comunican el body y el server  
- Flujo: del UI hacia el servidor y viceversa  
- Binding reactivo entre entradas y salidas  
- Otras formas de conectar componentes  

---

## 🧱 6. El Body y sus funcionalidades

Se profundiza en la construcción del cuerpo visual de la aplicación:

- ¿Qué es el body dentro de Shiny?  
- Títulos, subtítulos y elementos estructurales  
- Espacios y organización visual  
- Widgets principales:  
  - Selectores  
  - Sliders  
  - Inputs numéricos y de texto  
  - Tableros, íconos, menús  
- Buenas prácticas para interfaz de usuario  

---

## 🖥️ 7. El Server y sus funcionalidades

En este módulo se analiza la lógica reactiva del servidor:

- ¿Qué es el server?  
- Cómo se procesan inputs del usuario  
- Renderización de salidas:  
  - Tablas  
  - Cuadros  
  - Gráficos  
  - Objetos HTML  
- Estructura de `render*()` y `output$`  

---

## 🔄 8. Reactive, funciones y expresiones

Aquí se explica la parte más sofisticada del Shiny:

- Dualidad UI ↔ Server  
- ¿Qué es un objeto `reactive`?  
- Cómo se cachean valores  
- Uso correcto de:  
  - `reactive()`  
  - `observe()`  
  - `observeEvent()`  
  - `reactiveValues()`  
- Cómo encapsular lógica en funciones reutilizables  

---

## ☁️ 9. Compartir la App

Finalmente, se estudian las opciones para desplegar:

- Publicación en **shinyapps.io**  
- Uso de **Shiny Server** en servidores institucionales  
- Buenas prácticas de despliegue, mantenimiento y seguridad  

---

## 📎 Referencias

- https://shiny.rstudio.com/tutorial/  
- https://mastering-shiny.org/  
- Material complementario disponible en este repositorio  
- Documentos del curso:  
  - Estructura del curso en Shiny  
  - Curso de Shiny.pdf  
  - Tema 1 — Introducción al Shiny  
  - Tema 2 — Proyectos en R  
  - Tema 3 — Parametrizaciones  
  - Tema 4 — Estructura Shiny Dashboard  
  - Tema 5 — Body-Server  

---

## 🏁 Objetivo general del repositorio

Este repositorio busca servir como material de referencia para cualquier persona que quiera:

- Desarrollar aplicaciones profesionales en Shiny  
- Entender la arquitectura interna de una app  
- Prepararse para proyectos institucionales o empresariales  
- Integrar análisis estadísticos con visualizaciones interactivas  





⸻

![ChatGPT](https://img.shields.io/badge/chatGPT-74aa9c?style=for-the-badge&logo=openai&logoColor=white)
![R](https://img.shields.io/badge/r-%23276DC3.svg?style=for-the-badge&logo=r&logoColor=white)
![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54)
![PyTorch](https://img.shields.io/badge/PyTorch-%23EE4C2C.svg?style=for-the-badge&logo=PyTorch&logoColor=white)
![Apache](https://img.shields.io/badge/apache-%23D42029.svg?style=for-the-badge&logo=apache&logoColor=white)
