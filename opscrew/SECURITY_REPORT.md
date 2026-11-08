# OpsCrew security report: seocc

Checked on 2026-11-08 07:25 UTC with OpsCrew 0.2.5.

## Summary

**33 problems to fix** (33 high) and 1 warning.

| Area | Result |
|---|---|
| Code scan | 0 critical, 33 high, 0 medium, 0 low, 0 info |
| Infrastructure policies | 9 passed, 0 failed |
| Server hardening | 13 passed, 0 failed, 1 warning, 0 skipped |
| Outside probes | 14 passed, 0 failed, 0 warnings, 0 skipped |
| TLS and the secrets copy | 2 passed, 0 failed, 0 warnings, 0 skipped |

## What to fix

1. **High** · Code scan: Hard-coded secret in "token_endpoint_auth_methods_supported" — `app/Modules/Mcp/OAuth/OAuthServer.php:104`
   A random-looking value is assigned to "token_endpoint_auth_methods_supported", which looks like a password, token or key written directly in the file.
   **Fix:** Revoke or rotate it now, remove it from the code and load it from an environment variable or a secret store instead. Deleting the line is not enough once it was committed: the value stays in git history, so treat it as leaked.
2. **High** · Code scan: Hard-coded secret in "PRODUCT_TOKEN" — `app/Modules/SiteAudit/Crawler/SiteCrawler.php:23`
   A random-looking value is assigned to "PRODUCT_TOKEN", which looks like a password, token or key written directly in the file.
   **Fix:** Revoke or rotate it now, remove it from the code and load it from an environment variable or a secret store instead. Deleting the line is not enough once it was committed: the value stays in git history, so treat it as leaked.
3. **High** · Code scan: Hard-coded secret in "new_password" — `tests/Http/AccountHttpTest.php:61`
   A random-looking value is assigned to "new_password", which looks like a password, token or key written directly in the file.
   **Fix:** Revoke or rotate it now, remove it from the code and load it from an environment variable or a secret store instead. Deleting the line is not enough once it was committed: the value stays in git history, so treat it as leaked.
4. **High** · Code scan: Hard-coded secret in "current_password" — `tests/Http/AccountHttpTest.php:63`
   A random-looking value is assigned to "current_password", which looks like a password, token or key written directly in the file.
   **Fix:** Revoke or rotate it now, remove it from the code and load it from an environment variable or a secret store instead. Deleting the line is not enough once it was committed: the value stays in git history, so treat it as leaked.
5. **High** · Code scan: Hard-coded secret in "current_password" — `tests/Http/AccountHttpTest.php:65`
   A random-looking value is assigned to "current_password", which looks like a password, token or key written directly in the file.
   **Fix:** Revoke or rotate it now, remove it from the code and load it from an environment variable or a secret store instead. Deleting the line is not enough once it was committed: the value stays in git history, so treat it as leaked.
6. **High** · Code scan: Hard-coded secret in "current_password" — `tests/Http/AccountHttpTest.php:68`
   A random-looking value is assigned to "current_password", which looks like a password, token or key written directly in the file.
   **Fix:** Revoke or rotate it now, remove it from the code and load it from an environment variable or a secret store instead. Deleting the line is not enough once it was committed: the value stays in git history, so treat it as leaked.
7. **High** · Code scan: Hard-coded secret in "new_password" — `tests/Http/AccountHttpTest.php:86`
   A random-looking value is assigned to "new_password", which looks like a password, token or key written directly in the file.
   **Fix:** Revoke or rotate it now, remove it from the code and load it from an environment variable or a secret store instead. Deleting the line is not enough once it was committed: the value stays in git history, so treat it as leaked.
8. **High** · Code scan: Hard-coded secret in "current_password" — `tests/Http/AccountHttpTest.php:88`
   A random-looking value is assigned to "current_password", which looks like a password, token or key written directly in the file.
   **Fix:** Revoke or rotate it now, remove it from the code and load it from an environment variable or a secret store instead. Deleting the line is not enough once it was committed: the value stays in git history, so treat it as leaked.
9. **High** · Code scan: Hard-coded secret in "api_key" — `tests/Http/AssistantHttpTest.php:64`
   A random-looking value is assigned to "api_key", which looks like a password, token or key written directly in the file.
   **Fix:** Revoke or rotate it now, remove it from the code and load it from an environment variable or a secret store instead. Deleting the line is not enough once it was committed: the value stays in git history, so treat it as leaked.
