Select 
Case TO_STRING(crypt-protocol)
	When '1' Then 'SP_PROT_PCT1_SERVER' 
	When '2' Then 'SP_PROT_PCT1_CLIENT' 
	When '4' Then 'SP_PROT_SSL2_SERVER' 
	When '8' Then 'SP_PROT_SSL2_CLIENT' 
	When '10' Then 'SP_PROT_SSL3_SERVER' 
	When '20' Then 'SP_PROT_SSL3_CLIENT' 
	When '40' Then 'SP_PROT_TLS1_SERVER' 
	When '80' Then 'SP_PROT_TLS1_CLIENT' 
	When '100' Then 'SP_PROT_TLS1_1_SERVER' 
	When '200' Then 'SP_PROT_TLS1_1_CLIENT' 
	When '400' Then 'SP_PROT_TLS1_2_SERVER' 
	When '800' Then 'SP_PROT_TLS1_2_CLIENT' 
End as Protocol, 
Case TO_STRING(crypt-cipher)
	When '2000' Then 'CALG_NO_SIGN'
	When '2200' Then 'CALG_DSS_SIGN'
	When '2203' Then 'CALG_ECDSA'
	When '2400' Then 'CALG_RSA_SIGN'
	When '4c01' Then 'CALG_SSL3_MASTER'
	When '4c02' Then 'CALG_SCHANNEL_MASTER_HASH'
	When '4c03' Then 'CALG_SCHANNEL_MAC_KEY'
	When '4c04' Then 'CALG_PCT1_MASTER'
	When '4c05' Then 'CALG_SSL2_MASTER'
	When '4c06' Then 'CALG_TLS1_MASTER'
	When '4c07' Then 'CALG_SCHANNEL_ENC_KEY'
	When '6601' Then 'CALG_DES'
	When '6602' Then 'CALG_RC2'
	When '6603' Then 'CALG_3DES'
	When '6604' Then 'CALG_DESX'
	When '6609' Then 'CALG_3DES_112'
	When '660a' Then 'CALG_SKIPJACK'
	When '660b' Then 'CALG_TEK'
	When '660c' Then 'CALG_CYLINK_MEK'
	When '660d' Then 'CALG_RC5'
	When '660e' Then 'CALG_AES_128'
	When '660f' Then 'CALG_AES_192'
	When '6610' Then 'CALG_AES_256'
	When '6611' Then 'CALG_AES'
	When '6801' Then 'CALG_RC4'
	When '6802' Then 'CALG_SEAL'
	When '8001' Then 'CALG_MD2'
	When '8002' Then 'CALG_MD4'
	When '8003' Then 'CALG_MD5'
	When '8004' Then 'CALG_SHA'
	When '8004' Then 'CALG_SHA1'
	When '8005' Then 'CALG_MAC'
	When '8008' Then 'CALG_SSL3_SHAMD5'
	When '8009' Then 'CALG_HMAC'
	When '800a' Then 'CALG_TLS1PRF'
	When '800b' Then 'CALG_HASH_REPLACE_OWF'
	When '800c' Then 'CALG_SHA_256'
	When '800d' Then 'CALG_SHA_384'
	When '800e' Then 'CALG_SHA_512'
	When 'a001' Then 'CALG_ECMQV'
	When 'a003' Then 'CALG_HUGHES_MD5'
	When 'a400' Then 'CALG_RSA_KEYX'
	When 'aa01' Then 'CALG_DH_SF'
	When 'aa02' Then 'CALG_DH_EPHEM'
	When 'aa03' Then 'CALG_AGREEDKEY_ANY'
	When 'aa04' Then 'CALG_KEA_KEYX'
	When 'aa05' Then 'CALG_ECDH'
	When 'ae06' Then 'CALG_ECDH_EPHEM'
	When 'fffffffe' Then 'CALG_OID_INFO_PARAMETERS'
	When 'ffffffff' Then 'CALG_OID_INFO_CNG_ONLY'
