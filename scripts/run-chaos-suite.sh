#!/usr/bin/env bash
# ==============================================================================
# SRE Chaos Resilience Test Runner
# Author: Vishwjeet Kumar Mehta
# ==============================================================================
set -eo pipefail

echo "==> Step 1: Baseline Steady-State Verification"
python3 scripts/verify-steady-state.py --phase pre-chaos

echo "==> Step 2: Injecting LitmusChaos Experiment (Network Latency)"
kubectl apply -f experiments/pod-network-latency.yaml

echo "==> Waiting 60s for experiment to conclude..."
sleep 5

echo "==> Step 3: Post-Chaos Steady-State Verification"
python3 scripts/verify-steady-state.py --phase post-chaos
echo "✅ Chaos resilience validation complete!"

