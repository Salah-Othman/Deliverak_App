# "Deliverak" Delivery Marketplace
## Project Plan & Development Roadmap v2.0
Customer App · Driver App · Merchant/Admin Panel | Flutter + Firebase | Pilot Region: Abu Qurqas
**Updated:** July 2026 | **Duration:** 28 weeks | **Status:** Active

---

## 1. Overview

This roadmap translates the 3-tiered marketplace concept (Customer, Delivery Driver, and Merchant/Admin apps) into a phased, **28-week** execution plan. It is built on a Flutter front end with a Firebase backend, Google Maps/Mapbox for location services, and a pilot launch in Abu Qurqas ahead of full rollout.

**Total estimated duration:** 28 weeks (~7 months) from kickoff to public launch, run in **staggered sprints** across the three apps to reduce risk and allow shared component maturation.

### Key Changes from v1.0
- Extended timeline from 24 → 28 weeks (added contingency buffer)
- Staggered app development instead of full parallel
- Added missing critical features (auth, search, ratings, support)
- Added non-functional requirements (performance, compliance, testing)
- Added state management, analytics KPIs, and caching strategy
- Added Definition of Done, dependency map, and success metrics

---

## 2. Phases & Timeline

| # | Phase | Timeline | Key Deliverables |
|---|-------|----------|------------------|
| 1 | Discovery & Planning | Weeks 1–3 | Finalized requirements, user role matrix, tech stack sign-off, auth flow definition, state management decision, Abu Qurqas pilot scope, project backlog |
| 2 | UX/UI Design | Weeks 4–8 | Wireframes & prototypes for all 3 apps, Arabic-first UI/RTL, design system, component library, stakeholder approval |
| 3 | Architecture & Backend Foundation | Weeks 7–9 | Firebase project setup, RBAC model, Firestore schema, CI/CD pipeline, state management implementation, Cloud Functions skeleton |
| 4 | Core Build — Customer App | Weeks 10–14 | Auth (phone OTP), catalog/search, cart, checkout (COD), order tracking, push notifications, order history, basic profile |
| 5 | Core Build — Driver App | Weeks 14–17 | Auth, dispatch system, order lifecycle, GPS tracking, navigation, earnings dashboard, online/offline toggle |
| 6 | Core Build — Merchant/Admin Panel | Weeks 17–20 | Auth, order management dashboard, inventory/catalog controls, basic analytics, merchant onboarding flow |
| 7 | Integrations & Resilience | Weeks 21–23 | Maps/geofencing, payment gateway (COD + wallet stub), FailureHandler, offline caching, Crashlytics, notification triggers |
| 8 | QA & Testing | Weeks 22–25 | Unit/integration tests, E2E order flow, offline scenarios, security audit, performance testing, release builds |
| 9 | Pilot Launch — Abu Qurqas | Weeks 25–26 | Soft launch (5-10 merchants), monitoring live, user feedback loop, bug-fix sprint |
| 10 | Full Launch & Post-Launch | Weeks 27–28 | App store submissions, marketing rollout, monitoring dashboards, ongoing support backlog |

---

## 3. Visual Timeline (Gantt)

| Phase | Wk 1–4 | Wk 5–8 | Wk 9–12 | Wk 13–16 | Wk 17–20 | Wk 21–24 | Wk 25–28 |
|-------|--------|--------|---------|----------|----------|----------|----------|
| P1 Discovery & Planning | ████ | | | | | | |
| P2 UX/UI Design | ██ | ████ | ██ | | | | |
| P3 Architecture & Backend | | ██ | ████ | | | | |
| P4 Core Build — Customer | | | ████ | ████ | | | |
| P5 Core Build — Driver | | | | ████ | ██ | | |
| P6 Core Build — Merchant/Admin | | | | ██ | ████ | | |
| P7 Integrations & Resilience | | | | | ████ | ███ | |
| P8 QA & Testing | | | | █ | ██ | ████ | ██ |
| P9 Pilot Launch | | | | | | ██ | ██ |
| P10 Full Launch | | | | | | | ████ |

