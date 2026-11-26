# Requirements

## Functional
| ID | Requirement | User | Priority |
|---|---|---|---|
| FR1 | Register, log in, log out | Customer | High |
| FR2 | Browse restaurants and menus; search | Customer | High |
| FR3 | Add, update, remove cart items | Customer | High |
| FR4 | Apply coupon (validity, expiry, minimum order) | Customer | Medium |
| FR5 | Place order; pay online or COD | Customer | High |
| FR6 | Track status: Placed → Accepted → Preparing → Out for delivery → Delivered | Customer | High |
| FR7 | View order history | Customer | Medium |
| FR8 | Accept/reject orders, update status | Restaurant | High |
| FR9 | Add/edit menu items, mark unavailable | Restaurant | High |
| FR10 | Manage restaurants, users, coupons | Admin | Medium |
| FR11 | Daily sales and order reports | Admin | Low |

## Non-functional
| ID | Category | Requirement |
|---|---|---|
| NFR1 | Performance | Menu and cart load in < 3 s on 4G |
| NFR2 | Security | Hashed passwords, HTTPS, Row Level Security |
| NFR3 | Reliability | One order per payment even on double click |
| NFR4 | Usability | First order in under 5 steps |
| NFR5 | Accessibility | Contrast, keyboard navigation, alt text |
| NFR6 | Maintainability | GitHub repo with README and folders |
| NFR7 | Portability | Chrome, Edge, Firefox; desktop and mobile |

## Assumptions
- Users have internet access on a phone or computer.
- Payment gateway runs in test mode.
- One city, few restaurants in version 1.
- Free tiers of Supabase, Vercel/Netlify, GitHub.
