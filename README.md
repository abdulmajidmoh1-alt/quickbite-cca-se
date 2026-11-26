# QuickBite – Online Food Ordering System

**Software Engineering – CCA Team Project** · BMS Institute of Technology and Management (VTU) · CSE, Semester 5, Section J

QuickBite is a web-based food ordering system for small and mid-sized restaurants. Customers browse menus, build a cart, apply coupons, pay online (or cash on delivery) and track their order. Restaurant staff accept and update orders; an admin manages restaurants, users and coupons.

This repository holds the project's requirements, plan, design models, report and presentation.

## Team

| Name | USN | Role |
|---|---|---|
| Abdulmajid Bin Duhri | 1TE24CS013 | Project lead – planning, Trello, integration, report |
| Aashish Takur | 1TE24CS011 | Requirements and process model |
| Aftab Aalam | 1TE24CS027 | Design – DFDs, data dictionary, sequence and state diagrams |
| Vivek Kumar | 1BY24CS339 | Architecture, GitHub, ethics, testing |

## Process model

**Incremental model**: three increments, each going Analysis → Design → Code → Test → Release.

| Increment | Features |
|---|---|
| 1 – Core ordering | Login, menu browsing, cart, place order (COD) |
| 2 – Coupons + payment | Coupon validation, online payment (test mode), order history |
| 3 – Tracking + management | Order status tracking, restaurant dashboard, admin panel |

## Tech stack

| Layer | Technology |
|---|---|
| Frontend | React (HTML/CSS/JS), hosted on Vercel / Netlify |
| Backend | Supabase – Auth, auto REST API, Edge Functions, Realtime |
| Database | PostgreSQL (Supabase) |
| Payments | Razorpay (test mode) |
| Tools | Trello, GitHub, diagrams.net (draw.io), Excel |

## Repository structure

```
requirements/   problem statement, requirements, survey questions
planning/       WBS, Gantt chart + risk register + Trello card list (xlsx)
diagrams/       draw.io source files (+ PNG exports) – process model, DFD L0/L1/L2, sequence, state, architecture
database/       schema.sql (no real user data)
src/            frontend source code
report/         final report (PDF)
presentation/   slides
```

## Links

- Project board (Trello): https://trello.com/b/1CbY1ffN/quickbite-cca-software-engineering-project
- Final report: `report/QuickBite_CCA_Report.pdf`

## Setup (frontend)

```bash
git clone <this-repo-url>
cd quickbite-cca-se/src
cp ../.env.example .env      # add your own Supabase URL and anon key
npm install
npm run dev
```

Opening diagrams: go to https://app.diagrams.net → File → Open → choose a file from `diagrams/`.

## Security note

No passwords, API keys or personal data are stored in this repository. Secrets live in a local `.env` file, which is listed in `.gitignore`.

## Credits and licences

- Diagrams made with diagrams.net (Apache 2.0).
- Food images: own photos or Unsplash (credited in the app).
- Open-source libraries are listed in `src/package.json` with their licences.
