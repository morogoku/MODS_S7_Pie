.class public Lcom/android/server/enterprise/nap/DataDeliveryHelper;
.super Ljava/lang/Object;
.source "DataDeliveryHelper.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "NetworkAnalytics:DataDeliveryHelper"


# instance fields
.field private identifier:Ljava/lang/String;

.field private operationUserId:I

.field private profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

.field private serviceConnection:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    sput-boolean v0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    iput-object p2, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->serviceConnection:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    iput p3, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->operationUserId:I

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->identifier:Ljava/lang/String;

    :cond_15
    return-void
.end method

.method private blockDnsFlow(Lorg/json/JSONObject;II)I
    .registers 8

    const/4 v0, 0x1

    :try_start_1
    const-string/jumbo v1, "dport"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "53"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    const-string/jumbo v3, "dnsuid"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_30

    if-nez p3, :cond_28

    if-nez p2, :cond_28

    if-eqz v3, :cond_28

    const/4 v0, 0x3

    goto :goto_2d

    :cond_28
    if-eq v3, p2, :cond_2c

    const/4 v0, 0x2

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    goto :goto_2f

    :cond_2e
    const/4 v0, 0x1

    :goto_2f
    goto :goto_31

    :catch_30
    move-exception v1

    :goto_31
    return v0
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getOperationUserId()I
    .registers 2

    iget v0, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->operationUserId:I

    return v0
.end method

.method public getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    return-object v0
.end method

.method public getServiceBinder()Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->serviceConnection:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->serviceConnection:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->getBinderObject()Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceConnection()Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->serviceConnection:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    return-object v0
.end method

