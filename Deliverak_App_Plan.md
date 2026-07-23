"Deliverak" Delivery Marketplace
Project Plan & Development Roadmap
Customer App · Driver App · Merchant/Admin Panel  |  Flutter + Firebase  |  Pilot Region: Abu Qurqas
1. Overview
This roadmap translates the 3-tiered marketplace concept (Customer, Delivery Driver, and Merchant/Admin apps) into a phased, 24-week execution plan. It is built on a Flutter front end with a Firebase backend, Google Maps/Mapbox for location services, and a pilot launch in Abu Qurqas ahead of full rollout.
Total estimated duration: 24 weeks (~6 months) from kickoff to public launch, run in overlapping sprints across the three apps to compress delivery time.
2. Phases & Timeline
#	Phase	Timeline	Key Deliverables
1	Discovery & Planning	Weeks 1–2	Finalized requirements, user role matrix (Customer/Driver/Admin), tech stack sign-off (Flutter + Firebase), Abu Qurqas market/pilot scope defined, project backlog in tracker.
2	UX/UI Design	Weeks 3–5	Wireframes & clickable prototypes for all 3 apps, Arabic-first UI/RTL layout, design system (colors, typography, components), stakeholder design approval.
3	Architecture & Backend Foundation	Weeks 6–7	Firebase project setup (Auth, Firestore, Cloud Functions, Storage), role-based access control model, data schema for Orders/Users/Products, CI/CD pipeline, flutter_secure_storage integration.
4	Core Build — Customer App	Weeks 8–11	Local discovery/catalog browsing, cart & order customization, checkout (COD + wallet), live order tracking UI, push notifications.
5	Core Build — Driver App	Weeks 10–12	Dispatch/notification system, one-tap order lifecycle updates, turn-by-turn navigation (Maps/Mapbox), earnings ledger dashboard.
6	Core Build — Merchant/Admin Panel	Weeks 11–13	Live order management dashboard, inventory & catalog controls, analytics module (peak hours, top items, delivery times).
7	Integrations & Resilience	Weeks 14–15	Google Maps/Mapbox geo-fencing & routing, payment gateway/wallet integration, custom exceptions (AuthException, OrderException), FailureHandler (Arabic error messaging), offline caching for active orders, firebase_crashlytics setup.
8	QA & Testing	Weeks 16–18	Unit & integration test coverage, end-to-end order-flow testing across all 3 apps, offline/poor-connectivity test scenarios, security & role-permission audit, release-build obfuscation verified.
9	Pilot Launch — Abu Qurqas	Weeks 19–20	Soft launch with limited merchants/drivers, crash & performance monitoring live, real-user feedback loop, bug-fix sprint.
10	Full Launch & Post-Launch Support	Weeks 21–24	App store submissions (iOS/Android), marketing/onboarding rollout, monitoring dashboards live, ongoing support & iteration backlog established.

3. Visual Timeline (Gantt)
Phase	Wk 1–4	Wk 5–8	Wk 9–12	Wk 13–16	Wk 17–20	Wk 21–24
P1 Discovery & Planning		
P2 UX/UI Design			
P3 Architecture & Backend Foundation			
P4 Core Build — Customer App			
P5 Core Build — Driver App			
P6 Core Build — Merchant/Admin Panel			
P7 Integrations & Resilience			
P8 QA & Testing			
P9 Pilot Launch — Abu Qurqas			
P10 Full Launch & Post-Launch Support		

4. Key Milestones
ID	Target Date	Milestone
M1	End of Week 2	Project scope, tech stack & pilot region locked
M2	End of Week 5	Design approved across Customer, Driver & Admin apps
M3	End of Week 7	Backend foundation & security architecture live
M4	End of Week 13	Feature-complete build across all three apps
M5	End of Week 15	Maps, payments & offline resilience integrated
M6	End of Week 18	QA sign-off, security audit passed
M7	End of Week 20	Abu Qurqas pilot complete, feedback incorporated
M8	End of Week 24	Public launch on App Store & Google Play

5. Team & Responsibilities
Role	Responsibilities
Project Lead / PM	Scope, timeline, stakeholder communication, risk tracking
Flutter Developers (2–3)	Customer, Driver & Admin app builds; shared component library
Backend/Firebase Engineer	Firestore schema, Cloud Functions, security rules, RBAC
UI/UX Designer	Wireframes, design system, Arabic RTL layouts
QA Engineer	Test plans, regression testing, offline/edge-case scenarios
DevOps / Release Engineer	CI/CD, app store releases, obfuscation, Crashlytics monitoring

6. Risks & Mitigation
Risk	Impact	Mitigation
Driver connectivity drop-offs mid-delivery	High	Local caching of active order state; graceful offline fallback UI
Payment failures (wallet/COD mismatch)	Medium	Dedicated PaymentException handling + manual reconciliation flow
Delayed app store approval	Medium	Submit builds 2 weeks ahead of target launch; pre-review compliance checklist
Low merchant adoption at pilot	Medium	Onboard 5–10 anchor merchants in Abu Qurqas before public rollout
Scope creep across 3 parallel apps	High	Shared component library; strict sprint-based backlog grooming

7. Notes
App builds for Customer, Driver, and Admin run in parallel from Week 8, sharing a common component/design library to reduce duplication.
QA (Phase 8) runs continuously in earlier phases in a lightweight form; Weeks 16–18 are dedicated hardening/regression cycles.
Arabic-language UI and RTL support, plus the FailureHandler/Snackbar error pattern, should be validated in every phase — not deferred to QA.
Firebase Crashlytics should be wired in from Phase 3 onward so crash data exists from the first internal builds, not just the pilot.