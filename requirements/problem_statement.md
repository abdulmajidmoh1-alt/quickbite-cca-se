# Problem Statement

Small and mid-sized restaurants near colleges and residential areas take most orders by phone or at the counter. This causes wrong orders, long waits and no order history. Large platforms charge high commissions and give restaurants little control.

**QuickBite** gives these restaurants a simple online ordering system with menu browsing, cart, coupons, online payment and real-time order tracking.

## Objectives
1. Customers register, browse menus, build a cart and place orders online.
2. Coupons and secure online payment, with cash on delivery as fallback.
3. Restaurant staff accept, prepare and update orders in real time.
4. Admin controls restaurants, menus, coupons and users.
5. All orders and payments stored in PostgreSQL for history and reports.

## Scope
| In scope | Out of scope |
|---|---|
| Registration and login | Live GPS rider tracking |
| Restaurant/menu browsing and search | Native mobile apps |
| Cart, coupons, checkout | Rider management and payroll |
| Online payment (test mode) + COD | Multi-city scale-out |
| Order status tracking | AI recommendations |
| Restaurant dashboard, admin panel | |

## Stakeholders
| Stakeholder | Type | Interest |
|---|---|---|
| Customer | Primary user | Order quickly, pay safely, track order |
| Restaurant staff | Primary user | Clear orders, update status, manage menu |
| Admin | Primary user | Manage restaurants, users, coupons, reports |
| Payment gateway | External system | Process payments |
| Delivery person | Secondary user | Know which orders are ready |
| Team / instructor | Project stakeholders | Deliver and assess the system |
