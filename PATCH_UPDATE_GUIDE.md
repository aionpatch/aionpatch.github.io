# Guida Aggiornamento Patch AION 2 & Workflow SEO

Questa guida documenta la struttura e il procedimento rapido per aggiornare il sito quando esce una nuova patch di AION 2, garantendo:
1. **Zero perdita di posizionamento SEO** (le keyword evergreen della home page rimangono stabili).
2. **Conservazione dello storico** (ogni vecchia patch ha il suo URL permanente e indicizzato).
3. **Indicizzazione istantanea su Google**.

---

## 🏗️ Architettura del Sito

- **`index.html` (La Vetrina Evergreen + Ultima Patch Attiva)**:
  - URL fisso: `https://aionpatch.github.io/`
  - Canonical: `https://aionpatch.github.io/`
  - Contiene le keyword permanenti ("*AION 2 Patch Notes & Latest Updates Tracker*", "*Class Balances*", "*Maintenance Schedule*").
  - È divisa in blocchi modulari ben delimitati da commenti HTML:
    - **BLOCCO 1**: Navbar fissa con selettore patch e lingua.
    - **BLOCCO 2**: Hero con badge patch corrente, data e 4 KPI salienti.
    - **BLOCCO 3**: Approfondimento tecnico della patch (grafici, fix classi, evento, QoL, skin).
    - **BLOCCO 4**: Sezione archivio storico con card e collegamenti a tutte le patch passate.
    - **BLOCCO 5**: FAQ evergreen (domande frequenti sul ciclo di patch di Aion 2).
    - **BLOCCO 6**: Footer.

- **`/patches/YYYY-MM-DD-nome-patch.html` (Pagine Singole di Storico)**:
  - Es: `https://aionpatch.github.io/patches/2026-10-14-halloween-update.html`
  - Canonical: punta a sé stessa (`.../patches/2026-10-14-halloween-update.html`).
  - Banner in cima: avvisa il visitatore che si tratta di una patch archiviata con un link che rimanda all'ultima patch attiva sulla home (`/`).
  - Mantiene tutti i grafici, calcolatori e dettagli originali per sempre.

- **`archive.html` (Hub Cronologico Completo)**:
  - URL: `https://aionpatch.github.io/archive.html`
  - Catalogo navigabile con filtri (Eventi, Class Balance, Shop, Sistema) che linka ogni patch archiviata.

- **`sitemap.xml`**:
  - Mappa XML con `<lastmod>`, frequenza di aggiornamento e link hreflang (EN/IT).

---

## ⚡ Come Aggiornare il Sito Quando Esce una Nuova Patch

Quando esce una nuova patch, ti basta venire qui e dire ad esempio:
> *"È uscita la nuova patch del 28 Ottobre 2026 [link alle note ufficiali]. Aggiorna il sito con le novità!"*

L'agente (o tu manualmente) seguirà questi 4 passaggi standard:

### 1. Archivia la patch attuale
Crea un nuovo file in `patches/` prendendo come base la patch uscente:
- Esempio: `patches/2026-10-14-halloween-update.html`
- Imposta il canonical sul nuovo URL.
- Assicurati che abbia il banner di avviso *"Stai visualizzando una versione archiviata"*.

### 2. Sostituisci i blocchi dinamici su `index.html`
- Nel **BLOCCO 2 (Hero & KPI)**:
  - Aggiorna il titolo della patch, la data e i 4 riquadri KPI con le novità principali.
- Nel **BLOCCO 3 (Contenuto Dettagliato)**:
  - Sostituisci le sezioni con i nuovi grafici, modifiche di classe, nuovo evento e fix.
- Nel **BLOCCO 4 (Storico Patch)**:
  - Aggiungi la card della patch precedente nella griglia delle patch archiviate.
- Negli **Structured Data JSON-LD**:
  - Aggiorna `NewsArticle` (`headline`, `datePublished`, `dateModified`).

### 3. Aggiorna `archive.html` e `sitemap.xml`
- Su `archive.html`: Aggiungi la nuova patch in cima alla timeline con i relativi tag.
- Su `sitemap.xml`:
  - Aggiorna `<lastmod>` per `https://aionpatch.github.io/`.
  - Aggiungi la nuova entry per `/patches/YYYY-MM-DD-slug.html`.

---

## 🚀 Come Velocizzare l'Indicizzazione su Google

Per far indicizzare le nuove pagine entro poche ore o minuti da Google:

1. **Google Search Console**:
   - Vai su [Google Search Console](https://search.google.com/search-console).
   - Inserisci nella barra in alto l'URL della home (`https://aionpatch.github.io/`) e della nuova patch archiviata.
   - Clicca su **"Richiedi indicizzazione" (Request Indexing)**.
   - Questo forza il bot di Google ad accodare la scansione immediata della pagina senza attendere il consueto passaggio settimanale.

2. **Invia la Sitemap**:
   - Sempre in Google Search Console > sezione **Sitemap**, inserisci `sitemap.xml` e premi **Invia**.
   - Avendo il campo `<lastmod>` aggiornato con la data odierna, Google noterà subito il cambiamento di contenuto.

3. **Internal Linking Juice**:
   - Poiché la home page (`index.html`) linka direttamente le pagine in `patches/` e `archive.html`, il crawler di Google seguirà automaticamente tutti i link interni, trasferendo autorità e indicizzando l'intero archivio.
