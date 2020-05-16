.class public Lcom/samsung/android/rlc/receiver/handler/CertHandler;
.super Ljava/lang/Object;
.source "CertHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/samsung/android/rlc/receiver/handler/CertHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCertBody(Landroid/content/Context;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .registers 10

    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCID()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v1, 0x1

    :cond_10
    new-instance v2, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    invoke-direct {v2}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;-><init>()V

    if-eqz v1, :cond_73

    sget-object v3, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->TAG:Ljava/lang/String;

    const-string v4, "Use device id instead of RLC"

    invoke-static {v3, v4}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/samsung/android/rlc/util/DeviceUtil;->getDualSIMDeviceID(Landroid/content/Context;Z)[Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IMEI Len : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IMEI value  : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    aget-object v8, v4, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_64

    aget-object v5, v4, v7

    if-eqz v5, :cond_64

    aget-object v5, v4, v7

    invoke-virtual {v2, v5}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setImeiHash(Ljava/lang/String;)V

    :cond_64
    if-eqz v4, :cond_72

    array-length v5, v4

    if-le v5, v3, :cond_72

    aget-object v5, v4, v3

    if-eqz v5, :cond_72

    aget-object v3, v4, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setImeiHash2(Ljava/lang/String;)V

    :cond_72
    goto :goto_7d

    :cond_73
    sget-object v3, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->TAG:Ljava/lang/String;

    const-string v4, "There is RLC ID in secure area"

    invoke-static {v3, v4}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setRlcId(Ljava/lang/String;)V

    :goto_7d
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getRLCClientVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setVer(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setModel(Ljava/lang/String;)V

    const-string/jumbo v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setCsc(Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public encryptData(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .registers 26

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->TAG:Ljava/lang/String;

    const-string v3, "[getEncrytedData]"

    invoke-static {v0, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_b
    const-string v0, "cert"

    invoke-static {v1, v0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    const-string/jumbo v0, "registeredimei"

    invoke-static {v1, v0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCID()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-nez v0, :cond_31

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_150

    :cond_31
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->getCertBody(Landroid/content/Context;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    move-result-object v0

    move-object v9, v0

    const-string v0, "https://%s/dm/v1/dev/getCert5"

    invoke-static {v1, v0}, Lcom/samsung/android/rlc/util/PushUtil;->getDMURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    invoke-static {v1, v9, v10}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->httpRequest(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;Ljava/lang/String;)Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    move-result-object v0

    move-object v11, v0

    invoke-virtual {v11}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getRetryIntervalList()Ljava/util/List;

    move-result-object v0
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_4a} :catch_238

    move-object v12, v0

    const-wide/32 v13, 0x240c8400

    move-object/from16 v16, v4

    const-wide/32 v3, 0xf731400

    if-eqz v12, :cond_f9

    :try_start_55
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v7, :cond_b0

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    const/4 v0, 0x1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v15, v19

    check-cast v15, Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    cmp-long v15, v17, v20

    if-gez v15, :cond_93

    const-string/jumbo v15, "retryInterval1"

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v15, v7}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "retryInterval2"

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v7, v0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c5

    :cond_93
    const-string/jumbo v7, "retryInterval1"

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v7, v0}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "retryInterval2"

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v0, v7}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c5

    :cond_b0
    const-string/jumbo v0, "retryInterval1"

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v1, v0, v15}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "retryInterval2"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v0, v7}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_c5} :catch_c6

    :goto_c5
    goto :goto_114

    :catch_c6
    move-exception v0

    :try_start_c7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v7, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception : "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "retryInterval1"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v7, v3}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "retryInterval2"

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c5

    :cond_f9
    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->TAG:Ljava/lang/String;

    const-string v7, "Interval is null so use default value"

    invoke-static {v0, v7}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "retryInterval1"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "retryInterval2"

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_114
    invoke-virtual {v11}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getCert()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    const-string v0, "cert"

    invoke-static {v1, v0, v4}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getImeiHash()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received IMEI : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_150

    move-object v5, v0

    const-string/jumbo v3, "registeredimei"

    invoke-static {v1, v3, v5}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setImeiHash(Ljava/lang/String;)V

    :cond_150
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_237

    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->TAG:Ljava/lang/String;

    const-string v3, "To receive cert data success"

    invoke-static {v0, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    move-object v3, v0

    const/4 v7, 0x0

    new-array v0, v7, [B
    :try_end_16a
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_16a} :catch_238

    move-object v7, v0

    const v8, 0x44aa200

    :try_start_16e
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getData()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v0, v9, v3}, Lcom/samsung/android/rlc/util/RLCUtil;->encryptData([B[B)[B

    move-result-object v0
    :try_end_17e
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_16e .. :try_end_17e} :catch_180
    .catch Ljava/lang/Exception; {:try_start_16e .. :try_end_17e} :catch_238

    move-object v7, v0

    goto :goto_1ae

    :catch_180
    move-exception v0

    :try_start_181
    invoke-virtual {v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;->printStackTrace()V

    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception in RMMManager : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "check_backoff"

    invoke-static {v1, v9, v8}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setRetryBackoff(Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v9, "spp_backoff"

    invoke-static {v1, v9, v8}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setRetryBackoff(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v9, "gcm_backoff"

    invoke-static {v1, v9, v8}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setRetryBackoff(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_1ae
    if-eqz v7, :cond_237

    invoke-virtual {v2, v7}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setDataByte([B)V

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_236

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/util/DeviceUtil;->getTelephonyManagerWithException(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    move-object v9, v0

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    move v10, v0

    const/4 v11, 0x0

    invoke-static {v1, v11}, Lcom/samsung/android/rlc/util/DeviceUtil;->getDualSIMDeviceID(Landroid/content/Context;Z)[Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    if-eqz v12, :cond_235

    array-length v0, v12

    :goto_1cc
    if-ge v11, v0, :cond_235

    aget-object v13, v12, v11

    invoke-static {v13}, Lcom/samsung/android/rlc/util/DeviceUtil;->getHashString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_232

    invoke-virtual {v2, v5}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setImei(Ljava/lang/String;)V
    :try_end_1dd
    .catch Ljava/lang/Exception; {:try_start_181 .. :try_end_1dd} :catch_238

    :try_start_1dd
    invoke-static {v5, v5}, Lcom/samsung/android/rlc/util/HMACUtil;->encryption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1f7

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v11, v14, v3}, Lcom/samsung/android/rlc/util/RLCUtil;->encryptData([B[B)[B

    move-result-object v11

    move-object v7, v11

    goto :goto_22e

    :cond_1f7
    sget-object v11, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->TAG:Ljava/lang/String;

    const-string v14, "Encrypted IMEI is null"

    invoke-static {v11, v14}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1fe
    .catch Ljava/lang/Exception; {:try_start_1dd .. :try_end_1fe} :catch_200

    const/4 v8, 0x0

    return-object v8

    :catch_200
    move-exception v0

    :try_start_201
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v11, "check_backoff"

    invoke-static {v1, v11, v8}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setRetryBackoff(Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v11, "spp_backoff"

    invoke-static {v1, v11, v8}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setRetryBackoff(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v11, "gcm_backoff"

    invoke-static {v1, v11, v8}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setRetryBackoff(Landroid/content/Context;Ljava/lang/String;I)V

    sget-object v8, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception in RMMManager : "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_22e
    invoke-virtual {v2, v7}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setDataByte([B)V
    :try_end_231
    .catch Ljava/lang/Exception; {:try_start_201 .. :try_end_231} :catch_238

    return-object v2

    :cond_232
    add-int/lit8 v11, v11, 0x1

    goto :goto_1cc

    :cond_235
    goto :goto_237

    :cond_236
    return-object v2

    :cond_237
    :goto_237
    goto :goto_256

    :catch_238
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v3, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_256
    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->TAG:Ljava/lang/String;

    const-string v3, "getCert returns null"

    invoke-static {v0, v3}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    return-object v3
.end method