.method public processData(Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    nop

    iget-object v3, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getFlags()I

    move-result v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const/4 v5, 0x0

    const-string/jumbo v6, "uid"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_1b} :catch_2ae
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_2a3

    move-object v5, v6

    if-eqz v5, :cond_45

    :try_start_1e
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_3e

    iget v8, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->operationUserId:I

    invoke-direct {p0, v2, v8, v6}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->blockDnsFlow(Lorg/json/JSONObject;II)I

    move-result v8

    if-lez v8, :cond_3d

    const/4 v9, 0x3

    if-ne v8, v9, :cond_38

    return-object v0

    :cond_38
    iget v9, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->operationUserId:I

    if-eq v6, v9, :cond_3d

    return-object v0

    :cond_3d
    goto :goto_45

    :cond_3e
    iget v8, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->operationUserId:I
    :try_end_40
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_40} :catch_43
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_40} :catch_2ae
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_40} :catch_2a3

    if-eq v6, v8, :cond_45

    return-object v0

    :catch_43
    move-exception v6

    return-object v0

    :cond_45
    :goto_45
    nop

    :try_start_46
    const-string/jumbo v6, "recordtype"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    const-string/jumbo v6, "recordtype"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const v6, 0x8000

    and-int/2addr v6, v3

    if-nez v6, :cond_5c

    if-nez v3, :cond_6a

    :cond_5c
    const-string/jumbo v6, "uid"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    const-string/jumbo v6, "uid"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6a
    const/16 v6, 0x100

    and-int/2addr v6, v3

    if-nez v6, :cond_71

    if-nez v3, :cond_7f

    :cond_71
    const-string/jumbo v6, "pid"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    const-string/jumbo v6, "pid"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7f
    const/16 v6, 0x1000

    and-int/2addr v6, v3

    if-nez v6, :cond_86

    if-nez v3, :cond_94

    :cond_86
    const-string/jumbo v6, "puid"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    const-string/jumbo v6, "puid"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_94
    const/16 v6, 0x2000

    and-int/2addr v6, v3

    if-nez v6, :cond_9b

    if-nez v3, :cond_a9

    :cond_9b
    const-string/jumbo v6, "src"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    const-string/jumbo v6, "src"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a9
    const/16 v6, 0x8

    and-int/2addr v6, v3

    if-nez v6, :cond_b0

    if-nez v3, :cond_be

    :cond_b0
    const-string/jumbo v6, "dst"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    const-string/jumbo v6, "dst"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_be
    const/16 v6, 0x4000

    and-int/2addr v6, v3

    if-nez v6, :cond_c5

    if-nez v3, :cond_d3

    :cond_c5
    const-string/jumbo v6, "sport"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    const-string/jumbo v6, "sport"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_d3
    const/16 v6, 0x10

    and-int/2addr v6, v3

    if-nez v6, :cond_da

    if-nez v3, :cond_e8

    :cond_da
    const-string/jumbo v6, "dport"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    const-string/jumbo v6, "dport"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_e8
    const/16 v6, 0x800

    and-int/2addr v6, v3

    if-nez v6, :cond_ef

    if-nez v3, :cond_fd

    :cond_ef
    const-string/jumbo v6, "protocol"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    const-string/jumbo v6, "protocol"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_fd
    .catch Lorg/json/JSONException; {:try_start_46 .. :try_end_fd} :catch_2ae
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_fd} :catch_2a3

    :cond_fd
    :try_start_fd
    const-string/jumbo v6, "procname"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    if-eqz v5, :cond_2a0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_10f

    goto/16 :goto_2a0

    :cond_10f
    const/16 v6, 0x400

    and-int/2addr v6, v3

    if-nez v6, :cond_116

    if-nez v3, :cond_11c

    :cond_116
    const-string/jumbo v6, "procname"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_11c} :catch_2a1
    .catch Lorg/json/JSONException; {:try_start_fd .. :try_end_11c} :catch_2ae

    :cond_11c
    nop

    const/16 v6, 0x200

    and-int/2addr v6, v3

    if-nez v6, :cond_124

    if-nez v3, :cond_169

    :cond_124
    :try_start_124
    const-string/jumbo v6, "uid"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "procname"

    invoke-virtual {v2, v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "pid"

    invoke-virtual {v2, v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v6, :cond_169

    if-eqz v7, :cond_169

    const-string v9, "0"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_163

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_154

    goto :goto_163

    :cond_154
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9, v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getPackageHash(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "prochash"

    invoke-virtual {v4, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_169

    :cond_163
    :goto_163
    const-string/jumbo v9, "prochash"

    invoke-virtual {v4, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_169
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_169} :catch_16a
    .catch Lorg/json/JSONException; {:try_start_124 .. :try_end_169} :catch_2ae

    :cond_169
    :goto_169
    goto :goto_171

    :catch_16a
    move-exception v6

    :try_start_16b
    const-string/jumbo v7, "prochash"

    invoke-virtual {v4, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_171
    const/16 v6, 0x80

    and-int/2addr v6, v3

    if-nez v6, :cond_178

    if-nez v3, :cond_186

    :cond_178
    const-string/jumbo v6, "parentprocname"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    const-string/jumbo v6, "parentprocname"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_186
    .catch Lorg/json/JSONException; {:try_start_16b .. :try_end_186} :catch_2ae
    .catch Ljava/lang/Exception; {:try_start_16b .. :try_end_186} :catch_2a3

    :cond_186
    const/high16 v6, 0x40000

    and-int/2addr v6, v3

    if-nez v6, :cond_18d

    if-nez v3, :cond_1d2

    :cond_18d
    :try_start_18d
    const-string/jumbo v6, "puid"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "parentprocname"

    invoke-virtual {v2, v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "ppid"

    invoke-virtual {v2, v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v6, :cond_1d2

    if-eqz v7, :cond_1d2

    const-string v9, "0"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1cc

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1bd

    goto :goto_1cc

    :cond_1bd
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9, v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getPackageHash(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "parentprochash"

    invoke-virtual {v4, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1d2

    :cond_1cc
    :goto_1cc
    const-string/jumbo v9, "parentprochash"

    invoke-virtual {v4, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1d2
    .catch Ljava/lang/Exception; {:try_start_18d .. :try_end_1d2} :catch_1d3
    .catch Lorg/json/JSONException; {:try_start_18d .. :try_end_1d2} :catch_2ae

    :cond_1d2
    :goto_1d2
    goto :goto_1da

    :catch_1d3
    move-exception v6

    :try_start_1d4
    const-string/jumbo v7, "parentprochash"

    invoke-virtual {v4, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1da
    const/4 v6, 0x2

    and-int/2addr v6, v3

    if-nez v6, :cond_1e0

    if-nez v3, :cond_1ec

    :cond_1e0
    const-string v6, "bsent"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    const-string v6, "bsent"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1ec
    const/16 v6, 0x40

    and-int/2addr v6, v3

    if-nez v6, :cond_1f3

    if-nez v3, :cond_201

    :cond_1f3
    const-string/jumbo v6, "start"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    const-string/jumbo v6, "start"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_201
    const/4 v6, 0x4

    and-int/2addr v6, v3

    if-nez v6, :cond_207

    if-nez v3, :cond_215

    :cond_207
    const-string/jumbo v6, "end"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    const-string/jumbo v6, "end"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_215
    const/4 v6, 0x1

    and-int/2addr v6, v3

    if-nez v6, :cond_21b

    if-nez v3, :cond_227

    :cond_21b
    const-string v6, "brecv"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    const-string v6, "brecv"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_227
    const/16 v6, 0x20

    and-int/2addr v6, v3

    if-nez v6, :cond_22e

    if-nez v3, :cond_23c

    :cond_22e
    const-string/jumbo v6, "hostname"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    const-string/jumbo v6, "hostname"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_23c
    .catch Lorg/json/JSONException; {:try_start_1d4 .. :try_end_23c} :catch_2ae
    .catch Ljava/lang/Exception; {:try_start_1d4 .. :try_end_23c} :catch_2a3

    :cond_23c
    const/high16 v6, 0x10000

    and-int/2addr v6, v3

    if-nez v6, :cond_243

    if-nez v3, :cond_269

    :cond_243
    :try_start_243
    const-string/jumbo v6, "dport"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_269

    const-string v7, "53"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_263

    const-string/jumbo v7, "dnsuid"

    invoke-virtual {v2, v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    const-string/jumbo v7, "dnsuid"

    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_269

    :cond_263
    const-string/jumbo v7, "dnsuid"

    invoke-virtual {v4, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_269
    .catch Ljava/lang/Exception; {:try_start_243 .. :try_end_269} :catch_26a
    .catch Lorg/json/JSONException; {:try_start_243 .. :try_end_269} :catch_2ae

    :cond_269
    :goto_269
    goto :goto_271

    :catch_26a
    move-exception v6

    :try_start_26b
    const-string/jumbo v7, "dnsuid"

    invoke-virtual {v4, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_271
    const/high16 v6, 0x20000

    and-int/2addr v6, v3

    if-nez v6, :cond_278

    if-nez v3, :cond_286

    :cond_278
    const-string/jumbo v6, "ppid"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    const-string/jumbo v6, "ppid"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_286
    const/high16 v6, 0x80000

    and-int/2addr v6, v3

    if-nez v6, :cond_28d

    if-nez v3, :cond_29b

    :cond_28d
    const-string/jumbo v6, "iface"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    const-string/jumbo v0, "iface"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_29b
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_29f
    .catch Lorg/json/JSONException; {:try_start_26b .. :try_end_29f} :catch_2ae
    .catch Ljava/lang/Exception; {:try_start_26b .. :try_end_29f} :catch_2a3

    goto :goto_2b8

    :cond_2a0
    :goto_2a0
    return-object v0

    :catch_2a1
    move-exception v6

    return-object v0

    :catch_2a3
    move-exception v0

    const-string v2, "NetworkAnalytics:DataDeliveryHelper"

    const-string/jumbo v3, "processData: Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_2b9

    :catch_2ae
    move-exception v0

    const-string v2, "NetworkAnalytics:DataDeliveryHelper"

    const-string/jumbo v3, "processData: JSONException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_2b8
    nop

    :goto_2b9
    return-object v0
.end method

.method public setServiceConnection(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->serviceConnection:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    return-void
.end method
