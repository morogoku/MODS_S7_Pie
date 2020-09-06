.class public Lcom/samsung/android/knox/ddar/DualDarClientManager;
.super Lcom/samsung/android/knox/ddar/proxy/IProxyAgent$Stub;
.source "DualDarClientManager.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field static mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

.field private static mInstance:Lcom/samsung/android/knox/ddar/DualDarClientManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mInstance:Lcom/samsung/android/knox/ddar/DualDarClientManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/knox/ddar/proxy/IProxyAgent$Stub;-><init>()V

    sput-object p1, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/samsung/android/knox/ddar/IDualDARClient;)Lcom/samsung/android/knox/ddar/DualDarClientManager;
    .registers 3

    sget-object v0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mInstance:Lcom/samsung/android/knox/ddar/DualDarClientManager;

    if-nez v0, :cond_d

    new-instance v0, Lcom/samsung/android/knox/ddar/DualDarClientManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/ddar/DualDarClientManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mInstance:Lcom/samsung/android/knox/ddar/DualDarClientManager;

    sput-object p1, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    :cond_d
    sget-object v0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mInstance:Lcom/samsung/android/knox/ddar/DualDarClientManager;

    return-object v0
.end method


# virtual methods
.method public onMessage(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 20
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_1cc

    goto/16 :goto_85

    :sswitch_1f
    const-string v5, "CLEAR_RESET_PASSWORD_TOKEN"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_85

    const/4 v5, 0x6

    goto :goto_86

    :sswitch_29
    const-string v5, "ON_PASSWORD2_AUTH"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_85

    const/4 v5, 0x3

    goto :goto_86

    :sswitch_33
    const-string v5, "ON_BRINGUP"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_85

    const/4 v5, 0x0

    goto :goto_86

    :sswitch_3d
    const-string v5, "ON_WORKSPACE_CREATION"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_85

    const/4 v5, 0x1

    goto :goto_86

    :sswitch_47
    const-string v5, "ON_DATA_LOCK_STATE_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_85

    const/16 v5, 0x9

    goto :goto_86

    :sswitch_52
    const-string v5, "RESET_PASSWORD_WITH_TOKEN"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_85

    const/4 v5, 0x7

    goto :goto_86

    :sswitch_5c
    const-string v5, "IS_SUPPORTED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_85

    const/16 v5, 0x8

    goto :goto_86

    :sswitch_67
    const-string v5, "ON_PASSWORD2_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_85

    const/4 v5, 0x4

    goto :goto_86

    :sswitch_71
    const-string v5, "SET_RESET_PASSWORD_TOKEN"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_85

    const/4 v5, 0x5

    goto :goto_86

    :sswitch_7b
    const-string v5, "ON_WORKSPACE_DESTROY"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_85

    const/4 v5, 0x2

    goto :goto_86

    :cond_85
    :goto_85
    const/4 v5, -0x1

    :goto_86
    packed-switch v5, :pswitch_data_1f6

    goto/16 :goto_1c9

    :pswitch_8b
    const-string/jumbo v5, "user_id"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "is_data_locked"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    sget-object v6, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {v6, v4, v5}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onDataLockStateChange(IZ)V

    const-string/jumbo v6, "user_id"

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1c9

    :pswitch_a5
    const-string v5, "FEATURE"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    sget-object v6, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {v6, v5}, Lcom/samsung/android/knox/ddar/IDualDARClient;->isSupported(I)Z

    move-result v3

    const-string v6, "dual_dar_response"

    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v6, "user_id"

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1c9

    :pswitch_be
    const-string/jumbo v5, "user_id"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "NEW_PASSWORD"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    const-string v6, "RESET_PASSWORD_TOKEN_HANDLE"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    const-string v6, "RESET_PASSWORD_TOKEN"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v14

    sget-object v6, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    move v7, v4

    move-object v8, v5

    move-wide v9, v12

    move-object v11, v14

    invoke-interface/range {v6 .. v11}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onResetPasswordWithToken(I[BJ[B)Z

    move-result v3

    const-string v6, "dual_dar_response"

    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v6, "user_id"

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1c9

    :pswitch_ee
    const-string/jumbo v5, "user_id"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "RESET_PASSWORD_TOKEN_HANDLE"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    sget-object v7, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {v7, v4, v5, v6}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onClearResetPasswordToken(IJ)V

    const/4 v3, 0x1

    const-string v7, "dual_dar_response"

    invoke-virtual {v2, v7, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v7, "user_id"

    invoke-virtual {v2, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1c9

    :pswitch_10e
    const-string/jumbo v5, "user_id"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "EXISTING_PASSWORD"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    const-string v6, "RESET_PASSWORD_TOKEN_HANDLE"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    const-string v6, "RESET_PASSWORD_TOKEN"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v14

    sget-object v6, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    move v7, v4

    move-object v8, v5

    move-wide v9, v12

    move-object v11, v14

    invoke-interface/range {v6 .. v11}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onSetResetPasswordToken(I[BJ[B)Z

    move-result v3

    const-string v6, "dual_dar_response"

    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v6, "user_id"

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1c9

    :pswitch_13e
    const-string/jumbo v5, "user_id"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "EXISTING_PASSWORD"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    const-string v6, "NEW_PASSWORD"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v6

    sget-object v7, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {v7, v4, v5, v6}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onPasswordChange(I[B[B)Z

    move-result v3

    const-string v7, "dual_dar_response"

    invoke-virtual {v2, v7, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v7, "user_id"

    invoke-virtual {v2, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1c9

    :pswitch_163
    const-string/jumbo v5, "user_id"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    const-string v6, "EXISTING_PASSWORD"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_179

    const-string v6, "EXISTING_PASSWORD"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    :cond_179
    sget-object v6, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {v6, v4, v5}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onPasswordAuth(I[B)Z

    move-result v3

    const-string v6, "dual_dar_response"

    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v6, "user_id"

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1c9

    :pswitch_18b
    const-string/jumbo v5, "user_id"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {v5, v4}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onDualDARDestroyForUser(I)Z

    move-result v3

    const-string v5, "dual_dar_response"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v5, "user_id"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1c9

    :pswitch_1a4
    const-string/jumbo v5, "user_id"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {v5, v4}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onDualDARSetupForUser(I)Z

    move-result v3

    const-string v5, "dual_dar_response"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v5, "user_id"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1c9

    :pswitch_1bd
    sget-object v5, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {v5}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onClientBringup()Z

    move-result v3

    const-string v5, "dual_dar_response"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    nop

    :goto_1c9
    return-object v2

    nop

    nop

    :sswitch_data_1cc
    .sparse-switch
        -0x6b189c50 -> :sswitch_7b
        -0x5bcb73de -> :sswitch_71
        -0x43c5e5a8 -> :sswitch_67
        -0x3c070447 -> :sswitch_5c
        -0x40f8dcc -> :sswitch_52
        0x156556dd -> :sswitch_47
        0x36e621c9 -> :sswitch_3d
        0x4f85492d -> :sswitch_33
        0x54a37250 -> :sswitch_29
        0x60847f17 -> :sswitch_1f
    .end sparse-switch

    :pswitch_data_1f6
    .packed-switch 0x0
        :pswitch_1bd
        :pswitch_1a4
        :pswitch_18b
        :pswitch_163
        :pswitch_13e
        :pswitch_10e
        :pswitch_ee
        :pswitch_be
        :pswitch_a5
        :pswitch_8b
    .end packed-switch
.end method
