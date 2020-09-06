.class public Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;
.super Ljava/lang/Object;
.source "CompleteHandler.java"


# static fields
.field private static final INTENT_PERMISSION:Ljava/lang/String; = "com.samsung.android.permission.RMM_INIT"

.field private static final INTENT_RMM_NOTI:Ljava/lang/String; = "com.samsung.android.rmm.notification"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCompleteBody(Lorg/json/JSONObject;Landroid/content/Context;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .registers 16

    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;->TAG:Ljava/lang/String;

    const-string v1, "[getCompleteBody]"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, -0x1

    move v6, v5

    :try_start_12
    const-string/jumbo v7, "nonceSvr"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    const-string v7, "cert"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    const-string v7, "cmd"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    const-string/jumbo v7, "oprtId"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_2f} :catch_31

    move-object v2, v7

    goto :goto_35

    :catch_31
    move-exception v7

    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    :goto_35
    sget-object v7, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[getCompleteBody] RLC operation command : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x2

    sparse-switch v7, :sswitch_data_12e

    goto :goto_86

    :sswitch_55
    const-string v7, "Locking"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_86

    move v5, v9

    goto :goto_86

    :sswitch_5f
    const-string v7, "Completing"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_86

    const/4 v5, 0x3

    goto :goto_86

    :sswitch_69
    const-string v7, "Unlocking"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_86

    const/4 v5, 0x1

    goto :goto_86

    :sswitch_73
    const-string v7, "Activating"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_86

    move v5, v8

    goto :goto_86

    :sswitch_7d
    const-string v7, "Blinking"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_86

    const/4 v5, 0x4

    :cond_86
    :goto_86
    packed-switch v5, :pswitch_data_144

    goto :goto_94

    :pswitch_8a
    const/4 v6, 0x5

    goto :goto_94

    :pswitch_8c
    const/4 v6, 0x4

    goto :goto_94

    :pswitch_8e
    const/4 v6, 0x2

    goto :goto_94

    :pswitch_90
    const/4 v6, 0x3

    goto :goto_94

    :pswitch_92
    const/4 v6, 0x1

    nop

    :goto_94
    new-instance v5, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    invoke-direct {v5}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;-><init>()V

    const-string v7, "Messaging"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v10, 0x0

    if-eqz v7, :cond_d4

    :try_start_a2
    invoke-static {p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCID()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCID()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Lcom/samsung/android/rlc/util/HMACUtil;->encryption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v11

    if-nez v7, :cond_bd

    goto :goto_c1

    :cond_bd
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    :goto_c1
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-static {v12, v9}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v9

    invoke-virtual {v11, v10, v9}, Lcom/samsung/android/rlc/util/RLCUtil;->encryptData([B[B)[B

    move-result-object v9
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_cd} :catch_cf

    move-object v4, v9

    :goto_ce
    goto :goto_101

    :catch_cf
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_ce

    :cond_d4
    :try_start_d4
    invoke-static {p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCID()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-static {v12, v9}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v12

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-static {v13, v9}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v9

    if-nez v7, :cond_f3

    goto :goto_f7

    :cond_f3
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    :goto_f7
    invoke-virtual {v11, v12, v9, v10, v6}, Lcom/samsung/android/rlc/util/RLCUtil;->prepareRlc([B[B[BI)[B

    move-result-object v9
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_fb} :catch_fd

    move-object v4, v9

    goto :goto_101

    :catch_fd
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    :goto_101
    sget-object v7, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[getCompleteBody] Device Msg L : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_111

    array-length v8, v4

    nop

    :cond_111
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setDataByte([B)V

    invoke-static {p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setRlcId(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setOprtId(Ljava/lang/String;)V

    return-object v5

    nop

    :sswitch_data_12e
    .sparse-switch
        -0x2d6440da -> :sswitch_7d
        -0xf83a2f0 -> :sswitch_73
        -0xe559e02 -> :sswitch_69
        0x568fbfd6 -> :sswitch_5f
        0x7768d6b7 -> :sswitch_55
    .end sparse-switch

    :pswitch_data_144
    .packed-switch 0x0
        :pswitch_92
        :pswitch_90
        :pswitch_8e
        :pswitch_8c
        :pswitch_8a
    .end packed-switch
.end method

.method public static makeCompleteBundle(Lorg/json/JSONObject;Landroid/content/Context;)Landroid/os/Bundle;
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "body"

    invoke-static {p0, p1}, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;->getCompleteBody(Lorg/json/JSONObject;Landroid/content/Context;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :try_start_e
    const-string v1, "cmd"

    const-string v2, "cmd"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "oprtId"

    const-string/jumbo v2, "oprtId"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_26} :catch_27

    goto :goto_2b

    :catch_27
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2b
    return-object v0
.end method

.method public static run(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 13

    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;->TAG:Ljava/lang/String;

    const-string v1, "RLC_CompleteHandler run"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_b

    return-object v0

    :cond_b
    :try_start_b
    const-string v1, "body"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    const-string v2, "cmd"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v4, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x0

    sparse-switch v5, :sswitch_data_15a

    goto :goto_60

    :sswitch_25
    const-string v5, "Locking"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_60

    const/4 v4, 0x2

    goto :goto_60

    :sswitch_2f
    const-string v5, "Completing"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_60

    const/4 v4, 0x3

    goto :goto_60

    :sswitch_39
    const-string v5, "Messaging"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_60

    const/4 v4, 0x4

    goto :goto_60

    :sswitch_43
    const-string v5, "Unlocking"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_60

    const/4 v4, 0x1

    goto :goto_60

    :sswitch_4d
    const-string v5, "Activating"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_60

    move v4, v6

    goto :goto_60

    :sswitch_57
    const-string v5, "Blinking"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_60

    const/4 v4, 0x5

    :cond_60
    :goto_60
    packed-switch v4, :pswitch_data_174

    goto :goto_7c

    :pswitch_64
    const-string v4, "https://%s/dm/v1/dev/cmd/blink"

    move-object v3, v4

    goto :goto_7c

    :pswitch_68
    const-string v4, "https://%s/dm/v1/dev/cmd/message"

    move-object v3, v4

    goto :goto_7c

    :pswitch_6c
    const-string v4, "https://%s/dm/v1/dev/cmd/complete"

    move-object v3, v4

    goto :goto_7c

    :pswitch_70
    const-string v4, "https://%s/dm/v1/dev/cmd/lock"

    move-object v3, v4

    goto :goto_7c

    :pswitch_74
    const-string v4, "https://%s/dm/v1/dev/cmd/unlock"

    move-object v3, v4

    goto :goto_7c

    :pswitch_78
    const-string v4, "https://%s/dm/v1/dev/cmd/activate"

    move-object v3, v4

    nop

    :goto_7c
    invoke-static {p0, v3}, Lcom/samsung/android/rlc/util/PushUtil;->getDMURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p0, v1, v4}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->httpRequest(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;Ljava/lang/String;)Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    move-result-object v7

    if-eqz v7, :cond_13c

    sget-object v8, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RLC_CompleteHandler(isfailed): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_111

    sget-object v6, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;->TAG:Ljava/lang/String;

    const-string v8, "RLC_CompleteHandler : SUCCESS "

    invoke-static {v6, v8}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Messaging"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_108

    invoke-virtual {v7}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_107

    new-instance v6, Landroid/content/Intent;

    const-string v8, "com.samsung.android.rmm.notification"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "msg"

    invoke-virtual {v7}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v8, "requestor"

    invoke-virtual {v7}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getRequestor()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v8, "tel"

    invoke-virtual {v7}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getTel()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "iconUrl"

    invoke-virtual {v7}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getIcon()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v8, Landroid/os/UserHandle;->SEM_ALL:Landroid/os/UserHandle;

    const-string v9, "com.samsung.android.permission.RMM_INIT"

    invoke-virtual {p0, v6, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_107
    return-object v0

    :cond_108
    invoke-virtual {v7}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v6

    invoke-static {p0, v6, v2}, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->makeReportBundle(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    return-object v6

    :cond_111
    invoke-virtual {v7}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v8

    const/16 v9, 0x193

    if-ne v8, v9, :cond_130

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v9, "clearOp"

    invoke-virtual {v8, v9, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v6, 0xc

    invoke-static {p0, v8, v6}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    sget-object v6, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;->TAG:Ljava/lang/String;

    const-string v9, "RLC_CompleteHandler : not supported device "

    invoke-static {v6, v9}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13c

    :cond_130
    invoke-virtual {v7}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v6

    const/16 v8, 0x191

    if-ne v6, v8, :cond_139

    goto :goto_13c

    :cond_139
    invoke-virtual {v7}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13c} :catch_13d

    :cond_13c
    :goto_13c
    goto :goto_158

    :catch_13d
    move-exception v1

    sget-object v2, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_158
    return-object v0

    nop

    :sswitch_data_15a
    .sparse-switch
        -0x2d6440da -> :sswitch_57
        -0xf83a2f0 -> :sswitch_4d
        -0xe559e02 -> :sswitch_43
        0x219d56e4 -> :sswitch_39
        0x568fbfd6 -> :sswitch_2f
        0x7768d6b7 -> :sswitch_25
    .end sparse-switch

    :pswitch_data_174
    .packed-switch 0x0
        :pswitch_78
        :pswitch_74
        :pswitch_70
        :pswitch_6c
        :pswitch_68
        :pswitch_64
    .end packed-switch
.end method
