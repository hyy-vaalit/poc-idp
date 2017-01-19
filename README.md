# Proof-of-Concept Identity Provider for SAML Authentication

Proof-of-Concept Identity Provider server for testing SAML authentication locally.

Usage:
* `rails s`
  * `PORT=4000` is defined in `.env`
* Point your local SAML Service Provider to `http://localhost:4000/saml/auth`

Example configuration for the SAML Service Provider:
```
SAML_IDP_SSO_TARGET_URL="http://localhost:4000/saml/auth"
SAML_IDP_ENTITY_ID="http://localhost:4000/saml/auth"
SAML_ASSERTION_CONSUMER_SERVICE_URL="http://localhost:3000/haka/auth/consume"
SAML_MY_ENTITY_ID="http://localhost:3000/"
SAML_IDP_CERT_FINGERPRINT="9E:65:2E:03:06:8D:80:F2:86:C7:6C:77:A1:D9:14:97:0A:4D:F4:4D"
HAKA_STUDENT_NUMBER_FIELD="http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress"
```

SAML_IDP_CERT_FINGERPRINT above is for the default cert included in this project.
