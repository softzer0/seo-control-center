variable "zone_id" {
  description = "Cloudflare zone id of the domain."
  type        = string
}

variable "domain" {
  description = "Hostname of the app, for example app.example.com."
  type        = string
}

variable "ipv4" {
  description = "Public IPv4 address of the server; null when the module makes no A record (ipv4_record false)."
  type        = string
  default     = null
}

variable "ipv6" {
  description = "Public IPv6 address of the server; null when it has none (then set ipv6_record to false)."
  type        = string
  default     = null
}

variable "ipv4_record" {
  description = "Create the A record. False for a server at home, whose address updater keeps the A and AAAA records itself."
  type        = bool
  default     = true
}

variable "ipv6_record" {
  description = "Create the AAAA record. A separate switch because it must be known when planning, and the IPv6 address of a server created in the same plan is not."
  type        = bool
  default     = true
}

variable "proxied" {
  description = "Send traffic through Cloudflare (hides the server IP, adds the WAF and caching)."
  type        = bool
  default     = true
}

variable "www" {
  description = "Also serve www.<domain>."
  type        = bool
  default     = false
}

variable "caa_issuers" {
  description = "Certificate authorities named in CAA records at the domain when it is not proxied; empty for an app on the zone apex."
  type        = list(string)
  default     = []
}