10. **High** · Code scan: Hard-coded secret in "api_key" — `tests/Http/AssistantHttpTest.php:93`
   A random-looking value is assigned to "api_key", which looks like a password, token or key written directly in the file.
   **Fix:** Revoke or rotate it now, remove it from the code and load it from an environment variable or a secret store instead. Deleting the line is not enough once it was committed: the value stays in git history, so treat it as leaked.
11. **High** · Code scan: Hard-coded secret in "api_key" — `tests/Http/AssistantHttpTest.php:98`
   A random-looking value is assigned to "api_key", which looks like a password, token or key written directly in the file.
   **Fix:** Revoke or rotate it now, remove it from the code and load it from an environment variable or a secret store instead. Deleting the line is not enough once it was committed: the value stays in git history, so treat it as leaked.
12. **High** · Code scan: Hard-coded secret in "api_key" — `tests/Http/AssistantHttpTest.php:109`
   A random-looking value is assigned to "api_key", which looks like a password, token or key written directly in the file.
   **Fix:** Revoke or rotate it now, remove it from the code and load it from an environment variable or a secret store instead. Deleting the line is not enough once it was committed: the value stays in git history, so treat it as leaked.
13. **High** · Code scan: Hard-coded secret in "api_key" — `tests/Http/AssistantHttpTest.php:124`
   A random-looking value is assigned to "api_key", which looks like a password, token or key written directly in the file.
   **Fix:** Revoke or rotate it now, remove it from the code and load it from an environment variable or a secret store instead. Deleting the line is not enough once it was committed: the value stays in git history, so treat it as leaked.
14. **High** · Code scan: Hard-coded secret in "api_key" — `tests/Http/AssistantHttpTest.php:143`
   A random-looking value is assigned to "api_key", which looks like a password, token or key written directly in the file.
   **Fix:** Revoke or rotate it now, remove it from the code and load it from an environment variable or a secret store instead. Deleting the line is not enough once it was committed: the value stays in git history, so treat it as leaked.
15. **High** · Code scan: Hard-coded secret in "password" — `tests/Http/EmailHttpTest.php:106`
   A random-looking value is assigned to "password", which looks like a password, token or key written directly in the file.
   **Fix:** Revoke or rotate it now, remove it from the code and load it from an environment variable or a secret store instead. Deleting the line is not enough once it was committed: the value stays in git history, so treat it as leaked.
16. **High** · Code scan: Hard-coded secret in "password" — `tests/Http/EmailHttpTest.php:108`
   A random-looking value is assigned to "password", which looks like a password, token or key written directly in the file.
   **Fix:** Revoke or rotate it now, remove it from the code and load it from an environment variable or a secret store instead. Deleting the line is not enough once it was committed: the value stays in git history, so treat it as leaked.
17. **High** · Code scan: Hard-coded secret in "access_token" — `tests/Http/GoogleConnectionTest.php:42`
   A random-looking value is assigned to "access_token", which looks like a password, token or key written directly in the file.
   **Fix:** Revoke or rotate it now, remove it from the code and load it from an environment variable or a secret store instead. Deleting the line is not enough once it was committed: the value stays in git history, so treat it as leaked.
18. **High** · Code scan: Hard-coded secret in "client_secret" — `tests/Http/GoogleConnectionTest.php:66`
   A random-looking value is assigned to "client_secret", which looks like a password, token or key written directly in the file.
   **Fix:** Revoke or rotate it now, remove it from the code and load it from an environment variable or a secret store instead. Deleting the line is not enough once it was committed: the value stays in git history, so treat it as leaked.
19. **High** · Code scan: Hard-coded secret in "access_token" — `tests/Http/GoogleConnectionTest.php:187`
   A random-looking value is assigned to "access_token", which looks like a password, token or key written directly in the file.
   **Fix:** Revoke or rotate it now, remove it from the code and load it from an environment variable or a secret store instead. Deleting the line is not enough once it was committed: the value stays in git history, so treat it as leaked.
