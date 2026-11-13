# CLAUDE.md — Webshop AI Masterclass (repo config)

Repo voor Leon's gratis masterclass **"Bouw het brein van je webshop"**, onder **LIO — The AI Operator × 187N** (@lio · @liogpt · @187n). Interactieve les die IN Claude Code draait, in de stijl van de Lio The Ai Operator cursus.

## Kernconcept

De masterclass draait om **het brein van de webshop** als het lange hoofdgerecht: een CLAUDE.md-basis die uitgroeit tot een **LLM-wiki** (Karpathy-stijl: `wiki/entities`, `wiki/concepts`, `wiki/sources`). De **skills** (ads, teksten, mails) worden **niet live gebouwd** — ze worden kort getoond en cadeau gegeven. De **brein-kaart** (graphify) + Obsidian zijn Leon's **scherm-demo** (deelnemers draaien die niet zelf — dat vermijdt de Python/credits-drempel).

## Wat hier staat

| Map / bestand | Wat het is |
|---|---|
| `install.sh` / `install.ps1` | One-command installers. Klonen de repo en kopiëren `skills/*.md` → `~/.claude/commands/webshop/` |
| `skills/` | Wordt geïnstalleerd. `start.md` + `masterclass.md` (de geleide les) + **16 ecom-skills** |
| `skills/masterclass.md` | **Source of truth voor de live les.** Scaffold (embedded) → ingest → Leon's kaart-demo → cadeaus |
| `assets/187n-logo.png` | Het gouden 187N-merk (uit `187n/brand-guide/assets/logo-mark-web.png`). ⚠️ blijft goud, nooit recolor |
| `webshop-masterclass.html` | Cover-pagina **LIO-versie** (donker) — voor op scherm vóór de sessie |
| `webshop-masterclass-187n.html` | Cover-pagina **187N-versie** (cream editorial + coral) |
| `CADEAU.md` / `cadeau.html` | Weggever voor na de sessie: wat zit erin, installatie, CTA (Agency Scan + cursus) |
| `templates/webshop-brein.md` | Voorbeeld van een sterke CLAUDE.md-basis |
| `HOST-RUNSHEET.md` | Leon's draaiboek (timing, pre-flight, graphify/Obsidian-demo, vangnetten) |
| `MASTERCLASS-PLAN.md` | Het plan / concept |

## De 16 skills (namespace `/webshop:`)

- **Klantenservice:** `klantenhulp` · `review-reactie` · `klacht-sussen` · `vraagbaak`
- **Marketing & Ads:** `scroll-stop` · `social-set` · `actie-kalender` · `static-ad` (⚡ Higgsfield `gpt_image_2`)
- **Winkel & producten:** `productverhaal` · `vindbaar` · `winkelpagina` · `bundel-bouwer` · `prijs-slim`
- **Retentie:** `mandje-redden` · `welkom-reeks` · `mail-magneet`

Alle skills lezen het brein (`CLAUDE.md` + `wiki/`). Alleen `static-ad` heeft een MCP (Higgsfield) nodig; de rest is 100% offline.

## Belangrijk vóór de live-sessie

1. **Push naar GitHub** als `novusordos666/webshop-ai-masterclass` (of pas `REPO=` in beide installers aan). Installers curl-clonen van raw.githubusercontent.
2. **Test de deelnemer-flow** (`/webshop:masterclass`) op een schone map.
3. **Zet Leon's demo klaar:** Python/`uv` + internet voor `/graphify`, en het eigen second-brain open in Obsidian. Deelnemers hebben dit NIET nodig.
4. **Stuur de pre-flight mail** (in `HOST-RUNSHEET.md`).

## Regels voor Claude (bij het bewerken van deze repo)

- Alle deelnemer-tekst is **Nederlands**, casual, je/jij — nooit u. Doelgroep = absolute beginners/oudere mensen.
- Higgsfield-model-id = `gpt_image_2` (verzin geen `gpt-image-2-pro`).
- 187N-merk blijft goud; coral `#FF6301` is het enige losse accent.
