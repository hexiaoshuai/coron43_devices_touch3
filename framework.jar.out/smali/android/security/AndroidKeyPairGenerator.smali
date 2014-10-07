.class public Landroid/security/AndroidKeyPairGenerator;
.super Ljava/security/KeyPairGeneratorSpi;
.source "AndroidKeyPairGenerator.java"


# instance fields
.field private mKeyStore:Landroid/security/KeyStore;

.field private mSpec:Landroid/security/KeyPairGeneratorSpec;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 15

    .prologue
    const/4 v14, -0x1

    .line 74
    iget-object v11, p0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    if-eqz v11, :cond_0

    iget-object v11, p0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    if-nez v11, :cond_1

    .line 75
    :cond_0
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Must call initialize with an android.security.KeyPairGeneratorSpec first"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 79
    :cond_1
    iget-object v11, p0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v11}, Landroid/security/KeyPairGeneratorSpec;->getFlags()I

    move-result v11

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_2

    iget-object v11, p0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v11}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v11

    sget-object v12, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v11, v12, :cond_2

    .line 81
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Android keystore must be in initialized and unlocked state if encryption is required"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 86
    :cond_2
    iget-object v11, p0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v11}, Landroid/security/KeyPairGeneratorSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, alias:Ljava/lang/String;
    iget-object v11, p0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {v11, v0}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    .line 90
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "USRPKEY_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 91
    .local v8, privateKeyAlias:Ljava/lang/String;
    iget-object v11, p0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    iget-object v12, p0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v12}, Landroid/security/KeyPairGeneratorSpec;->getFlags()I

    move-result v12

    invoke-virtual {v11, v8, v14, v12}, Landroid/security/KeyStore;->generate(Ljava/lang/String;II)Z

    move-result v11

    if-nez v11, :cond_3

    .line 92
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "could not generate key in keystore"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 96
    :cond_3
    const-string v11, "keystore"

    invoke-static {v11}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLEngine;->getInstance(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLEngine;

    move-result-object v5

    .line 98
    .local v5, engine:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLEngine;
    :try_start_0
    invoke-virtual {v5, v8}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLEngine;->getPrivateKeyById(Ljava/lang/String;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 103
    .local v7, privKey:Ljava/security/PrivateKey;
    iget-object v11, p0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v11, v8}, Landroid/security/KeyStore;->getPubkey(Ljava/lang/String;)[B

    move-result-object v10

    .line 107
    .local v10, pubKeyBytes:[B
    :try_start_1
    const-string v11, "RSA"

    invoke-static {v11}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v6

    .line 108
    .local v6, keyFact:Ljava/security/KeyFactory;
    new-instance v11, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v11, v10}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v6, v11}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v9

    .line 115
    .local v9, pubKey:Ljava/security/PublicKey;
    new-instance v3, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;-><init>()V

    .line 116
    .local v3, certGen:Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;
    invoke-virtual {v3, v9}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setPublicKey(Ljava/security/PublicKey;)V

    .line 117
    iget-object v11, p0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v11}, Landroid/security/KeyPairGeneratorSpec;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setSerialNumber(Ljava/math/BigInteger;)V

    .line 118
    iget-object v11, p0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v11}, Landroid/security/KeyPairGeneratorSpec;->getSubjectDN()Ljavax/security/auth/x500/X500Principal;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setSubjectDN(Ljavax/security/auth/x500/X500Principal;)V

    .line 119
    iget-object v11, p0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v11}, Landroid/security/KeyPairGeneratorSpec;->getSubjectDN()Ljavax/security/auth/x500/X500Principal;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setIssuerDN(Ljavax/security/auth/x500/X500Principal;)V

    .line 120
    iget-object v11, p0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v11}, Landroid/security/KeyPairGeneratorSpec;->getStartDate()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setNotBefore(Ljava/util/Date;)V

    .line 121
    iget-object v11, p0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v11}, Landroid/security/KeyPairGeneratorSpec;->getEndDate()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setNotAfter(Ljava/util/Date;)V

    .line 122
    const-string/jumbo v11, "sha1WithRSA"

    invoke-virtual {v3, v11}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setSignatureAlgorithm(Ljava/lang/String;)V

    .line 126
    :try_start_2
    invoke-virtual {v3, v7}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generate(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v1

    .line 134
    .local v1, cert:Ljava/security/cert/X509Certificate;
    :try_start_3
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B
    :try_end_3
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v2

    .line 140
    .local v2, certBytes:[B
    iget-object v11, p0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "USRCERT_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v13}, Landroid/security/KeyPairGeneratorSpec;->getFlags()I

    move-result v13

    invoke-virtual {v11, v12, v2, v14, v13}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v11

    if-nez v11, :cond_4

    .line 142
    iget-object v11, p0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {v11, v0}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    .line 143
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Can\'t store certificate in AndroidKeyStore"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 99
    .end local v1           #cert:Ljava/security/cert/X509Certificate;
    .end local v2           #certBytes:[B
    .end local v3           #certGen:Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;
    .end local v6           #keyFact:Ljava/security/KeyFactory;
    .end local v7           #privKey:Ljava/security/PrivateKey;
    .end local v9           #pubKey:Ljava/security/PublicKey;
    .end local v10           #pubKeyBytes:[B
    :catch_0
    move-exception v4

    .line 100
    .local v4, e:Ljava/security/InvalidKeyException;
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "Can\'t get key"

    invoke-direct {v11, v12, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 109
    .end local v4           #e:Ljava/security/InvalidKeyException;
    .restart local v7       #privKey:Ljava/security/PrivateKey;
    .restart local v10       #pubKeyBytes:[B
    :catch_1
    move-exception v4

    .line 110
    .local v4, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Can\'t instantiate RSA key generator"

    invoke-direct {v11, v12, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 111
    .end local v4           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v4

    .line 112
    .local v4, e:Ljava/security/spec/InvalidKeySpecException;
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "keystore returned invalid key encoding"

    invoke-direct {v11, v12, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 127
    .end local v4           #e:Ljava/security/spec/InvalidKeySpecException;
    .restart local v3       #certGen:Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;
    .restart local v6       #keyFact:Ljava/security/KeyFactory;
    .restart local v9       #pubKey:Ljava/security/PublicKey;
    :catch_3
    move-exception v4

    .line 128
    .local v4, e:Ljava/lang/Exception;
    iget-object v11, p0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {v11, v0}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    .line 129
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Can\'t generate certificate"

    invoke-direct {v11, v12, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 135
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v1       #cert:Ljava/security/cert/X509Certificate;
    :catch_4
    move-exception v4

    .line 136
    .local v4, e:Ljava/security/cert/CertificateEncodingException;
    iget-object v11, p0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {v11, v0}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    .line 137
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Can\'t get encoding of certificate"

    invoke-direct {v11, v12, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 146
    .end local v4           #e:Ljava/security/cert/CertificateEncodingException;
    .restart local v2       #certBytes:[B
    :cond_4
    new-instance v11, Ljava/security/KeyPair;

    invoke-direct {v11, v9, v7}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v11
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 2
    .parameter "keysize"
    .parameter "random"

    .prologue
    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot specify keysize with AndroidKeyPairGenerator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 3
    .parameter "params"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 157
    if-nez p1, :cond_0

    .line 158
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v2, "must supply params of type android.security.KeyPairGeneratorSpec"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 160
    :cond_0
    instance-of v1, p1, Landroid/security/KeyPairGeneratorSpec;

    if-nez v1, :cond_1

    .line 161
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v2, "params must be of type android.security.KeyPairGeneratorSpec"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object v0, p1

    .line 165
    check-cast v0, Landroid/security/KeyPairGeneratorSpec;

    .line 167
    .local v0, spec:Landroid/security/KeyPairGeneratorSpec;
    iput-object v0, p0, Landroid/security/AndroidKeyPairGenerator;->mSpec:Landroid/security/KeyPairGeneratorSpec;

    .line 168
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    iput-object v1, p0, Landroid/security/AndroidKeyPairGenerator;->mKeyStore:Landroid/security/KeyStore;

    .line 169
    return-void
.end method
