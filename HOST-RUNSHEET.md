# 🎤 Draaiboek — Masterclass "Bouw het brein van je webshop"

**LIO — The AI Operator × 187N** · voor Leon.

De deelnemers worden door Claude geleid via `/webshop:masterclass` — zij bouwen live hún brein (scaffold + ingest, zonder installs). **Jij presenteert eroverheen** en doet twee dingen op jouw scherm die zij niet zelf draaien: de **brein-kaart** (graphify) en een paar **skill-outputs**.

---

## ✅ VÓÓR de sessie

1. **Push deze repo naar GitHub** als `novusordos666/webshop-ai-masterclass` (publiek). Andere naam? Pas `REPO=` aan in `install.sh` én `install.ps1`.
2. **Test de deelnemer-flow** zelf: `claude` → `/webshop:masterclass`. Loop 'm door als beginner. Check dat de map `webshop-brein/` + `wiki/`-pagina's echt worden aangemaakt.
3. **Zet JOUW demo klaar** (dit draai je live op je scherm, deelnemers niet):
   - **graphify werkt bij jou**: Python/`uv` geïnstalleerd + internet. Test `/graphify wiki` op je eigen `refs/leon-second-brain/` (of een demo-brein) zodat `graphify-out/graph.html` opent.
   - **Obsidian klaar**: je second-brain open in Obsidian met de graph-view, om te laten zien "zo ziet het eruit als je 't laat groeien".
   - Eventueel 1-2 skill-demos voorbereid (`/webshop:klantenhulp`, `/webshop:static-ad`).
4. **Stuur de pre-flight mail** (hieronder) een paar uur van tevoren.
5. **Moderator** in de chat voor setup-hulp (of pauzeer bij BLOK 1 tot iedereen groen is).

> ℹ️ **Deelnemers hebben géén Python/Obsidian nodig.** Zij bouwen alleen het brein (dat draait 100% in Claude Code). De graphify-kaart en Obsidian zijn jóuw scherm-demo. Dat houdt het beginner-proof.

---

## 📩 Pre-flight bericht naar deelnemers (copy-paste)

> **Vanavond bouw je live het brein van je webshop! 🔥**
> Doe vooraf even deze 2 stappen (5 min):
>
> **1. Installeer Claude Code**
> Mac (Terminal): `curl -fsSL https://claude.ai/install.sh | bash`
> Windows (PowerShell): `irm https://claude.ai/install.ps1 | iex`
> Type daarna `claude` en volg de login.
>
> **2. Installeer de masterclass**
> Mac: `curl -fsSL https://raw.githubusercontent.com/novusordos666/webshop-ai-masterclass/main/install.sh | bash`
> Windows: `irm https://raw.githubusercontent.com/novusordos666/webshop-ai-masterclass/main/install.ps1 | iex`
>
> **Neem mee:** een paar productnamen, je verzend-/retourbeleid, en 2-3 zinnen die klinken zoals jouw shop praat. Die stoppen we straks in je brein.
> Lukt de installatie niet? Geen stress — we doen de setup samen. Tot vanavond! 🚀

---

## ⏱️ Run of show (± 45 min)

| Tijd | Blok | Jij doet / zegt | Deelnemer doet |
|------|------|-----------------|----------------|
| **0:00–0:04** | 🎬 Welkom | Verkoop de belofte: "vanavond bouw je het brein van je webshop". Iedereen typt `/webshop:masterclass` + `1`. | Start de masterclass |
| **0:04–0:09** | 🔧 Setup | Iedereen groen krijgen (versie-check + map). Je enige risico-blok — neem de tijd. | Map `webshop-brein/` aanmaken |
| **0:09–0:17** | 🧠 STAP 1: brein | Moedig eerlijke, concrete antwoorden aan op de 5 vragen. | Bouwt CLAUDE.md + wiki-structuur |
| **0:17–0:32** | 📥 Hoofdgerecht | **Het langste blok.** Laat ze producten/beleid/stem plakken; loop rond. Vier het aantal pagina's. | Ingest: shop → wiki-pagina's |
| **0:32–0:39** | 🌐 Brein-kaart | **JOUW SCHERM:** run `/graphify wiki` → open `graph.html` (de wow). Toon daarna je second-brain in Obsidian's graph-view. | Kijkt mee; zijn brein staat klaar |
| **0:39–0:45** | 🎁 Cadeaus + CTA | Toon de 16 skills. Draai 1-2 outputs live (`/webshop:klantenhulp`, `/webshop:static-ad`). Visie + CTA → lio.circle.so. | Ziet z'n cadeau-menu |

**Buffer:** loopt het uit? Kort BLOK 5 in. De ingest (0:17–0:32) is de kern — daar mag de tijd heen.

---

## 🌐 Jouw brein-kaart demo (BLOK 4) — stap voor stap

**Klaar-om-te-tonen (aanrader):** er staat al een volledig gebouwde demo-graaf klaar →
`courses/webshop-ai-masterclass/demo-brein/graphify-out/graph.html`.
Dubbelklik 'm, deel je scherm — een levende kaart van de voorbeeld-webshop **De Kaarsenhoek** (28 bollen, 4 kleur-clusters, De Kaarsenhoek als grootste bol). Geen setup, werkt gegarandeerd.

Wil je het live opbouwen i.p.v. de kant-en-klare:
1. Ga in je terminal naar een brein-map (`demo-brein/` of je eigen `refs/leon-second-brain/`).
2. Run: `/graphify wiki` (voegt `--obsidian` toe als je ook de `graph.canvas` wilt).
3. Open `graphify-out/graph.html` → deel je scherm. Zoom, klik een paar bollen (god nodes).

Daarna: wissel naar Obsidian → open je eigen second-brain in de graph-view → "zo ziet het eruit als je 't maanden laat groeien". Zeg tegen de groep: "jullie kunnen dit later zelf met `/graphify` — het staat klaar."

---

## 🛟 Vangnetten

- **"Claude installeert niet / geen login"** → laat ze in de browser werken: **claude.ai/code**. Niemand valt af.
- **Een skill werd niet goed opgeslagen** → de installer zette ze er al op. Herstellen: `cp ~/.webshop-masterclass/skills/*.md ~/.claude/commands/webshop/`
- **`/webshop:` verschijnt niet** → nieuw gesprek (`claude`), of check dat de installer klaar is. Skills staan in `~/.claude/commands/webshop/`.
- **Ingest loopt vast / iemand heeft weinig info** → laat ze 2-3 producten + verzend/retour plakken. Dat is genoeg voor een mooi brein. Rest kan later.
- **Jouw graphify hapert live** → geen ramp: je hebt de wow al in het brein zelf (`wiki/`-pagina's) en Obsidian als backup. Draai desnoods een vooraf gemaakte `graph.html`.
- **Tempo te snel voor oudere deelnemers** → wacht bewust op `1`. "Iedereen mee?" voor elk blok.

---

## 🔗 Handig

- Start-commando deelnemer: `/webshop:masterclass` · welkomstscherm: `/webshop:start`
- Brein van de deelnemer: map `webshop-brein/` (CLAUDE.md + `wiki/`)
- Skills: `~/.claude/commands/webshop/` (16 stuks)
- Cursus-CTA: https://lio.circle.so · @lio · @liogpt · @187n
