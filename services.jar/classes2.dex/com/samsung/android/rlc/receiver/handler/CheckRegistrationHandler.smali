.class public Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;
.super Ljava/lang/Object;
.source "CheckRegistrationHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCheckBody(Landroid/content/Context;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .registers 11

    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCID()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 v2, 0x1

    :cond_11
    new-instance v3, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    invoke-direct {v3}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;-><init>()V

    if-eqz v2, :cond_6b

    sget-object v4, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->TAG:Ljava/lang/String;

    const-string v5, "Use device id instead of RLC"

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-static {p0, v4}, Lcom/samsung/android/rlc/util/DeviceUtil;->getDualSIMDeviceID(Landroid/content/Context;Z)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {p0, v6}, Lcom/samsung/android/rlc/util/DeviceUtil;->getDualSIMDeviceID(Landroid/content/Context;Z)[Ljava/lang/String;

    move-result-object v7

    if-eqz v5, :cond_69

    :try_start_2b
    array-length v8, v5

    if-le v8, v4, :cond_4c

    aget-object v8, v5, v4

    const-string/jumbo v9, "registeredimei"

    invoke-static {p0, v9}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4c

    aget-object v6, v7, v4

    aget-object v8, v7, v4

    invoke-static {v6, v8}, Lcom/samsung/android/rlc/util/HMACUtil;->encryption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    aget-object v4, v5, v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setImeiHash(Ljava/lang/String;)V

    goto :goto_69

    :cond_4c
    aget-object v4, v7, v6

    aget-object v8, v7, v6

    invoke-static {v4, v8}, Lcom/samsung/android/rlc/util/HMACUtil;->encryption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    aget-object v4, v5, v6

    invoke-virtual {v3, v4}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setImeiHash(Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/security/SignatureException; {:try_start_2b .. :try_end_5a} :catch_65
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2b .. :try_end_5a} :catch_60
    .catch Ljava/security/InvalidKeyException; {:try_start_2b .. :try_end_5a} :catch_5b

    goto :goto_69

    :catch_5b
    move-exception v4

    invoke-virtual {v4}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_6a

    :catch_60
    move-exception v4

    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_69

    :catch_65
    move-exception v4

    invoke-virtual {v4}, Ljava/security/SignatureException;->printStackTrace()V

    :cond_69
    :goto_69
    nop

    :goto_6a
    goto :goto_8a

    :cond_6b
    sget-object v4, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->TAG:Ljava/lang/String;

    const-string v5, "There is RLC ID in secure area"

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_72
    invoke-static {v0, v0}, Lcom/samsung/android/rlc/util/HMACUtil;->encryption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_76
    .catch Ljava/security/SignatureException; {:try_start_72 .. :try_end_76} :catch_82
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_72 .. :try_end_76} :catch_7d
    .catch Ljava/security/InvalidKeyException; {:try_start_72 .. :try_end_76} :catch_78

    move-object v1, v4

    :goto_77
    goto :goto_87

    :catch_78
    move-exception v4

    invoke-virtual {v4}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_87

    :catch_7d
    move-exception v4

    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_77

    :catch_82
    move-exception v4

    invoke-virtual {v4}, Ljava/security/SignatureException;->printStackTrace()V

    goto :goto_77

    :goto_87
    invoke-virtual {v3, v0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setRlcId(Ljava/lang/String;)V

    :goto_8a
    sget-object v4, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Token : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_af

    const-string v4, "line.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_b1

    :cond_af
    const-string v4, ""

    :goto_b1
    move-object v1, v4

    invoke-virtual {v3, v1}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setData(Ljava/lang/String;)V

    return-object v3
.end method

.method public static makeCheckBundle(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "body"

    invoke-static {p0}, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->getCheckBody(Landroid/content/Context;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object v0
.end method

.method public static run(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 24

    move-object/from16 v1, p0

    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->TAG:Ljava/lang/String;

    const-string v2, "CheckDeviceStatusManager run"

    invoke-static {v0, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v0, "body"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    const-string v0, "https://%s/dm/v1/dev/check5"

    invoke-static {v1, v0}, Lcom/samsung/android/rlc/util/PushUtil;->getDMURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/samsung/android/rlc/receiver/handler/CertHandler;

    invoke-direct {v0}, Lcom/samsung/android/rlc/receiver/handler/CertHandler;-><init>()V

    move-object v5, v0

    const/4 v6, 0x0

    move-object v7, v6

    const/4 v8, 0x1

    :try_start_25
    invoke-virtual {v5, v1, v3}, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->encryptData(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    move-result-object v0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_29} :catch_2b

    move-object v7, v0

    goto :goto_4e

    :catch_2b
    move-exception v0

    move-object v9, v0

    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Long term retry set , Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-static {v1, v9, v8}, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->setRetry(Landroid/content/Context;Landroid/os/Bundle;Z)V

    :goto_4e
    const/4 v0, 0x0

    if-nez v7, :cond_6e

    :try_start_51
    sget-object v6, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->TAG:Ljava/lang/String;

    const-string v9, "Cert body is null"

    invoke-static {v6, v9}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v1, v6, v0}, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->setRetry(Landroid/content/Context;Landroid/os/Bundle;Z)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_5f} :catch_66

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object v13, v7

    goto/16 :goto_222

    :catch_66
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object v13, v7

    goto/16 :goto_22b

    :cond_6e
    :try_start_6e
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/rlc/util/PushUtil;->getRLCClientVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setVer(Ljava/lang/String;)V

    invoke-static {v1, v7, v4}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->httpRequest(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;Ljava/lang/String;)Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    move-result-object v9

    if-eqz v9, :cond_215

    invoke-virtual {v9}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v10

    invoke-virtual {v9}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v11

    sget-object v12, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CheckDeviceStatusManager: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "callcheckapi"

    const-string v13, "Y"

    invoke-static {v1, v12, v13}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_a4} :catch_225

    const/16 v12, 0xc8

    if-ne v10, v12, :cond_f2

    :try_start_a8
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v12

    invoke-static {v1, v0}, Lcom/samsung/android/rlc/util/DeviceUtil;->getDualSIMDeviceID(Landroid/content/Context;Z)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/samsung/android/rlc/util/RLCUtil;->setIMEIs([Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getRlcId()Ljava/lang/String;

    move-result-object v0

    sget v12, Lcom/samsung/android/rlc/util/RLCUtil;->SUPPORTED:I

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v13

    invoke-virtual {v13, v0}, Lcom/samsung/android/rlc/util/RLCUtil;->setRLCID(Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/samsung/android/rlc/util/RLCUtil;->setRegiStatus(I)V

    invoke-virtual {v11}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getBankName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_df

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v13

    const-string/jumbo v14, "simReq"

    invoke-virtual {v11}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getBankName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/samsung/android/rlc/util/RLCUtil;->setStringInSecure(Ljava/lang/String;Ljava/lang/String;)V

    :cond_df
    const-string/jumbo v13, "retry_14"

    const-string v14, ""

    invoke-static {v1, v13, v14}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v6, v8}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_ea} :catch_66

    nop

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object v13, v7

    goto/16 :goto_202

    :cond_f2
    :try_start_f2
    const-string v12, "1stCheck"

    invoke-static {v1, v12}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "First Check Flag : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_112} :catch_225

    if-eqz v13, :cond_152

    :try_start_114
    const-string v13, "1stCheck"

    const-string v14, "Y"

    invoke-static {v1, v13, v14}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v15

    const-string v8, "bootTime"

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v8, v0}, Lcom/samsung/android/rlc/util/RLCUtil;->setStringInSecure(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "boot_time"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_132} :catch_14a

    move-object/from16 v18, v7

    sub-long v6, v13, v16

    :try_start_136
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v0, v6}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/rlc/util/RMMSupportCheck;->setCheckAlarm(Landroid/content/Context;)V
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_140} :catch_141

    goto :goto_154

    :catch_141
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v13, v18

    goto/16 :goto_22b

    :catch_14a
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object v13, v7

    goto/16 :goto_22b

    :cond_152
    move-object/from16 v18, v7

    :goto_154
    :try_start_154
    invoke-virtual {v11}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v6, 0x2

    invoke-static {v0, v6}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    const-string v7, "cert"

    invoke-static {v1, v7}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8, v6}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v8
    :try_end_16f
    .catch Ljava/lang/Exception; {:try_start_154 .. :try_end_16f} :catch_20d

    move-object/from16 v13, v18

    :try_start_171
    invoke-virtual {v13}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getData()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-static {v14, v6}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v6

    invoke-static {v8}, Lcom/samsung/android/rlc/util/HMACUtil;->generatePublicKey([B)Ljava/security/interfaces/RSAPublicKey;

    invoke-static {v6, v0}, Lcom/samsung/android/rlc/util/HMACUtil;->verify([B[B)Z

    move-result v14

    sget-object v15, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->TAG:Ljava/lang/String;
    :try_end_186
    .catch Ljava/lang/Exception; {:try_start_171 .. :try_end_186} :catch_207

    move-object/from16 v19, v2

    :try_start_188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_18d
    .catch Ljava/lang/Exception; {:try_start_188 .. :try_end_18d} :catch_203

    move-object/from16 v20, v3

    :try_start_18f
    const-string/jumbo v3, "verify signed Data : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1f8

    const/16 v2, 0x193

    if-ne v10, v2, :cond_1f8

    if-eqz v14, :cond_1f8

    const/16 v2, 0xf

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v2

    const-string v3, "3rd"

    invoke-virtual {v2, v3}, Lcom/samsung/android/rlc/util/RLCUtil;->getStringInSecure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Y"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1cf

    const-string v3, "cert"

    const-string v15, ""

    invoke-static {v1, v3, v15}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "registeredimei"

    const-string v15, ""

    invoke-static {v1, v3, v15}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d6

    :cond_1cf
    const-string v3, "finalchecked"

    const-string v15, "Y"

    invoke-static {v1, v3, v15}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1d6
    sget-object v3, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->TAG:Ljava/lang/String;

    const-string v15, "CheckDeviceStatusManager : not supported device "

    invoke-static {v3, v15}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "retry_14"

    const-string v15, ""

    invoke-static {v1, v3, v15}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v15, "clearOp"

    move-object/from16 v21, v0

    const/4 v0, 0x0

    invoke-virtual {v3, v15, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v0, 0xc

    invoke-static {v1, v3, v0}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto :goto_202

    :cond_1f8
    move-object/from16 v21, v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->setRetry(Landroid/content/Context;Landroid/os/Bundle;Z)V

    :goto_202
    goto :goto_222

    :catch_203
    move-exception v0

    move-object/from16 v20, v3

    goto :goto_22b

    :catch_207
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    goto :goto_22b

    :catch_20d
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v13, v18

    goto :goto_22b

    :cond_215
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object v13, v7

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->setRetry(Landroid/content/Context;Landroid/os/Bundle;Z)V
    :try_end_222
    .catch Ljava/lang/Exception; {:try_start_18f .. :try_end_222} :catch_223

    :goto_222
    goto :goto_24d

    :catch_223
    move-exception v0

    goto :goto_22b

    :catch_225
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object v13, v7

    :goto_22b
    sget-object v2, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->setRetry(Landroid/content/Context;Landroid/os/Bundle;Z)V

    :goto_24d
    return-void
.end method

.method static setRetry(Landroid/content/Context;Landroid/os/Bundle;Z)V
    .registers 7

    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->TAG:Ljava/lang/String;

    const-string v1, "[setRetry]"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1b

    :try_start_9
    const-string v0, "cert"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "registeredimei"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :catch_19
    move-exception v0

    goto :goto_21

    :cond_1b
    :goto_1b
    const/16 v0, 0xe

    invoke-static {p0, p1, v0}, Lcom/samsung/android/rlc/util/PushUtil;->retryBackoff(Landroid/content/Context;Landroid/os/Bundle;I)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_20} :catch_19

    goto :goto_3f

    :goto_21
    nop

    sget-object v1, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3f
    return-void
.end method