---

## 4. Key Milestones

| ID | Target Date | Milestone | Success Criteria |
|----|-------------|-----------|------------------|
| M1 | End of Week 3 | Project scope, tech stack & pilot region locked | Requirements doc signed off, auth flow defined, state management chosen |
| M2 | End of Week 8 | Design approved across all 3 apps | Clickable prototypes reviewed, Arabic RTL validated, design system documented |
| M3 | End of Week 9 | Backend foundation & security architecture live | Firebase configured, RBAC active, CI/CD pipeline operational |
| M4 | End of Week 14 | Customer App feature-complete | Auth, catalog, cart, checkout, tracking, notifications working |
| M5 | End of Week 20 | All 3 apps feature-complete | Driver + Merchant/Admin apps functional, shared components integrated |
| M6 | End of Week 23 | Integrations & resilience complete | Maps, payments, offline caching, Crashlytics operational |
| M7 | End of Week 25 | QA sign-off, security audit passed | Test coverage >70%, no critical bugs, security review green |
| M8 | End of Week 26 | Abu Qurqas pilot complete | 50+ orders processed, crash rate <1%, user feedback positive |
| M9 | End of Week 28 | Public launch on App Store & Google Play | Apps approved, monitoring live, support channels active |

---

## 5. Detailed Phase Specifications

### Phase 1: Discovery & Planning (Weeks 1–3)

**Objectives:**
- Lock project scope and feature set for MVP
- Define technical architecture decisions
- Establish pilot success criteria

**Tasks:**
| Task | Owner | Duration |
|------|-------|----------|
| Finalize user role matrix (Customer/Driver/Admin) | PM | 2 days |
| Define auth flow: Phone OTP (primary), Email fallback | Backend | 2 days |
| Choose state management: **Riverpod** (recommended) | Flutter Lead | 1 day |
| Define Firestore data schema (Users, Orders, Products, Merchants) | Backend | 3 days |
| Define API versioning strategy (v1 prefix for Cloud Functions) | Backend | 1 day |
| Map push notification triggers (10+ event types) | Full Team | 1 day |
| Define offline caching scope (what works offline vs online) | Flutter Lead | 1 day |
| Define analytics KPIs (see Section 8) | PM + Backend | 1 day |
| Set up Git branching strategy (GitFlow) | DevOps | 1 day |
| Create project backlog in tracker | PM | 2 days |
| Define pilot success metrics (see Section 10) | PM | 1 day |

**Exit Criteria:**
- [ ] Requirements document signed by all stakeholders
- [ ] Tech stack confirmed (Flutter + Firebase + Riverpod)
- [ ] Auth flow documented (Phone OTP → Email fallback)
- [ ] Data schema v1 approved
- [ ] Pilot success metrics defined

---

### Phase 2: UX/UI Design (Weeks 4–8)

**Objectives:**
- Create design system and component library
- Design all screens for 3 apps
- Validate Arabic RTL layouts

**Deliverables:**
| Deliverable | Apps | Week |
|-------------|------|------|
| Design system (colors, typography, spacing) | All | Wk 4 |
| Component library (buttons, cards, inputs, modals) | All | Wk 5 |
| Customer App wireframes (15+ screens) | Customer | Wk 5-6 |
| Driver App wireframes (12+ screens) | Driver | Wk 6-7 |
| Merchant/Admin wireframes (14+ screens) | Admin | Wk 7 |
| Clickable prototypes (all 3 apps) | All | Wk 7-8 |
| Arabic RTL validation & testing | All | Wk 8 |
| Stakeholder design approval | All | Wk 8 |

**Key Screens (Customer App):**
- Splash / Onboarding
- Auth (Phone OTP → Verification → Profile setup)
- Home / Catalog browsing
- Product search + filters
- Product detail
- Cart
- Checkout (COD, Wallet stub)
- Order confirmation
- Live order tracking (map view)
- Order history
- Order detail
- Profile / Settings
- Help center / Support
- Notifications list

