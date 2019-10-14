.class Lcom/android/server/KeyProtector$KeyStore;
.super Ljava/lang/Object;
.source "KeyProtector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/KeyProtector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyStore"
.end annotation


# instance fields
.field private mKeyStore:Landroid/security/KeyStore;

.field private mUid:I


# direct methods
.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/KeyProtector$KeyStore;->mKeyStore:Landroid/security/KeyStore;

    iput p1, p0, Lcom/android/server/KeyProtector$KeyStore;->mUid:I

    return-void
.end method


# virtual methods
.method deleteSecretKey(Ljava/lang/String;I)Z
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    # invokes: Lcom/android/server/KeyProtector;->attach(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/android/server/KeyProtector;->access$000(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/KeyProtector$KeyStore;->mKeyStore:Landroid/security/KeyStore;

    iget v3, p0, Lcom/android/server/KeyProtector$KeyStore;->mUid:I

    invoke-static {v2, v1, v3}, Landroid/security/Credentials;->deleteLegacyKeyForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    move-result v2

    move v0, v2

    if-eqz v0, :cond_11

    goto :goto_2c

    :cond_11
    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to delete entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_28} :catch_28

    :catch_28
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2c
    return v0
.end method

.method exists(Ljava/lang/String;I)Z
    .registers 5

    # invokes: Lcom/android/server/KeyProtector;->attach(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/android/server/KeyProtector;->access$000(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/KeyProtector$KeyStore;->isSecretKeyEntry(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method getSecretKey(Ljava/lang/String;I)Ljavax/crypto/SecretKey;
    .registers 7

    # invokes: Lcom/android/server/KeyProtector;->attach(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/android/server/KeyProtector;->access$000(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/KeyProtector$KeyStore;->isSecretKeyEntry(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRSKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/KeyProtector$KeyStore;->mKeyStore:Landroid/security/KeyStore;

    iget v3, p0, Lcom/android/server/KeyProtector$KeyStore;->mUid:I

    invoke-static {v2, v1, v3}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;I)Landroid/security/keystore/AndroidKeyStoreKey;

    move-result-object v2

    check-cast v2, Landroid/security/keystore/AndroidKeyStoreSecretKey;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_25} :catch_26

    return-object v2

    :catch_26
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2a
    const/4 v1, 0x0

    return-object v1
.end method

.method isSecretKeyEntry(Ljava/lang/String;)Z
    .registers 5

    if-eqz p1, :cond_1f

    iget-object v0, p0, Lcom/android/server/KeyProtector$KeyStore;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRSKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/server/KeyProtector$KeyStore;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return v0
.end method

