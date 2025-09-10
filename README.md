# niron_spritze/syringe Script

## 📌 Beschreibung (Deutsch)

Dieses Script fügt ein neues Item **"Spritze"** in deinen FiveM ESX Server ein.  
Wenn ein Spieler die Spritze aus dem Inventar benutzt, injiziert er den nächsten Spieler in Reichweite.  

### 🎯 Features
- Neues Item **Spritze** im ESX Inventar
- Wenn benutzt:
  - Zielspieler bekommt **Betrunken-Effekte**
  - **Kamera wackelt**, Farben verändern sich
  - Spieler kann keine Waffen benutzen
  - Gesundheit wird reduziert (aber nicht getötet)
  - Animation läuft beim Zielspieler
  - Wirkung hält **60 Sekunden**, dann normalisiert sich alles wieder

---

### 🔧 Installation (Deutsch)

1. Kopiere den Ordner `niron_spritze` in dein `resources` Verzeichnis.
2. Füge in deiner `server.cfg` hinzu:
   ```cfg
   ensure niron_spritze
   ```
3. Importiere die SQL-Datei:
   ```sql
   spritze_item.sql
   ```
   Dadurch wird das Item **spritze** in die Datenbank eingefügt.
4. Starte deinen Server neu.

---

### 🕹️ Nutzung (Deutsch)

- Spieler muss eine **Spritze** im Inventar haben.  
- Wenn er das Item im Inventar benutzt, wird der nächste Spieler in **3 Metern Reichweite** injiziert.  
- Zielspieler bekommt Effekte und kann keine Waffen nutzen.  

---

## 📌 Description (English)

This script adds a new item **"Syringe"** to your FiveM ESX server.  
When a player uses the syringe from the inventory, it injects the nearest player within range.  

### 🎯 Features
- New inventory item **Syringe**
- When used:
  - Target player receives **drunk effects**
  - **Camera shakes**, color filter enabled
  - Player cannot use weapons
  - Health reduced (but not killed)
  - Animation plays on target
  - Effect lasts **60 seconds**, then resets

---

### 🔧 Installation (English)

1. Copy the folder `niron_spritze` into your `resources` directory.
2. Add to your `server.cfg`:
   ```cfg
   ensure niron_spritze
   ```
3. Import the SQL file:
   ```sql
   spritze_item.sql
   ```
   This adds the **syringe** item into the database.
4. Restart your server.

---

### 🕹️ Usage (English)

- The player must have a **syringe** in the inventory.  
- When the item is used, the nearest player within **3 meters** will be injected.  
- The target receives effects and cannot use weapons.  