**Exit Criteria:**
- [ ] Design system documented in Figma/similar
- [ ] All screens designed for 3 apps
- [ ] Arabic RTL layout validated on multiple screen sizes
- [ ] Clickable prototypes functional
- [ ] Stakeholder sign-off obtained

---

### Phase 3: Architecture & Backend Foundation (Weeks 7–9)

**Objectives:**
- Set up Firebase infrastructure
- Implement security model
- Create shared component library

**Tasks:**
| Task | Owner | Duration |
|------|-------|----------|
| Firebase project setup (Auth, Firestore, Functions, Storage) | Backend | 2 days |
| Firestore security rules (RBAC: Customer, Driver, Admin, Merchant) | Backend | 3 days |
| Cloud Functions skeleton (order lifecycle, notifications) | Backend | 3 days |
| CI/CD pipeline (GitHub Actions / Codemagic) | DevOps | 2 days |
| Riverpod setup + state management architecture | Flutter Lead | 2 days |
| Shared component library scaffolding | Flutter Dev | 3 days |
| flutter_secure_storage integration | Flutter Dev | 1 day |
| Firebase Crashlytics setup | Backend | 1 day |
| Firebase Analytics setup | Backend | 1 day |
| Firestore backup automation | DevOps | 1 day |

**Firestore Schema v1:**
```
/users/{userId}
  - phone, email, name, role (customer/driver/admin/merchant)
  - createdAt, updatedAt
  - fcmToken
  - walletBalance (customer)
  - vehicleInfo (driver)
  - merchantId (merchant)

/merchants/{merchantId}
  - name, description, address, location (GeoPoint)
  - isActive, operatingHours
  - createdAt

/products/{productId}
  - merchantId, name, description, price
  - category, imageUrl, isAvailable
  - createdAt, updatedAt

/orders/{orderId}
  - customerId, driverId, merchantId
  - items[], totalAmount, status
  - paymentMethod (cod/wallet)
  - deliveryAddress, deliveryLocation (GeoPoint)
  - createdAt, updatedAt, deliveredAt
  - rating (customer→driver, driver→merchant)

/driver_locations/{driverId}
  - location (GeoPoint)
  - updatedAt
  - isOnline

/notifications/{notificationId}
  - userId, type, title, body
  - data (orderId, etc.)
  - read, createdAt
```

**Exit Criteria:**
- [ ] Firebase project configured
- [ ] Security rules deployed and tested
- [ ] CI/CD pipeline operational
- [ ] Shared component library initialized
- [ ] Crashlytics and Analytics wired

---

### Phase 4: Core Build — Customer App (Weeks 10–14)

**Objectives:**
- Build complete Customer App MVP
- Implement auth, catalog, cart, checkout, tracking

**Feature Breakdown:**
| Feature | Priority | Stories |
|---------|----------|---------|
| Auth (Phone OTP) | P0 | Phone input → OTP verify → Profile setup |
| Auth (Email fallback) | P1 | Email/password registration + login |
| Catalog browsing | P0 | Merchant list, product grid, categories |
| Product search + filters | P0 | Search by name, filter by category/price |
| Product detail | P0 | Image, description, price, add to cart |
| Cart | P0 | Add/remove items, quantity, total |
| Checkout | P0 | Address input, payment selection (COD), order placement |
| Order tracking | P0 | Live status, driver location on map |
| Order history | P1 | Past orders list, reorder capability |
| Push notifications | P0 | FCM integration, notification handlers |
| Profile/Settings | P1 | Edit name, phone, addresses |
| Help center | P1 | FAQ, contact support, report issue |
| Notifications list | P1 | In-app notification center |

**Technical Implementation:**
- State: Riverpod providers for auth, cart, orders, catalog
- Storage: flutter_secure_storage for tokens, Hive for local cache
- Navigation: GoRouter with role-based routes
- Forms: Flutter Form + validation

**Exit Criteria:**
- [ ] Auth flow complete (Phone OTP + Email)
- [ ] Catalog with search and filters functional
- [ ] Cart → Checkout → Order placement working
- [ ] Live order tracking with map
- [ ] Push notifications received
- [ ] Order history viewable
- [ ] No crash on main flows

