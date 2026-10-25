# AION 2 Patch Notes & Live Event Hub

[![GitHub Pages](https://img.shields.io/badge/GitHub%20Pages-Live-brightgreen?logo=github)](https://aionpatch.github.io/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Languages](https://img.shields.io/badge/Languages-EN%20%7C%20IT-blue)](#key-features)
[![Tailwind CSS](https://img.shields.io/badge/Tailwind_CSS-38B2AC?logo=tailwind-css&logoColor=white)](https://tailwindcss.com/)
[![Chart.js](https://img.shields.io/badge/Chart.js-FF6384?logo=chartdotjs&logoColor=white)](https://www.chartjs.org/)
[![Schema.org](https://img.shields.io/badge/SEO-Schema.org%20JSON--LD-orange)](https://schema.org)

A modern, fast, zero-dependency static web portal for tracking official **AION 2** updates, maintenance schedules, raid requirements, and event calculators in real-time.

---

## Table of Contents

- [Project Overview](#project-overview)
- [Live Website](#live-website)
- [Key Features](#key-features)
- [Architecture & Tech Stack](#architecture-and-tech-stack)
- [Repository Structure](#repository-structure)
- [Local Development & Preview](#local-development-and-preview)
- [Content Workflow: Publishing Updates](#content-workflow-publishing-updates)
- [SEO & Structured Data](#seo-and-structured-data)
- [Contributing](#contributing)
- [Disclaimer & License](#disclaimer-and-license)

---

<a id="project-overview"></a>
## Project Overview

**aionpatch.github.io** serves as a centralized community hub providing clear, structured breakdowns of official AION 2 announcements, balance updates, banwaves, and major raid releases (such as *Ludra Awakens*).

The site is built entirely as a static client-side web application hosted on GitHub Pages, ensuring high availability, zero server maintenance overhead, and instant load times.

---

<a id="live-website"></a>
## Live Website

The production build is deployed continuously via GitHub Pages:

🔗 **[https://aionpatch.github.io](https://aionpatch.github.io)**

---

<a id="key-features"></a>
## Key Features

- **Live Update & Event Tracker**: Real-time raid gear score thresholds (Normal / Hard mode), daily login check-in tracks, and regional race milestones.
- **Interactive Calculators**: Client-side interactive utilities (e.g., event coin calculators, milestone reward checkoffs, and daily reset timers).
- **Chronological Patch Archive**: Fully cataloged historical record of past updates, balance changes, and security announcements (`archive.html`).
- **Bilingual Support (EN / IT)**: Complete localized interface supporting English and Italian, with seamless language switching and URL parameter persistence (`?lang=en` / `?lang=it`).
- **Responsive Dark-Fantasy Aesthetic**: High-contrast, dark-mode visual interface optimized for desktop, tablet, and mobile displays using game-inspired typography (Cinzel, Rajdhani, Inter).
- **Zero-Build Architecture**: Requires no build steps, bundlers, or heavy node dependencies; browser-ready out of the box.

---

<a id="architecture-and-tech-stack"></a>
## Architecture & Tech Stack

| Layer | Technology | Purpose |
| :--- | :--- | :--- |
| **Markup & Semantics** | HTML5 | Accessible, semantic document structure |
| **Styling** | [Tailwind CSS CDN](https://tailwindcss.com/) | Responsive layout, utility styling, and custom dark-theme tokens |
| **Logic & Interactivity** | Vanilla JavaScript (ES6+) | Event calculations, DOM updates, language switching, countdowns |
| **Data Visualization** | [Chart.js](https://www.chartjs.org/) | Responsive charts for statistics and milestones |
| **Iconography** | [Lucide Icons](https://lucide.dev/) | Consistent, lightweight vector icons |
| **Typography** | Google Fonts | Cinzel, Rajdhani, and Inter |
| **Hosting & CDN** | [GitHub Pages](https://pages.github.com/) | Static asset hosting with HTTPS and global CDN delivery |

---

<a id="repository-structure"></a>
## Repository Structure

```text
aionpatch.github.io/
├── .nojekyll                 # Bypasses Jekyll processing on GitHub Pages
├── index.html                # Main landing page: active patch notes, live trackers & tools
├── archive.html              # Chronological archive with search and category filters
├── patches/                  # Standalone snapshots for historical updates
│   ├── 2026-10-14-halloween-update.html
│   └── 2026-10-21-security-banwave.html
├── robots.txt                # Search engine crawler instructions
├── sitemap.xml               # Complete XML sitemap for SEO indexation
├── sitemap.xsl               # Human-readable XSL styling stylesheet for sitemap.xml
└── README.md                 # Project documentation
```

---

<a id="local-development-and-preview"></a>
## Local Development & Preview

Because this project uses vanilla web standards with no bundling or compilation pipeline, you can preview the website locally using any standard HTTP server.

### Option 1: Python (Recommended)

```bash
# From the repository root directory
python -m http.server 8000
```
Open [http://localhost:8000](http://localhost:8000) in your browser.

### Option 2: Node.js / npx

```bash
npx serve .
```

### Option 3: VS Code Live Server
Right-click on `index.html` inside Visual Studio Code and select **Open with Live Server**.

---

<a id="content-workflow-publishing-updates"></a>
## Content Workflow: Publishing Updates

When a new official patch or major game event is announced, follow these steps to keep the hub current:

1. **Archive the Outgoing Patch**:
   - Create a static snapshot in `patches/YYYY-MM-DD-<slug>.html` preserving the previous content and calculators.
2. **Update `index.html`**:
   - Update the evergreen header, meta tags, and Open Graph information.
   - Refresh the main raid/event details, countdown dates, and interactive calculators.
   - Update the `@graph` Schema.org JSON-LD scripts (`Event`, `NewsArticle`, `FAQPage`).
3. **Register in `archive.html`**:
   - Add a new card entry linking to the archived HTML file under `patches/`.
4. **Update `sitemap.xml`**:
   - Update the `<lastmod>` timestamps for `index.html` and `archive.html`.
   - Add the new URL entry for the newly archived patch.
5. **Commit and Deploy**:
   ```bash
   git add .
   git commit -m "feat(patch): publish <Patch-Title> update"
   git push origin main
   ```
   GitHub Pages will automatically deploy the changes within 1–2 minutes.

---

<a id="seo-and-structured-data"></a>
## SEO & Structured Data

The repository implements strict search engine optimization standards to ensure reliable indexing across search engines and rich preview cards on Discord, Twitter/X, and social networks:

- **JSON-LD Schema Graph**:
  - `WebSite`: Canonical identity and language alternates.
  - `Event`: Structured event dates, status, and official organizer attribution.
  - `NewsArticle`: Publication and modification timestamps for fresh indexing.
  - `FAQPage`: Rich snippet answers for common player queries.
  - `CollectionPage`: Searchable index schema on `archive.html`.
- **Hreflang & Canonical Links**: Full `en` and `it` alternates declared alongside `x-default`.
- **Sitemap**: Styled XML sitemap conforming to sitemaps.org schema with an associated XSL stylesheet (`sitemap.xsl`).

---

<a id="contributing"></a>
## Contributing

Contributions from the community are welcome:

1. Fork the repository.
2. Create your feature branch (`git checkout -b feature/improvement-name`).
3. Verify your changes locally across desktop and mobile viewports.
4. Commit your changes (`git commit -m "feat: add missing dungeon requirements"`).
5. Push to the branch (`git push origin feature/improvement-name`).
6. Open a Pull Request detailing the changes.

Please ensure all added markup remains semantic, accessible, and compliant with the existing zero-dependency design philosophy.

---

<a id="disclaimer-and-license"></a>
## Disclaimer & License

### Disclaimer
This is an independent community-driven project created for informational and educational purposes. **AION 2** and all associated trademarks, logos, and game assets are the intellectual property of **NCSoft**. This project is not affiliated with, endorsed by, or sponsored by NCSoft.

### License
The source code of this website is made available under the [MIT License](LICENSE).