.method setSecretKey(Ljava/lang/String;I)Z
    .registers 28

    move-object/from16 v1, p0

    const/4 v0, 0x0

    move v2, v0

    :try_start_4
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v3

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v4}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    new-instance v4, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-virtual {v3}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    invoke-virtual {v4}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v5

    invoke-interface {v5}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v6

    new-instance v7, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v8, 0x3

    invoke-direct {v7, v8}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const-string v8, "GCM"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v7

    const-string v8, "NoPadding"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v7

    move-object v15, v7

    new-instance v7, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v7}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    move-object v14, v7

    invoke-virtual {v15}, Landroid/security/keystore/KeyProtection;->getPurposes()I

    move-result v7

    move v13, v7

    nop

    invoke-interface {v5}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterSecretKeyAlgorithm(Ljava/lang/String;)I

    move-result v7

    move v12, v7

    new-array v7, v0, [I

    move-object v11, v7

    invoke-static {v13}, Landroid/security/keystore/KeyProperties$Purpose;->allToKeymaster(I)[I

    move-result-object v7

    move-object v10, v7

    const v7, 0x10000002

    invoke-virtual {v14, v7, v12}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    const v7, 0x20000005

    invoke-virtual {v14, v7, v11}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    const v7, 0x20000001

    invoke-virtual {v14, v7, v10}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    nop

    invoke-virtual {v15}, Landroid/security/keystore/KeyProtection;->getBlockModes()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/security/keystore/KeyProperties$BlockMode;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v7

    move-object v9, v7

    const v7, 0x20000004

    invoke-virtual {v14, v7, v9}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    const v7, 0x20000006

    invoke-virtual {v15}, Landroid/security/keystore/KeyProtection;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v8

    invoke-virtual {v14, v7, v8}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    invoke-static {v14, v15}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;Landroid/security/keystore/UserAuthArgs;)V

    invoke-static {v14, v12, v9, v11}, Landroid/security/keystore/KeymasterUtils;->addMinMacLengthAuthorizationIfNecessary(Landroid/security/keymaster/KeymasterArguments;I[I[I)V

    const v7, 0x60000190

    invoke-virtual {v15}, Landroid/security/keystore/KeyProtection;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v14, v7, v8}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    const v7, 0x60000191

    invoke-virtual {v15}, Landroid/security/keystore/KeyProtection;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v14, v7, v8}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    const v7, 0x60000192

    invoke-virtual {v15}, Landroid/security/keystore/KeyProtection;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v14, v7, v8}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b3} :catch_13e

    and-int/lit8 v7, v13, 0x1

    if-eqz v7, :cond_c8

    :try_start_b7
    invoke-virtual {v15}, Landroid/security/keystore/KeyProtection;->isRandomizedEncryptionRequired()Z

    move-result v7

    if-nez v7, :cond_c8

    const v7, 0x70000007

    invoke-virtual {v14, v7}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_c3} :catch_c4

    goto :goto_c8

    :catch_c4
    move-exception v0

    move v9, v2

    goto/16 :goto_143

    :cond_c8
    :goto_c8
    :try_start_c8
    # invokes: Lcom/android/server/KeyProtector;->attach(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static/range {p1 .. p2}, Lcom/android/server/KeyProtector;->access$000(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/KeyProtector$KeyStore;->mKeyStore:Landroid/security/KeyStore;

    iget v0, v1, Lcom/android/server/KeyProtector$KeyStore;->mUid:I

    invoke-static {v8, v7, v0}, Landroid/security/Credentials;->deleteLegacyKeyForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USRSKEY_"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_e4} :catch_13e

    const/4 v0, 0x0

    move/from16 v17, v2

    :try_start_e7
    iget-object v2, v1, Lcom/android/server/KeyProtector$KeyStore;->mKeyStore:Landroid/security/KeyStore;

    const/16 v18, 0x3

    move-object/from16 v19, v10

    iget v10, v1, Lcom/android/server/KeyProtector$KeyStore;->mUid:I

    move/from16 v20, v10

    new-instance v10, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v10}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    move-object/from16 v21, v7

    move-object v7, v2

    move-object v2, v9

    move-object v9, v14

    move-object/from16 v22, v10

    move/from16 v10, v18

    move-object/from16 v18, v11

    move-object v11, v6

    move/from16 v23, v12

    move/from16 v12, v20

    move/from16 v20, v13

    move v13, v0

    move-object/from16 v24, v14

    move-object/from16 v14, v22

    invoke-virtual/range {v7 .. v14}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v7
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_111} :catch_13a

    const/4 v9, 0x1

    if-ne v7, v9, :cond_117

    move/from16 v16, v9

    goto :goto_119

    :cond_117
    const/16 v16, 0x0

    :goto_119
    move/from16 v9, v16

    if-eqz v16, :cond_123

    :try_start_11d
    # invokes: Lcom/android/server/KeyProtector;->clear([B)V
    invoke-static {v6}, Lcom/android/server/KeyProtector;->access$100([B)V

    goto :goto_146

    :catch_121
    move-exception v0

    goto :goto_143

    :cond_123
    new-instance v10, Ljava/security/KeyStoreException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to import secret key. Keystore error code: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_13a
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_13a} :catch_121

    :catch_13a
    move-exception v0

    move/from16 v9, v17

    goto :goto_143

    :catch_13e
    move-exception v0

    move/from16 v17, v2

    move/from16 v9, v17

    :goto_143
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_146
    return v9
.end method