---

### Phase 5: Core Build — Driver App (Weeks 14–17)

**Objectives:**
- Build complete Driver App MVP
- Implement dispatch, order lifecycle, GPS, navigation

**Feature Breakdown:**
| Feature | Priority | Stories |
|---------|----------|---------|
| Auth (Phone OTP) | P0 | Same as Customer App |
| Online/Offline toggle | P0 | Driver availability control |
| New order notification | P0 | Sound + vibration + accept/decline |
| Order pickup | P0 | Navigate to merchant, confirm pickup |
| Order delivery | P0 | Navigate to customer, confirm delivery |
| GPS location tracking | P0 | Real-time location updates to Firestore |
| Navigation integration | P0 | Open Maps/Mapbox for turn-by-turn |
| Earnings dashboard | P1 | Daily/weekly earnings, order count |
| Order history | P1 | Completed deliveries list |
| Profile/Settings | P1 | Vehicle info, availability hours |
| Ratings display | P1 | View customer ratings |

**Technical Implementation:**
- Location: geolocator package for GPS
- Background location: background_location for tracking when app minimized
- Navigation: url_launcher to open Maps app
- Real-time updates: Firestore snapshots for new orders

**Exit Criteria:**
- [ ] Online/Offline toggle working
- [ ] New order notifications received
- [ ] Order lifecycle (accept → pickup → deliver) complete
- [ ] GPS tracking updating in real-time
- [ ] Navigation opens Maps app
- [ ] Earnings dashboard displaying

---

### Phase 6: Core Build — Merchant/Admin Panel (Weeks 17–20)

**Objectives:**
- Build Merchant/Admin dashboard
- Implement order management and inventory controls

**Feature Breakdown:**
| Feature | Priority | Stories |
|---------|----------|---------|
| Auth (Email/Password) | P0 | Merchant login |
| Live order dashboard | P0 | Incoming orders, accept/decline, status updates |
| Order management | P0 | View order details, mark prepared |
| Inventory/catalog management | P0 | Add/edit/delete products, toggle availability |
| Basic analytics | P1 | Orders today, peak hours, top items |
| Merchant onboarding | P1 | Self-service registration flow |
| Profile/Settings | P1 | Business info, operating hours |
| Notification center | P1 | In-app order notifications |

**Technical Implementation:**
- Web-based admin panel (Flutter Web)
- Real-time order updates via Firestore snapshots
- Chart library for analytics (fl_chart)

**Exit Criteria:**
- [ ] Merchant login working
- [ ] Live order dashboard receiving orders
- [ ] Product CRUD operations functional
- [ ] Basic analytics displaying
- [ ] Onboarding flow complete

---

### Phase 7: Integrations & Resilience (Weeks 21–23)

**Objectives:**
- Integrate Maps, payments, and offline support
- Implement error handling and monitoring

**Tasks:**
| Task | Owner | Duration |
|------|-------|----------|
| Google Maps/Mapbox integration (customer tracking view) | Flutter Dev | 3 days |
| Geofencing for pilot region (Abu Qurqas) | Backend | 2 days |
| Payment gateway integration (COD confirmation flow) | Backend | 3 days |
| Wallet system (basic: top-up, balance, deduct) | Backend | 3 days |
| Custom exceptions (AuthException, OrderException, PaymentException) | Flutter Lead | 2 days |
| FailureHandler + Arabic error messages | Flutter Dev | 2 days |
| Offline caching (active orders, cart, catalog cache) | Flutter Dev | 3 days |
| Firebase Crashlytics deep integration | Backend | 1 day |
| Push notification trigger mapping (10+ events) | Backend | 2 days |
| Performance optimization (image caching, lazy loading) | Flutter Dev | 2 days |