20. **High** · Code scan: Hard-coded secret in "password" — `tests/Http/InvitationSignupHttpTest.php:48`
   A random-looking value is assigned to "password", which looks like a password, token or key written directly in the file.
   **Fix:** Revoke or rotate it now, remove it from the code and load it from an environment variable or a secret store instead. Deleting the line is not enough once it was committed: the value stays in git history, so treat it as leaked.
21. **High** · Code scan: Hard-coded secret in "password_confirmation" — `tests/Http/InvitationSignupHttpTest.php:49`
   A random-looking value is assigned to "password_confirmation", which looks like a password, token or key written directly in the file.
   **Fix:** Revoke or rotate it now, remove it from the code and load it from an environment variable or a secret store instead. Deleting the line is not enough once it was committed: the value stays in git history, so treat it as leaked.
22. **High** · Code scan: Hard-coded secret in "password" — `tests/Http/InvitationSignupHttpTest.php:87`
   A random-looking value is assigned to "password", which looks like a password, token or key written directly in the file.
   **Fix:** Revoke or rotate it now, remove it from the code and load it from an environment variable or a secret store instead. Deleting the line is not enough once it was committed: the value stays in git history, so treat it as leaked.
23. **High** · Code scan: Hard-coded secret in "password" — `tests/Http/InvitationSignupHttpTest.php:91`
   A random-looking value is assigned to "password", which looks like a password, token or key written directly in the file.
   **Fix:** Revoke or rotate it now, remove it from the code and load it from an environment variable or a secret store instead. Deleting the line is not enough once it was committed: the value stays in git history, so treat it as leaked.
24. **High** · Code scan: Hard-coded secret in "password" — `tests/Http/InvitationSignupHttpTest.php:100`
   A random-looking value is assigned to "password", which looks like a password, token or key written directly in the file.
   **Fix:** Revoke or rotate it now, remove it from the code and load it from an environment variable or a secret store instead. Deleting the line is not enough once it was committed: the value stays in git history, so treat it as leaked.
25. **High** · Code scan: Hard-coded secret in "password" — `tests/Http/InvitationSignupHttpTest.php:105`
   A random-looking value is assigned to "password", which looks like a password, token or key written directly in the file.
   **Fix:** Revoke or rotate it now, remove it from the code and load it from an environment variable or a secret store instead. Deleting the line is not enough once it was committed: the value stays in git history, so treat it as leaked.
26. **High** · Code scan: Hard-coded secret in "password" — `tests/Http/InvitationSignupHttpTest.php:120`
   A random-looking value is assigned to "password", which looks like a password, token or key written directly in the file.
   **Fix:** Revoke or rotate it now, remove it from the code and load it from an environment variable or a secret store instead. Deleting the line is not enough once it was committed: the value stays in git history, so treat it as leaked.
27. **High** · Code scan: Hard-coded secret in "password" — `tests/Http/MembersHttpTest.php:76`
   A random-looking value is assigned to "password", which looks like a password, token or key written directly in the file.
   **Fix:** Revoke or rotate it now, remove it from the code and load it from an environment variable or a secret store instead. Deleting the line is not enough once it was committed: the value stays in git history, so treat it as leaked.
28. **High** · Code scan: Hard-coded secret in "password" — `tests/Http/MembersHttpTest.php:83`
   A random-looking value is assigned to "password", which looks like a password, token or key written directly in the file.
   **Fix:** Revoke or rotate it now, remove it from the code and load it from an environment variable or a secret store instead. Deleting the line is not enough once it was committed: the value stays in git history, so treat it as leaked.
29. **High** · Code scan: Hard-coded secret in "password" — `tests/Http/MfaFlowTest.php:103`
   A random-looking value is assigned to "password", which looks like a password, token or key written directly in the file.
   **Fix:** Revoke or rotate it now, remove it from the code and load it from an environment variable or a secret store instead. Deleting the line is not enough once it was committed: the value stays in git history, so treat it as leaked.
30. **High** · Code scan: Hard-coded secret in "token" — `tests/Integration/AiReadinessPersistenceTest.php:29`
   A random-looking value is assigned to "token", which looks like a password, token or key written directly in the file.
   **Fix:** Revoke or rotate it now, remove it from the code and load it from an environment variable or a secret store instead. Deleting the line is not enough once it was committed: the value stays in git history, so treat it as leaked.
