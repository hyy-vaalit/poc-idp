class SamlIdpController < SamlIdp::IdpController

  def idp_authenticate(email, not_acually_password)
    {
      email: email,
      student_id: not_acually_password
    }
  end

  def idp_make_saml_response(user)
    # dummy response with student number
    encode_SAMLResponse("urn:schac:personalUniqueCode:fi:yliopisto.fi:#{user[:student_id]}")
  end

end