**Notification Triggers:**
| Event | Recipient | Message (Arabic) |
|-------|-----------|------------------|
| Order placed | Merchant | "طلب جديد من [customer]" |
| Order accepted | Customer | "تم قبول طلبك" |
| Order ready | Driver | "طلب جاهز للاستلام" |
| Driver assigned | Customer | "تم تعيين سائق [name]" |
| Driver arrived | Customer | "السائق وصل إليك" |
| Order delivered | Customer + Merchant | "تم توصيل الطلب" |
| Payment received | Merchant | "تم استلام المبلغ" |
| Rating received | Driver | "تقييم جديد من العميل" |

**Exit Criteria:**
- [ ] Maps tracking functional in Customer App
- [ ] COD payment flow complete
- [ ] Wallet top-up and deduction working
- [ ] Offline mode tested (active orders persist)
- [ ] All notification triggers firing
- [ ] Crashlytics receiving test crashes
- [ ] Arabic error messages validated

---

### Phase 8: QA & Testing (Weeks 22–25)

**Objectives:**
- Comprehensive testing across all 3 apps
- Security audit and performance validation

**Testing Strategy:**
| Test Type | Scope | Tool | Target Coverage |
|-----------|-------|------|-----------------|
| Unit tests | Business logic, providers | flutter_test + mockito | >80% |
| Widget tests | UI components | flutter_test | >70% |
| Integration tests | Auth, order flow, payment | integration_test | Critical paths |
| E2E tests | Full order lifecycle | integration_test | Happy path + edge cases |
| Offline tests | Connectivity loss scenarios | Manual + automation | All offline flows |
| Security tests | RBAC, data access | Manual audit | All roles |
| Performance tests | Load times, memory | DevTools, Firebase Performance | <3s cold start |

**Test Scenarios (Critical Paths):**
1. Customer: Browse → Add to Cart → Checkout (COD) → Track Order → Receive Delivery
2. Driver: Go Online → Accept Order → Navigate to Merchant → Pickup → Navigate to Customer → Deliver
3. Merchant: Login → View Orders → Accept → Mark Prepared → View Analytics
4. Admin: Login → Manage Merchants → View All Orders → Generate Reports

**Security Checklist:**
- [ ] Firestore rules prevent cross-role data access
- [ ] Cloud Functions validate caller role
- [ ] No sensitive data in logs
- [ ] Secure storage for tokens
- [ ] Payment data encrypted in transit
- [ ] App obfuscation enabled for release builds

**Exit Criteria:**
- [ ] Unit test coverage >80%
- [ ] All critical paths tested
- [ ] No P0/P1 bugs open
- [ ] Security audit passed
- [ ] Performance benchmarks met
- [ ] Release builds obfuscated and tested

---

### Phase 9: Pilot Launch — Abu Qurqas (Weeks 25–26)

**Objectives:**
- Soft launch with limited merchants and drivers
- Collect real user feedback
- Validate system under real load

**Pilot Parameters:**
| Parameter | Value |
|-----------|-------|
| Merchants | 5-10 |
| Drivers | 5-10 |
| Target orders/day | 20-50 |
| Duration | 2 weeks |
| Region | Abu Qurqas only |

**Pre-Launch Checklist:**
- [ ] 5+ merchants onboarded with products
- [ ] 5+ drivers registered and trained
- [ ] Monitoring dashboards live (Firebase Console)
- [ ] Crash alerts configured
- [ ] Support channel established (WhatsApp/phone)
- [ ] Feedback form deployed

**Success Metrics (End of Pilot):**
| Metric | Target | Actual |
|--------|--------|--------|
| Total orders completed | 100+ | - |
| Crash rate | <1% | - |
| Order completion rate | >90% | - |
| Average delivery time | <45 min | - |
| User satisfaction (survey) | >4/5 | - |
| Critical bugs found | <5 | - |
| Payment success rate | >95% | - |

**Post-Pilot:**
- Bug-fix sprint (1 week)
- Feedback incorporation
- Performance optimization
- Prepare for full launch

---

### Phase 10: Full Launch & Post-Launch (Weeks 27–28)

**Objectives:**
- Submit to App Store and Google Play
- Marketing rollout
- Establish ongoing support

