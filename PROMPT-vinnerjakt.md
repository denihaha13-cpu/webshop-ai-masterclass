# Vinnerjakt – astridlund.no (lim inn hele denne)

Du er operatøren min for astridlund.no (norsk Shopify-dropshipping, kvinner 45–70). Ikke hast. Kvalitet er viktigere enn fart. Ikke still spørsmål underveis.

## Mål
Finn produkter og butikker vi kan skalere som BERIT-fløyelskjolen. Q4: vinter, jul og julebord. Både klær OG andre ting som selger til samme kunde: hjem, gaver, tekstiler, quiltede vaskekurver og tøfler.

## Før du starter
Les lærdomsfilene i /root/.claude/astridlund/laerdom/ (vinnerjeger.md, butikkvakt.md, produkter.md, creatives.md, felles.md), butikkregisteret /root/.claude/astridlund/butikkregister.md og den nyeste butikkhistorikk/testere-*.json.

## Bruk mange agenter parallelt (astridlund-vinnerjeger og astridlund-butikkvakt)
Skriv først en felles BRIEF.md med reglene under, og gi den til alle agentene.

Butikker:
- S1 USA: alle med 10 til 100+ aktive ads
- S2 UK/IE/AU/NZ/CA
- S3 EU + Norden
- S4 nye butikker siste 7–14 dager
- S5 tell ALLE kjente butikker live i dag, og finn søster- og nettverkssider

Produkter:
- A US
- B UK/EU
- C BERIT-lignende
- D de største butikkenes nyeste ads
- E samme plagg hos mange butikker (nettverk)
- F de 40 største butikkenes ferskeste
- G julebord og gave
- H «må kjøpe før jul»
- J hjem og gaver
- K norske konkurrenter (Shmiaina, Freute m.fl.)

## Regler for bevis
- Bare annonser startet siste 5–20 dager som fortsatt er AKTIVE i dag. Aldri fjorårets.
- Beste tegn:
  - samme plagg hos flere butikker
  - nye kopier hver dag
  - annonser som overlever dag 2–3
  - høy EU-reach
- Creatives trenger ikke være gode.
- Store butikker = minst 10 aktive ads, sterke = 30+ aktive og 5+ nye siste 7 dager.
- Metoder:
  - MCP ads_library_search med page_ids (+ search_terms)
  - q2 page-skann med begge datoene satt
  - kryssjekk av bilder og handles mot kataloger
- IKKE bruk:
  - keyword-søk «velvet dress» i US/GB
  - lokale søkeord i EU
  - Øst-Europa
- Fløyelskjoler er mettet.
- Aldri dikt opp tall eller lenker. Skriv «ikke sjekket».

## Import
- Først DUP-sjekk:
  1. claims.txt
  2. Shopify title-søk og SE på bildene
  3. pHash
- Deretter ACTIVE i 7 kanaler med norsk navn (reserver i claims.txt), 699–899 kr med 50 % compareAt og bilde på alle varianter.
- Aldri skriv «leverandør» eller «Levering» i beskrivelsen.
- Produkter vi allerede har: list som «IKKE IMPORTERT – DUP av X, skalerer hos konkurrent».

## Leveranse
1. **Side (artifact):** én side med fanene «Produkter» og «Butikker», gruppert per land, filter, søk og en «Kopier til Sheet»-knapp. Oppdater samme lenke når hver agent er ferdig.
2. **Egen USA-side:** bare US-butikker med 10–100+ aktive ads.
3. **Excel** «Vinnerjakt-Astridlund-DD-MM-YY.xlsx» med fanene:
   - Oversikt
   - Test først
   - Skalerer hos konkurrent
   - Alle produkter
   - Alle butikker
   - én fane per land (USA, UK, NL, FR, DE, IT, ES, AU, CA, Norden, andre)
   - Fargekoder: grønn 100+, gul 40–99, oransje 10–39, rød 0–9.
   - Klikkbare lenker, filter og låst overskrift.
4. **Kort oppsummering på norsk:**
   - nye produkter med bevis
   - hva konkurrentene skalerer som vi allerede har
   - de sterkeste butikkene

## BERIT-creatives (når jeg ber om det)
- Hent BERIT-annonsene i Meta (siste 30 d, ad-nivå: brukt, ROAS, kjøp, CTR) og analyser hva som vinner.
- Lag lookalikes av vinnerne med Higgsfield gpt_image_2, med vinnerbildet som referanse via media_import_url, pluss 3 NYE konsepter.
- Video med grok_video_v15_lite (720p, 9:16, count 1).
- Det som funker:
  - 60+ med sølvhår, smil og bevegelse
  - norsk julestue
  - hele kjolen synlig
  - ingen tekst eller pris på bildet

## Aldri
- Rør Meta-kampanjer, budsjetter eller status uten at jeg sier «ja» til et konkret forslag.
- Refusjoner eller penger til kunder.
- Fiken.
- Lim inn API-nøkler.
- Falske anmeldelser eller knapphet.
- Ta med TSG-kampanjer.

Skriv nye lærdommer (1–3 linjer, med dato) nederst i laerdom/vinnerjeger.md.
