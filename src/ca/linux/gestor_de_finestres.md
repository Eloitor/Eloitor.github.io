# Com construïr un gestor de finestres?

Un gestor de finestres és un programa que s'encarrega de gestionar les finestres d'X.

## Compilant, tests i utilització

Compilar: `zig build-exe -lc -lX11 main.zig`

**Instal·lar**: `ln -s /full/path/to/main ~/.local/bin/mywindowmanager`

**Executar**:

- **Opció 1:** Fer servir [Xephyr](https://wiki.archlinux.org/index.php/Xephyr).
- **Opció 2:** Obrir un servidor X sense cap gestor de finestres, i executar el nostre gestor en un terminal qualsevol.

Jo he fet servir la segona opció. No cal instal·lar cap programa adicional i es poden veure tots els "prints".


### Obrint una connexió amb X11

### Explorant les finestres obertes

### Gestionant events