31. **High** · Code scan: Hard-coded secret in "token" — `tests/TenantIsolation/AiReadinessIsolationTest.php:24`
   A random-looking value is assigned to "token", which looks like a password, token or key written directly in the file.
   **Fix:** Revoke or rotate it now, remove it from the code and load it from an environment variable or a secret store instead. Deleting the line is not enough once it was committed: the value stays in git history, so treat it as leaked.
32. **High** · Code scan: Hard-coded secret in "password" — `tests/TenantIsolation/InvitationSignupIsolationTest.php:26`
   A random-looking value is assigned to "password", which looks like a password, token or key written directly in the file.
   **Fix:** Revoke or rotate it now, remove it from the code and load it from an environment variable or a secret store instead. Deleting the line is not enough once it was committed: the value stays in git history, so treat it as leaked.
33. **High** · Code scan: Hard-coded secret in "password" — `tests/TenantIsolation/InvitationSignupIsolationTest.php:53`
   A random-looking value is assigned to "password", which looks like a password, token or key written directly in the file.
   **Fix:** Revoke or rotate it now, remove it from the code and load it from an environment variable or a secret store instead. Deleting the line is not enough once it was committed: the value stays in git history, so treat it as leaked.
34. **Low (warning)** · Server: Security updates were installed that need a reboot.
   Expected: No reboot pending.
   **Fix:** Reboot the server during a quiet moment: from your cloud provider's console for a server OpsCrew created, or with `sudo reboot` from your own login on a server you already had. The app's containers start again on their own.

## Code scan

| Severity | Findings |
|---|---|
| Critical | 0 |
| High | 33 |
| Medium | 0 |
| Low | 0 |
| Info | 0 |

| Severity | Finding | Where | Rule |
|---|---|---|---|
| High | Hard-coded secret in "token_endpoint_auth_methods_supported" | `app/Modules/Mcp/OAuth/OAuthServer.php:104` | `secrets/generic-high-entropy` |
| High | Hard-coded secret in "PRODUCT_TOKEN" | `app/Modules/SiteAudit/Crawler/SiteCrawler.php:23` | `secrets/generic-high-entropy` |
| High | Hard-coded secret in "new_password" | `tests/Http/AccountHttpTest.php:61` | `secrets/generic-high-entropy` |
| High | Hard-coded secret in "current_password" | `tests/Http/AccountHttpTest.php:63` | `secrets/generic-high-entropy` |
| High | Hard-coded secret in "current_password" | `tests/Http/AccountHttpTest.php:65` | `secrets/generic-high-entropy` |
| High | Hard-coded secret in "current_password" | `tests/Http/AccountHttpTest.php:68` | `secrets/generic-high-entropy` |
| High | Hard-coded secret in "new_password" | `tests/Http/AccountHttpTest.php:86` | `secrets/generic-high-entropy` |
| High | Hard-coded secret in "current_password" | `tests/Http/AccountHttpTest.php:88` | `secrets/generic-high-entropy` |
| High | Hard-coded secret in "api_key" | `tests/Http/AssistantHttpTest.php:64` | `secrets/generic-high-entropy` |
| High | Hard-coded secret in "api_key" | `tests/Http/AssistantHttpTest.php:93` | `secrets/generic-high-entropy` |
| High | Hard-coded secret in "api_key" | `tests/Http/AssistantHttpTest.php:98` | `secrets/generic-high-entropy` |
| High | Hard-coded secret in "api_key" | `tests/Http/AssistantHttpTest.php:109` | `secrets/generic-high-entropy` |
| High | Hard-coded secret in "api_key" | `tests/Http/AssistantHttpTest.php:124` | `secrets/generic-high-entropy` |
| High | Hard-coded secret in "api_key" | `tests/Http/AssistantHttpTest.php:143` | `secrets/generic-high-entropy` |
| High | Hard-coded secret in "password" | `tests/Http/EmailHttpTest.php:106` | `secrets/generic-high-entropy` |
| High | Hard-coded secret in "password" | `tests/Http/EmailHttpTest.php:108` | `secrets/generic-high-entropy` |
| High | Hard-coded secret in "access_token" | `tests/Http/GoogleConnectionTest.php:42` | `secrets/generic-high-entropy` |
| High | Hard-coded secret in "client_secret" | `tests/Http/GoogleConnectionTest.php:66` | `secrets/generic-high-entropy` |
| High | Hard-coded secret in "access_token" | `tests/Http/GoogleConnectionTest.php:187` | `secrets/generic-high-entropy` |
| High | Hard-coded secret in "password" | `tests/Http/InvitationSignupHttpTest.php:48` | `secrets/generic-high-entropy` |
| High | Hard-coded secret in "password_confirmation" | `tests/Http/InvitationSignupHttpTest.php:49` | `secrets/generic-high-entropy` |
| High | Hard-coded secret in "password" | `tests/Http/InvitationSignupHttpTest.php:87` | `secrets/generic-high-entropy` |
| High | Hard-coded secret in "password" | `tests/Http/InvitationSignupHttpTest.php:91` | `secrets/generic-high-entropy` |
| High | Hard-coded secret in "password" | `tests/Http/InvitationSignupHttpTest.php:100` | `secrets/generic-high-entropy` |
| High | Hard-coded secret in "password" | `tests/Http/InvitationSignupHttpTest.php:105` | `secrets/generic-high-entropy` |
| High | Hard-coded secret in "password" | `tests/Http/InvitationSignupHttpTest.php:120` | `secrets/generic-high-entropy` |
| High | Hard-coded secret in "password" | `tests/Http/MembersHttpTest.php:76` | `secrets/generic-high-entropy` |
| High | Hard-coded secret in "password" | `tests/Http/MembersHttpTest.php:83` | `secrets/generic-high-entropy` |
| High | Hard-coded secret in "password" | `tests/Http/MfaFlowTest.php:103` | `secrets/generic-high-entropy` |
| High | Hard-coded secret in "token" | `tests/Integration/AiReadinessPersistenceTest.php:29` | `secrets/generic-high-entropy` |
| High | Hard-coded secret in "token" | `tests/TenantIsolation/AiReadinessIsolationTest.php:24` | `secrets/generic-high-entropy` |
| High | Hard-coded secret in "password" | `tests/TenantIsolation/InvitationSignupIsolationTest.php:26` | `secrets/generic-high-entropy` |
| High | Hard-coded secret in "password" | `tests/TenantIsolation/InvitationSignupIsolationTest.php:53` | `secrets/generic-high-entropy` |

