# SSH
# 0-world\_wide\_web

This project is part of the **ALX System Engineering - DevOps** curriculum. It involves configuring DNS subdomains and creating a Bash script to audit DNS records.

## 📘 Task: World wide web

### Goal

Configure DNS for specific subdomains and create a Bash script to audit their DNS A records.

### DNS Configuration

Ensure the following subdomains are created for your domain:

| Subdomain | Points To      | Description         |
| --------- | -------------- | ------------------- |
| www       | IP of `lb-01`  | Website entry point |
| lb-01     | IP of `lb-01`  | Load balancer       |
| web-01    | IP of `web-01` | First web server    |
| web-02    | IP of `web-02` | Second web server   |

### ✅ Requirements

- Use `dig` to query DNS.
- Use `awk` to parse DNS response.
- Accept one or two script arguments:
  - 1st: domain name (required)
  - 2nd: subdomain (optional)
- Default to checking all 4 subdomains in a specific order when subdomain is not provided.

### 📜 Output Format

```
The subdomain [SUB_DOMAIN] is a [RECORD_TYPE] record and points to [DESTINATION]
```

### 🚀 Example Usage

```bash
$ ./0-world_wide_web holberton.online
The subdomain www is a A record and points to 54.210.47.110
The subdomain lb-01 is a A record and points to 54.210.47.110
The subdomain web-01 is a A record and points to 34.198.248.145
The subdomain web-02 is a A record and points to 54.89.38.100

$ ./0-world_wide_web holberton.online web-02
The subdomain web-02 is a A record and points to 54.89.38.100
```

### 💡 Notes

- Uses `dig` with `+noall +answer` to simplify parsing.
- `awk` is used to extract the record type and destination.
- The script disables shellcheck warning `SC2086`.

### 🗂 Repository

**GitHub repository:** `alx-system_engineering-devops`\
**Directory:** `0x10-https_ssl`\
**File:** `0-world_wide_web`

---

© ALX / Holberton School – DevOps Track