**Tasks:**
| Task | Owner | Duration |
|------|-------|----------|
| iOS App Store submission | DevOps | 3 days |
| Google Play submission | DevOps | 3 days |
| App store metadata (screenshots, descriptions) | PM + Design | 2 days |
| Marketing materials | PM | 3 days |
| Merchant onboarding campaign | PM | Ongoing |
| Driver recruitment | PM | Ongoing |
| Monitoring dashboards live | Backend | 1 day |
| Support documentation | PM | 2 days |
| Post-launch backlog prioritization | PM | 1 day |

**Post-Launch Backlog (Post-28 weeks):**
- Advanced promotions/coupons
- Ratings/reviews system
- Multi-language switching (English support)
- Driver shift scheduling
- Advanced analytics dashboards
- In-app chat support
- Delivery time estimation (ML)
- Merchant subscription model

---

## 6. Dependency Map

```
Phase 1 (Discovery) 
    ↓
Phase 2 (Design) ← depends on Phase 1
    ↓
Phase 3 (Architecture) ← depends on Phase 2 (design system)
    ↓
Phase 4 (Customer App) ← depends on Phase 3 (backend)
    ↓
Phase 5 (Driver App) ← depends on Phase 3 + Phase 4 (order model)
    ↓
Phase 6 (Merchant/Admin) ← depends on Phase 3 + Phase 4 (order model)
    ↓
Phase 7 (Integrations) ← depends on Phases 4-6 (all apps built)
    ↓
Phase 8 (QA) ← depends on Phase 7 (integrations complete)
    ↓
Phase 9 (Pilot) ← depends on Phase 8 (QA passed)
    ↓
Phase 10 (Launch) ← depends on Phase 9 (pilot success)
```

---

## 7. Team & Responsibilities

| Role | Responsibilities | Count |
|------|------------------|-------|
| Project Lead / PM | Scope, timeline, stakeholder communication, risk tracking, pilot management | 1 |
| Flutter Developers | Customer, Driver & Admin app builds; shared component library; state management | 2-3 |
| Backend/Firebase Engineer | Firestore schema, Cloud Functions, security rules, RBAC, integrations | 1 |
| UI/UX Designer | Wireframes, design system, Arabic RTL layouts, prototypes | 1 |
| QA Engineer | Test plans, regression testing, offline/edge-case scenarios, automation | 1 |
| DevOps / Release Engineer | CI/CD, app store releases, obfuscation, Crashlytics, monitoring | 1 |

**Total team size:** 7-8 people

---

## 8. Analytics KPIs

| Category | Metric | Target |
|----------|--------|--------|
| **Engagement** | Daily Active Users (DAU) | >100 (pilot) |
| | Session duration | >3 min |
| | Cart abandonment rate | <30% |
| **Orders** | Orders per day | >20 (pilot) |
| | Order completion rate | >90% |
| | Average order value | EGP 150+ |
| **Delivery** | Average delivery time | <45 min |
| | Driver acceptance rate | >80% |
| | Delivery success rate | >95% |
| **Technical** | Crash rate | <1% |
| | App load time | <3s |
| | API response time | <500ms |
| **Business** | Merchant retention | >80% (pilot) |
| | Customer satisfaction | >4/5 |

---

## 9. Risks & Mitigation

| Risk | Impact | Likelihood | Mitigation |
|------|--------|------------|------------|
| Driver connectivity drop-offs mid-delivery | High | High | Local caching of active order state; graceful offline fallback UI; background GPS updates |
| Payment failures (wallet/COD mismatch) | Medium | Medium | Dedicated PaymentException handling + manual reconciliation flow; COD-first approach |
| Delayed app store approval | Medium | Low | Submit builds 2 weeks ahead of target; pre-review compliance checklist |
| Low merchant adoption at pilot | Medium | Medium | Onboard 5-10 anchor merchants before public rollout; provide onboarding support |
| Scope creep across 3 parallel apps | High | High | Staggered development; shared component library; strict sprint-based backlog grooming |
| Firebase costs exceed budget | Medium | Medium | Monitor usage; implement caching; optimize queries; set budget alerts |
| Arabic RTL rendering issues | Medium | Medium | Validate in every phase; test on multiple devices; use mirroring widgets |
| Key team member turnover | High | Low | Document all decisions; pair programming; knowledge sharing sessions |