Not run: osv (skipped: No supported lockfile found (package-lock.json, npm-shrinkwrap.json, pnpm-lock.yaml, yarn.lock, requirements*.txt, poetry.lock, uv.lock).); gitleaks (skipped: gitleaks is not installed. Install it to catch more kinds of leaked keys and tokens: `brew install gitleaks` on macOS or Linux, otherwise see https://github.com/gitleaks/gitleaks#installing); osv-scanner (skipped: osv-scanner is not installed. Install it to check dependencies in more lockfile formats against the OSV database: `brew install osv-scanner` on macOS or Linux, otherwise see https://google.github.io/osv-scanner/installation/); trivy (skipped: trivy is not installed. Install it to check Dockerfiles and infrastructure code against more misconfiguration rules: `brew install trivy` on macOS or Linux, otherwise see https://trivy.dev/latest/getting-started/installation/).

## Infrastructure policies

| Result | Severity | Policy | Details |
|---|---|---|---|
| Pass | High | Server has a firewall | The server is attached to a Hetzner Cloud firewall. |
| Pass | High | Server uses SSH keys | The server is created with an SSH key, so no root password is emailed or used. |
| Pass | Medium | Server is protected against accidental deletion | Delete and rebuild protection are on. |
| Pass | High | Automated backups are on | Hetzner automated backups are enabled as the plan requires. |
| Pass | Critical | Only SSH and web ports are open to the internet | Only ports 22, 80 and 443 accept traffic from anywhere. |
| Pass | Medium | Web ports accept only Cloudflare | Ports 80 and 443 accept only Cloudflare's IP ranges, so attackers cannot bypass the proxy. |
| Pass | High | SSH is open only as planned | SSH (port 22) is open to the internet as the plan allows; only key logins are accepted. |
| Pass | Low | DNS record goes through Cloudflare | seocc.opscrew.dev is proxied through Cloudflare (hides the server IP, adds the WAF). |
| Pass | Low | DNS record goes through Cloudflare | seocc.opscrew.dev is proxied through Cloudflare (hides the server IP, adds the WAF). |

## Server hardening

Checked over SSH as the unprivileged `deploy` user (no sudo).

| Result | Severity | Check | Details |
|---|---|---|---|
| Pass | High | Server setup (cloud-init) finished | Cloud-init finished the OpsCrew setup. |
| Pass | High | SSH allows keys only, no root login | SSH accepts keys only and root cannot log in. |
| Pass | Medium | Brute-force protection (fail2ban) is running | fail2ban is active. |
| Pass | Medium | Automatic security updates are enabled | unattended-upgrades is enabled. |
| Pass | Medium | Host firewall (ufw) is enabled | ufw is enabled. |
| Pass | High | Only SSH and web ports listen on public addresses | Only ports 22, 80 and 443 listen on public addresses. |
| Pass | Critical | Docker API is not exposed over TCP | The Docker API is only reachable through its local socket. |
| Pass | Medium | Disk has free space | The disk is 14% full. |
| Warn | Low | No reboot pending | Security updates were installed that need a reboot. |
| Pass | Low | No security updates waiting | No security updates are waiting. |
| Pass | Critical | MySQL (mysql) is reachable only inside the server | MySQL (mysql) publishes no port; only the app's containers reach it. |
| Pass | High | MySQL (mysql) requires its login | MySQL (mysql) requires its login: MYSQL_PASSWORD and MYSQL_ROOT_PASSWORD are set. |
| Pass | High | seocc.opscrew.dev accepts only Cloudflare on the server (client certificate required, origin certificate served) | seocc.opscrew.dev refuses connections without Cloudflare's client certificate and serves the app's Cloudflare origin certificate. |
| Pass | Medium | The server's proxy refuses hostnames it does not serve | The server's proxy refuses a TLS connection for a hostname no site on it serves. |

## Outside probes

Connections attempted from this machine to the server.

| Result | Severity | Check | Details |
|---|---|---|---|
| Pass | Info | SSH (port 22) is reachable | Port 22 answers; deploys from GitHub Actions can connect. |
| Pass | Info | Web port 80 only accepts Cloudflare | Port 80 is filtered for visitors that are not Cloudflare, as intended. |
| Pass | Info | Web port 443 only accepts Cloudflare | Port 443 is filtered for visitors that are not Cloudflare, as intended. |
| Pass | Critical | Port 2375 (Docker API) is closed to the internet | Port 2375 is not reachable from the internet. |
| Pass | Critical | Port 3000 (Node.js development server) is closed to the internet | Port 3000 is not reachable from the internet. |
| Pass | Critical | Port 3306 (MySQL) is closed to the internet | Port 3306 is not reachable from the internet. |
| Pass | Critical | Port 5432 (PostgreSQL) is closed to the internet | Port 5432 is not reachable from the internet. |
| Pass | Critical | Port 5672 (RabbitMQ) is closed to the internet | Port 5672 is not reachable from the internet. |
| Pass | Critical | Port 6379 (Redis/Valkey) is closed to the internet | Port 6379 is not reachable from the internet. |
| Pass | Critical | Port 8000 (app server) is closed to the internet | Port 8000 is not reachable from the internet. |
| Pass | Critical | Port 8080 (app server) is closed to the internet | Port 8080 is not reachable from the internet. |
| Pass | Critical | Port 9200 (Elasticsearch) is closed to the internet | Port 9200 is not reachable from the internet. |
| Pass | Critical | Port 27017 (MongoDB) is closed to the internet | Port 27017 is not reachable from the internet. |
| Pass | High | SSH refuses password logins | The server only accepts SSH keys. |

## TLS and the secrets copy

The app's Cloudflare certificates and settings, and where its secrets copy is committed.

| Result | Severity | Check | Details |
|---|---|---|---|
| Pass | Medium | The app's Cloudflare origin and client certificates are valid for 30 days or more | Valid: the origin certificate until 2041-11-04 and the client certificate until 2041-11-04. |
| Pass | Low | The zone accepts TLS 1.2 and newer only | The zone's minimum TLS version is 1.2. |

---

Generated by OpsCrew 0.2.5. Run `opscrew secure` to refresh it. No secret values are included in this report.
