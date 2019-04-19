.class public Lcom/android/server/knox/ddar/DDCache;
.super Ljava/lang/Object;
.source "DDCache.java"

# interfaces
.implements Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;


# static fields
.field private static final DELETE_DATA_CMD:Ljava/lang/String; = "DELETE_DATA_CMD"

.field private static final DUAL_DAR_KEY:Ljava/lang/String; = "DUAL_DAR_KEY"

.field private static final DUAL_DAR_USER_ID:Ljava/lang/String; = "DUAL_DAR_USER_ID"

.field private static final DUAL_DAR_VALUE:Ljava/lang/String; = "DUAL_DAR_VALUE"

.field private static final GET_DATA_CMD:Ljava/lang/String; = "GET_DATA_CMD"

.field private static final SET_DATA_CMD:Ljava/lang/String; = "SET_DATA_CMD"

.field private static final TAG:Ljava/lang/String; = "DDCache"

.field private static volatile _instance:Lcom/android/server/knox/ddar/DDCache;


# instance fields
.field private context:Landroid/content/Context;

.field private semPersonaManager:Lcom/samsung/android/knox/ISemPersonaManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/knox/ddar/DDCache;->_instance:Lcom/android/server/knox/ddar/DDCache;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/knox/ddar/DDCache;->context:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/knox/ddar/DDCache;->context:Landroid/content/Context;

    return-void
.end method

.method private constructuctCacheKey(ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DUALDAR_User_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/knox/ddar/DDCache;
    .registers 3

    const-class v0, Lcom/android/server/knox/ddar/DDCache;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/knox/ddar/DDCache;->_instance:Lcom/android/server/knox/ddar/DDCache;

    if-nez v1, :cond_e

    new-instance v1, Lcom/android/server/knox/ddar/DDCache;

    invoke-direct {v1, p0}, Lcom/android/server/knox/ddar/DDCache;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/knox/ddar/DDCache;->_instance:Lcom/android/server/knox/ddar/DDCache;

    :cond_e
    sget-object v1, Lcom/android/server/knox/ddar/DDCache;->_instance:Lcom/android/server/knox/ddar/DDCache;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/knox/ddar/DDCache;->semPersonaManager:Lcom/samsung/android/knox/ISemPersonaManager;

    if-nez v0, :cond_16

    :try_start_4
    const-string/jumbo v0, "persona"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/knox/ddar/DDCache;->semPersonaManager:Lcom/samsung/android/knox/ISemPersonaManager;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_11} :catch_12

    goto :goto_16

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/android/server/knox/ddar/DDCache;->semPersonaManager:Lcom/samsung/android/knox/ISemPersonaManager;

    return-object v0
.end method


# virtual methods
.method public get(ILjava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/knox/ddar/DDCache;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lcom/android/server/knox/ddar/DDCache;->constructuctCacheKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/ISemPersonaManager;->getPersonaCacheValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-object v0, v1

    goto :goto_1e

    :catch_f
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "DDCache"

    const-string/jumbo v3, "get value failed"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_1e
    return-object v0
.end method

.method public onMessage(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 14

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    :try_start_5
    const-string v5, "DDCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onMessage() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v8}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const/4 v6, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, -0xd9160e7

    if-eq v8, v9, :cond_4c

    const v9, 0xac391ee

    if-eq v8, v9, :cond_42

    const v9, 0x67175262

    if-eq v8, v9, :cond_39

    goto :goto_56

    :cond_39
    const-string v8, "SET_DATA_CMD"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_56

    goto :goto_57

    :cond_42
    const-string v7, "GET_DATA_CMD"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_56

    const/4 v7, 0x1

    goto :goto_57

    :cond_4c
    const-string v7, "DELETE_DATA_CMD"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_56

    const/4 v7, 0x2

    goto :goto_57

    :cond_56
    :goto_56
    move v7, v6

    :goto_57
    packed-switch v7, :pswitch_data_ba

    goto :goto_b4

    :pswitch_5b
    const-string v6, "DUAL_DAR_USER_ID"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    move v1, v6

    const-string v6, "DUAL_DAR_KEY"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/knox/ddar/DDCache;->set(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string/jumbo v6, "dual_dar_response"

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_b4

    :pswitch_74
    const-string v6, "DUAL_DAR_USER_ID"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    move v1, v6

    const-string v6, "DUAL_DAR_KEY"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/server/knox/ddar/DDCache;->get(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    const/4 v0, 0x1

    const-string v6, "DUAL_DAR_VALUE"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "dual_dar_response"

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_b4

    :pswitch_94
    const-string v6, "DUAL_DAR_USER_ID"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    move v1, v6

    const-string v6, "DUAL_DAR_KEY"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    const-string v6, "DUAL_DAR_VALUE"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    invoke-virtual {p0, v1, v2, v4}, Lcom/android/server/knox/ddar/DDCache;->set(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string/jumbo v6, "dual_dar_response"

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b3} :catch_b5

    nop

    :goto_b4
    return-object v5

    :catch_b5
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    return-object v3

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_94
        :pswitch_74
        :pswitch_5b
    .end packed-switch
.end method

.method public set(ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/knox/ddar/DDCache;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/android/server/knox/ddar/DDCache;->constructuctCacheKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Lcom/samsung/android/knox/ISemPersonaManager;->updatePersonaCache(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_1b

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "DDCache"

    const-string/jumbo v2, "set value failed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_1b
    return-void
.end method
