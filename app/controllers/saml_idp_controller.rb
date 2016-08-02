class SamlIdpController < SamlIdp::IdpController
  # layout 'saml_idp'

  # def new
  #   raise params.inspcet
  # end

  def idp_authenticate(email, password)
    true
  end

  def idp_make_saml_response(user)
    encode_SAMLResponse("peke@example.com")
  end

end