---

## 10. Definition of Done

### Per User Story:
- [ ] Code complete and peer reviewed
- [ ] Unit tests written and passing
- [ ] Widget tests for UI components
- [ ] Arabic UI validated
- [ ] RTL layout verified
- [ ] Error handling implemented (FailureHandler)
- [ ] Analytics events tracked
- [ ] No memory leaks
- [ ] Works on Android 8+ and iOS 13+

### Per Phase:
- [ ] All exit criteria met
- [ ] Stakeholder sign-off obtained
- [ ] Documentation updated
- [ ] No P0/P1 bugs remaining
- [ ] Performance benchmarks met

### Per Release:
- [ ] All phases complete
- [ ] QA sign-off
- [ ] Security audit passed
- [ ] Crash rate <1% on test builds
- [ ] App store guidelines compliant
- [ ] Monitoring dashboards live

---

## 11. Notes

1. **Staggered Development:** Apps are built sequentially (Customer → Driver → Admin) to allow shared components to mature and reduce risk. This differs from v1's parallel approach.

2. **Shared Component Library:** Built during Phase 3 and extended throughout. Includes: buttons, cards, inputs, modals, loading states, error widgets.

3. **Arabic-First Design:** All UI is designed in Arabic first. RTL support is validated in every phase — not deferred to QA.

4. **Firebase Crashlytics:** Wired in Phase 3 so crash data exists from first internal builds, not just pilot.

5. **Offline Support:** Active orders, cart, and catalog cache are available offline. Full sync when connectivity restored.

6. **Wallet System:** Basic MVP for pilot (top-up, balance check, deduction). Advanced features (auto-top-up, transfer) deferred to post-launch.

7. **Code Quality:** Enforced via CI/CD: linting (flutter_lints), formatting (dart format), test coverage gates.

8. **Communication:** Daily standups, weekly sprint reviews, bi-weekly stakeholder demos.

---

## Appendix A: Tech Stack

| Layer | Technology |
|-------|------------|
| Frontend | Flutter 3.x |
| State Management | Riverpod |
| Navigation | GoRouter |
| Local Storage | flutter_secure_storage + Hive |
| Backend | Firebase (Auth, Firestore, Functions, Storage) |
| Maps | Google Maps SDK / Mapbox |
| Push Notifications | Firebase Cloud Messaging |
| Crash Reporting | Firebase Crashlytics |
| Analytics | Firebase Analytics |
| CI/CD | GitHub Actions / Codemagic |
| Testing | flutter_test, mockito, integration_test |
| Code Quality | flutter_lints, dart format |

---

## Appendix B: Notification Event Mapping

| Event | Trigger | Recipients | Channel |
|-------|---------|------------|---------|
| `order_placed` | Customer completes checkout | Merchant | Push + In-App |
| `order_accepted` | Merchant accepts order | Customer | Push + In-App |
| `order_declined` | Merchant declines order | Customer | Push + In-App |
| `order_ready` | Merchant marks prepared | Driver (nearby) | Push + Sound |
| `driver_assigned` | Driver accepts order | Customer | Push + In-App |
| `driver_en_route` | Driver starts delivery | Customer | Push + In-App |
| `driver_arrived` | Driver reaches customer | Customer | Push + Sound |
| `order_delivered` | Driver confirms delivery | Customer + Merchant | Push + In-App |
| `payment_received` | COD confirmed | Merchant | Push + In-App |
| `rating_received` | Customer rates driver | Driver | Push + In-App |
| `wallet_topup` | Customer tops up wallet | Customer | Push + In-App |
| `promo_applied` | Customer uses promo code | Customer | In-App |

---

*Document Version: 2.0*
*Last Updated: July 2026*
*Author: Deliverak Project Team*