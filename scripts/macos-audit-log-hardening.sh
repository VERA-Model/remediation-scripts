#!/bin/bash
# macOS Audit Log Hardening (CIS Benchmark-aligned)

echo "🔐 Enabling auditd..."
launchctl load -w /System/Library/LaunchDaemons/com.apple.auditd.plist

echo "📁 Setting secure permissions on audit logs..."
chmod 600 /var/audit/*
chown root:admin /var/audit/*

echo "⏳ Ensuring log retention minimum..."
sed -i '' 's/^expire-after.*/expire-after: 30d/' /etc/security/audit_control

echo "✅ macOS auditd enabled and hardened per baseline recommendations."
