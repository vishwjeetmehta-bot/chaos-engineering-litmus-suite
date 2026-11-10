<div align="center">

# ⚡ Kubernetes Chaos Engineering & Resilience Suite

[![LitmusChaos](https://img.shields.io/badge/LitmusChaos-v3.0-ED1C24?style=for-the-badge&logo=cloudnativecomputingfoundation&logoColor=white)](https://litmuschaos.io/)
[![Kubernetes](https://img.shields.io/badge/Kubernetes-Resilience_Testing-326CE5?style=for-the-badge&logo=kubernetes&logoColor=white)](https://kubernetes.io/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg?style=for-the-badge)](./LICENSE)

<p align="center">
  <b>Automated Chaos Engineering testing framework implementing LitmusChaos CRDs to inject pod network latency, node drain disruptions, and packet loss while verifying 99.99% steady-state SLA SLOs.</b>
</p>

</div>

---

## 🌪️ Chaos Hypothesis & Verification Cycle

```
[ Steady State Baseline ] -> HTTP Latency < 100ms & Errors = 0%
            │
            ▼
┌───────────────────────────────┐
│ Inject Chaos (LitmusChaos)    │
│  - 2,000ms Pod Latency Jitter │
│  - Sudden Node Drain          │
└───────────┬───────────────────┘
            │
            ▼
[ Self-Healing Verification ]
  - Horizontal Pod Autoscaler (HPA) scales out
  - Ingress controller reroutes traffic to healthy pods
            │
            ▼
[ Automated Steady-State Post-Verification: PASSED ]
```

---

## 📁 Repository Layout

```
chaos-engineering-litmus-suite/
├── .github/workflows/
│   └── ci.yml                     # Pipeline syntax checks
├── experiments/
│   ├── pod-network-latency.yaml   # ChaosEngine manifest for latency injection
│   └── node-drain-experiment.yaml # Simulates unannounced VMSS node failure
├── scripts/
│   ├── run-chaos-suite.sh         # Step-by-step orchestrator
│   └── verify-steady-state.py     # Pre and post-experiment SLA validation
└── README.md
```

---

## 👤 Author

**Vishwjeet Kumar Mehta**  
Senior DevOps & DevSecOps Consultant | Cloud & Infrastructure Architect  
- **LinkedIn**: [linkedin.com/in/vishwjeet-mehta](https://www.linkedin.com/in/vishwjeet-mehta/)  
- **GitHub**: [@vishwjeetmehta-bot](https://github.com/vishwjeetmehta-bot)