End as Cipher,
Case TO_STRING(crypt-hash)
	When '2000' Then 'CALG_NO_SIGN'
	When '2200' Then 'CALG_DSS_SIGN'
	When '2203' Then 'CALG_ECDSA'
	When '2400' Then 'CALG_RSA_SIGN'
	When '4c01' Then 'CALG_SSL3_MASTER'
	When '4c02' Then 'CALG_SCHANNEL_MASTER_HASH'
	When '4c03' Then 'CALG_SCHANNEL_MAC_KEY'
	When '4c04' Then 'CALG_PCT1_MASTER'
	When '4c05' Then 'CALG_SSL2_MASTER'
	When '4c06' Then 'CALG_TLS1_MASTER'
	When '4c07' Then 'CALG_SCHANNEL_ENC_KEY'
	When '6601' Then 'CALG_DES'
	When '6602' Then 'CALG_RC2'
	When '6603' Then 'CALG_3DES'
	When '6604' Then 'CALG_DESX'
	When '6609' Then 'CALG_3DES_112'
	When '660a' Then 'CALG_SKIPJACK'
	When '660b' Then 'CALG_TEK'
	When '660c' Then 'CALG_CYLINK_MEK'
	When '660d' Then 'CALG_RC5'
	When '660e' Then 'CALG_AES_128'
	When '660f' Then 'CALG_AES_192'
	When '6610' Then 'CALG_AES_256'
	When '6611' Then 'CALG_AES'
	When '6801' Then 'CALG_RC4'
	When '6802' Then 'CALG_SEAL'
	When '8001' Then 'CALG_MD2'
	When '8002' Then 'CALG_MD4'
	When '8003' Then 'CALG_MD5'
	When '8004' Then 'CALG_SHA'
	When '8004' Then 'CALG_SHA1'
	When '8005' Then 'CALG_MAC'
	When '8008' Then 'CALG_SSL3_SHAMD5'
	When '8009' Then 'CALG_HMAC'
	When '800a' Then 'CALG_TLS1PRF'
	When '800b' Then 'CALG_HASH_REPLACE_OWF'
	When '800c' Then 'CALG_SHA_256'
	When '800d' Then 'CALG_SHA_384'
	When '800e' Then 'CALG_SHA_512'
	When 'a001' Then 'CALG_ECMQV'
	When 'a003' Then 'CALG_HUGHES_MD5'
	When 'a400' Then 'CALG_RSA_KEYX'
	When 'aa01' Then 'CALG_DH_SF'
	When 'aa02' Then 'CALG_DH_EPHEM'
	When 'aa03' Then 'CALG_AGREEDKEY_ANY'
	When 'aa04' Then 'CALG_KEA_KEYX'
	When 'aa05' Then 'CALG_ECDH'
	When 'ae06' Then 'CALG_ECDH_EPHEM'
	When 'fffffffe' Then 'CALG_OID_INFO_PARAMETERS'
	When 'ffffffff' Then 'CALG_OID_INFO_CNG_ONLY'
End as Hash,
Case TO_STRING(crypt-keyexchange)
	When '2000' Then 'CALG_NO_SIGN'
	When '2200' Then 'CALG_DSS_SIGN'
	When '2203' Then 'CALG_ECDSA'
	When '2400' Then 'CALG_RSA_SIGN'
	When '4c01' Then 'CALG_SSL3_MASTER'
	When '4c02' Then 'CALG_SCHANNEL_MASTER_HASH'
	When '4c03' Then 'CALG_SCHANNEL_MAC_KEY'
	When '4c04' Then 'CALG_PCT1_MASTER'
	When '4c05' Then 'CALG_SSL2_MASTER'
	When '4c06' Then 'CALG_TLS1_MASTER'
	When '4c07' Then 'CALG_SCHANNEL_ENC_KEY'
	When '6601' Then 'CALG_DES'
	When '6602' Then 'CALG_RC2'
	When '6603' Then 'CALG_3DES'
	When '6604' Then 'CALG_DESX'
	When '6609' Then 'CALG_3DES_112'
	When '660a' Then 'CALG_SKIPJACK'
	When '660b' Then 'CALG_TEK'
	When '660c' Then 'CALG_CYLINK_MEK'
	When '660d' Then 'CALG_RC5'
	When '660e' Then 'CALG_AES_128'
	When '660f' Then 'CALG_AES_192'
	When '6610' Then 'CALG_AES_256'
	When '6611' Then 'CALG_AES'
	When '6801' Then 'CALG_RC4'
	When '6802' Then 'CALG_SEAL'
	When '8001' Then 'CALG_MD2'
	When '8002' Then 'CALG_MD4'
	When '8003' Then 'CALG_MD5'
	When '8004' Then 'CALG_SHA'
	When '8004' Then 'CALG_SHA1'
	When '8005' Then 'CALG_MAC'
	When '8008' Then 'CALG_SSL3_SHAMD5'
	When '8009' Then 'CALG_HMAC'
	When '800a' Then 'CALG_TLS1PRF'
	When '800b' Then 'CALG_HASH_REPLACE_OWF'
	When '800c' Then 'CALG_SHA_256'
	When '800d' Then 'CALG_SHA_384'
	When '800e' Then 'CALG_SHA_512'
	When 'a001' Then 'CALG_ECMQV'
	When 'a003' Then 'CALG_HUGHES_MD5'
	When 'a400' Then 'CALG_RSA_KEYX'
	When 'aa01' Then 'CALG_DH_SF'
	When 'aa02' Then 'CALG_DH_EPHEM'
	When 'aa03' Then 'CALG_AGREEDKEY_ANY'
	When 'aa04' Then 'CALG_KEA_KEYX'
	When 'aa05' Then 'CALG_ECDH'
	When 'ae06' Then 'CALG_ECDH_EPHEM'
	When 'fffffffe' Then 'CALG_OID_INFO_PARAMETERS'
	When 'ffffffff' Then 'CALG_OID_INFO_CNG_ONLY'
End as KeyExchange
From u_ex*.log 
