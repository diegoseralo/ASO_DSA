```
---------------- ADMINISTRACIÓN DE SISTEMAS INFORMÁTICOS Y REDES ----------------
---------------------------------------------------------------------------------

Módulo:                     ADMINISTRACIÓN DE SISTEMAS OPERATIVOS
Profesor:                   Víctor J. González
Unidad de Trabajo:          UT05
Práctica:                   PR0503. GPOs
Resultados de aprendizaje:  RA1
```


# PR0503:  Aplicación de GPOs y Seguridad

## Objetivo de la Práctica

El objetivo es familiarizarte con la creación, vinculación, y el procesamiento de políticas de grupo, demostrando la herencia y la capacidad de filtrar la configuración.

Deberás:
- Crear y editar un Objeto de Política de Grupo (GPO).
- Aplicar políticas en el nivel Usuario y en el nivel Equipo.
- Entender la herencia y forzar la actualización de políticas (`gpupdate /force`).

## Requisitos Previos

Deberás tener el siguiente entorno que configuraste en la primera práctica de esta unidad:

- Dominio `iessanandres.local` operativo.
- Estructura de UOs (Alumnado, Profesorado, Ciclos) creada.
- Al menos un equipo cliente (Windows 10/11) unido al dominio.
- Los usuarios (ej. `alu_dam_1`, `prof_info_1`) deben existir.


## PARTE I: Configuración de políticas de usuario

El objetivo en esta parte es estandarizar la experiencia de los alumnos y aplicar restricciones de seguridad. Estas políticas deben aplicarse **solo** a los alumnos.

### Tarea 1.1: Creación del GPO "Restricciones Alumnos"

1.  Crea un nuevo GPO llamado **`GPO_ALU_RESTRICCIONES`**.
2.  **Vincula** este GPO a la UO raíz **`Alumnado`**.
3.  **Configura las siguientes restricciones (Configuración de Usuario -> Políticas):**
    - **Bloqueo del Panel de Control:** navega a *Plantillas administrativas > Panel de control*. Habilita la política **"Prohibir el acceso al Panel de control y a la configuración del equipo"**.
    - **Establecer Fondo de Escritorio:** navega a *Plantillas administrativas > Escritorio > Escritorio*. Habilita la política **"Fondo de escritorio"** y establece una ruta de red válida (ej. `\\servidor_dc\recursos\fondo.jpg`).
    - **Ocultar unidades de disco:** navega a *Plantillas administrativas > Componentes de Windows > Explorador de archivos*. Habilita la política **"Ocultar estas unidades específicas en Mi PC"** y selecciona la opción "Restringir las unidades A, B, C y D".

---

Vas a Administrador del Servidor -> Herramientas -> Administración de directivas de grupo. Donde vamos a crear la GPO :

![Creación GPO](imagenes/image.png)
![Nombre GPO](imagenes/image1.png)

Haces clic derecho en el GPO creado y lo editas para hacer los siguiente:
Configuración de usuario -> Directivas -> Plantillas Administrativas -> Panel de control -> Habilitas la politica de `Prohibir el acceso al Panel de control y a la configuracion del equipo` :

![Habilitar politica](imagenes/image2.png)

Después, desde panel de control -> componentes de windows -> explorador de archivos. Donde habilitas la politica `Ocultar estas unidades especificas en mi PC`:

![habilitar politica](imagenes/image3.png)

---

### Tarea 1.2: Verificación de usuario

1.  Inicia sesión en el equipo cliente con un usuario alumno (ej. `alu_dam_1`).
2.  Ejecuta `gpupdate /force`.
3.  Verifica que: El fondo de pantalla ha cambiado y no se puede abrir el Panel de Control.

---

Entras en el usuario alu_dam_1 en el windows cliente y abres `CMD` y ejecutas:

```shell
gpupdate /force
```

![cmd](imagenes/image4.png)

E intentas abrir el panel de control :

![panel control](imagenes/image5.png)

---

## PARTE II: Políticas de equipo y acceso a recursos

El objetivo es aplicar configuraciones de seguridad a nivel de máquina y mapear un recurso compartido a un departamento específico.

### Tarea 2.1: Política de seguridad (UO Equipos)

1.  Crea un nuevo GPO llamado **`GPO_SEG_BASE`**.
2.  **Vincula** este GPO a la UO **`_Equipos\Aulas_Informatica`** (donde deben estar los equipos del aula).
3.  **Configura la siguiente política (Configuración de Equipo -> Políticas -> Configuración de Windows):**
    - Navega a *Configuración de seguridad > Directivas de cuentas > Directiva de contraseña*.
    - Establece **"Longitud mínima de la contraseña"** en **8 caracteres**.
4.  **Configura otra política de seguridad:**
    * Navega a *Configuración de seguridad > Directivas locales > Opciones de seguridad*.
    * Establece **"Cuentas: Cambiar nombre de la cuenta de administrador"** a un nombre no estándar (ej. **`AdministradorLocal01`**).

---

Administrador del Servidor -> Herramientas -> Administración de Directivas de Grupo. Y creas el GPO vinculado en _Equipos -> Aulas_Informatica: 

![Crear GPO](imagenes/image6.png)

Editas el GPo y vas a Configuración de Equipo -> Directivas -> Configuración de Windows -> Configuración de Seguridad -> Directivas de cuenta -> Directiva de Contraseñas. Donde establecemos la `longitud minima de la contraseña` en *8 caracteres* :

![directiva contraseñas](imagenes/image7.png)

Ahora, vamos a cambiar otra directiva en Configuración de Equipo -> Directivas -> Configuración de Windows -> Configuración de Seguridad -> Directivas locales -> Opciones de Seguridad. Y vamos a establecer la directiva `Cuentas: cambiar el nombre de la cuenta administrador` como *AdministradorLocal01*.

---

### Tarea 2.2: Mapeo de unidad específica (UO Administración)

Esta política debe mapear una unidad de red Z: para el *alumnado de la familia de Administración*.

1.  Crea un GPO llamado **`GPO_ADM_UNIDAD_Z`**.
2.  **Vincula** este GPO a la UO **`Alumnado\Administracion`**.
3.  **Configura la siguiente política (Configuración de Usuario -> Preferencias -> Configuración de Windows -> Asignaciones de Unidad):**
    - **Acción:** crea una nueva Asignación de Unidad.
    - **Ubicación:** `\\servidor_dc\compartido\administracion` (Asume que esta ruta existe).
    - **Etiqueta:** `Recursos_ADM`
    - **Letra de Unidad:** Z:

---

Administrador del Servidor -> Herramientas -> Administración de Directivas de Grupo. Y creas el GPO vinculado en Alumnado -> Administración :

![Crear GPO](imagenes/image8.png)

Editas el GPo y vas a Configuración de Usuario -> Preferencias -> Configuración de Windows -> Asignaciones de Unidad.
Vamos a crear una nueva asignacion de unidad en `\\Diego\compartido\administracion\` (Suponiendo que existe y esta compartida correctamente):

![Crear asignacion](imagenes/image9.png)

---

### Tarea 2.3: Verificación de Recurso

1.  Inicia sesión con un alumno de informática (ej. `alu_dam_1`). **Verifica que NO tiene la unidad Z:.**
2.  Inicia sesión con un alumno de administración (ej. `alu_afi_1`). **Verifica que SÍ aparece la unidad Z:.**

---

![Verificación](imagenes/image10.png)

![Verificacion](imagenes/image11.png)

---

[VOLVER A INICIO](../../../index.md)