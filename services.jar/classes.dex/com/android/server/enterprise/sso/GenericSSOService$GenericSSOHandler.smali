.class final Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;
.super Landroid/os/Handler;
.source "GenericSSOService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/sso/GenericSSOService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GenericSSOHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/sso/GenericSSOService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/sso/GenericSSOService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz v2, :cond_208

    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const/4 v5, 0x0

    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v6, -0x1

    packed-switch v0, :pswitch_data_20a

    :pswitch_13
    goto/16 :goto_208

    :pswitch_15
    const/4 v0, 0x0

    :try_start_16
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, v1, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$300(Lcom/android/server/enterprise/sso/GenericSSOService;)Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "user"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    if-eqz v7, :cond_32

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v8

    move-object v6, v8

    :cond_32
    if-eqz v6, :cond_7d

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_7d

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    iget v10, v9, Landroid/content/pm/UserInfo;->id:I

    if-ne v10, v3, :cond_4f

    goto :goto_3e

    :cond_4f
    iget-object v11, v1, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    invoke-static {v11, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$400(Lcom/android/server/enterprise/sso/GenericSSOService;I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz v11, :cond_7c

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v11}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$500(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v14

    move-object v12, v14

    if-eqz v12, :cond_7c

    sget-boolean v8, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_7a

    const-string v8, "GenericSSOService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "In handleMessage: Enrolled vendor exists"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7a
    const/4 v0, 0x1

    goto :goto_7d

    :cond_7c
    goto :goto_3e

    :cond_7d
    :goto_7d
    if-nez v0, :cond_11f

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    iget-object v11, v1, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService;->initKeyStore()V
    invoke-static {v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$600(Lcom/android/server/enterprise/sso/GenericSSOService;)V

    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$700()Ljava/security/KeyStore;

    move-result-object v11

    invoke-virtual {v11}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "timakeystore"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b5

    const-string v11, "GenericSSOService"

    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$700()Ljava/security/KeyStore;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b4

    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$700()Ljava/security/KeyStore;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    const-string v12, "GenericSSOService"

    const-string v13, "In handleMessage: SecretKey is deleted from TIMAKeystore"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b4
    goto :goto_ee

    :cond_b5
    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$700()Ljava/security/KeyStore;

    move-result-object v11

    invoke-virtual {v11}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v11

    const-string v12, "androidkeystore"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_ee

    const-string v11, "KnoxSSOKey"

    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$700()Ljava/security/KeyStore;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_ee

    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$700()Ljava/security/KeyStore;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    new-instance v12, Ljava/io/File;

    const-string v13, "/data/system/KnoxSSO_SCKF"

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v12

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    sget-boolean v12, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v12, :cond_ee

    const-string v12, "GenericSSOService"

    const-string v13, "In handleMessage: KeyPair is deleted from AndroidKeyStore, and SecretKey file is deleted"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ee
    :goto_ee
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_f1
    .catch Ljava/lang/SecurityException; {:try_start_16 .. :try_end_f1} :catch_117
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_16 .. :try_end_f1} :catch_10e
    .catch Ljava/security/KeyStoreException; {:try_start_16 .. :try_end_f1} :catch_105
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_f1} :catch_fc
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_f1} :catch_f2

    goto :goto_11f

    :catch_f2
    move-exception v0

    const-string v6, "GenericSSOService"

    const-string v7, "In handleMessage: Exception"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_208

    :catch_fc
    move-exception v0

    const-string v6, "GenericSSOService"

    const-string v7, "In handleMessage: IOException"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11f

    :catch_105
    move-exception v0

    const-string v6, "GenericSSOService"

    const-string v7, "In handleMessage: KeyStoreException"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11f

    :catch_10e
    move-exception v0

    const-string v6, "GenericSSOService"

    const-string v7, "In handleMessage: NoSuchAlgorithmException"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11f

    :catch_117
    move-exception v0

    const-string v6, "GenericSSOService"

    const-string v7, "In handleMessage: SecurityException"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11f
    :goto_11f
    goto/16 :goto_208

    :pswitch_121
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;

    iget v6, v2, Landroid/os/Message;->arg1:I

    iget v13, v2, Landroid/os/Message;->arg2:I

    const/4 v14, -0x1

    const/4 v15, 0x0

    new-instance v7, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v7, v6, v13}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    move-object v12, v7

    invoke-virtual {v0}, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->getSSOConfigFile()[B

    move-result-object v7

    if-eqz v7, :cond_151

    sget-boolean v7, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_142

    const-string v7, "GenericSSOService"

    const-string v8, "In handleMessage: Calling configureSSOByFile2"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_142
    iget-object v7, v1, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-virtual {v0}, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->getSSOConfigFile()[B

    move-result-object v8

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService;->configureSSOByFile2(Lcom/samsung/android/knox/ContextInfo;[BI)I
    invoke-static {v7, v12, v8, v13}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$100(Lcom/android/server/enterprise/sso/GenericSSOService;Lcom/samsung/android/knox/ContextInfo;[BI)I

    move-result v7

    const/4 v15, 0x1

    move-object/from16 v16, v5

    move-object v5, v12

    goto :goto_173

    :cond_151
    sget-boolean v7, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_15c

    const-string v7, "GenericSSOService"

    const-string v8, "In handleMessage: Calling enrollSSOVendor2"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15c
    iget-object v7, v1, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-virtual {v0}, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->getAuthenticatorPkgSignature()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->getAuthenticatorConfig()Landroid/os/Bundle;

    move-result-object v11

    move-object v8, v12

    move-object/from16 v16, v5

    move-object v5, v12

    move v12, v13

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService;->enrollSSOVendor2(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)I
    invoke-static/range {v7 .. v12}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$200(Lcom/android/server/enterprise/sso/GenericSSOService;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)I

    move-result v7

    :goto_173
    if-gez v7, :cond_17c

    const-string v8, "GenericSSOService"

    const-string v9, "In handleMessage: Enrollment is failed."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17c
    if-nez v15, :cond_208

    if-nez v7, :cond_208

    invoke-virtual {v0}, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->getWhiteListPackages()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_208

    sget-boolean v8, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_191

    const-string v8, "GenericSSOService"

    const-string v9, "In handleMessage: getWhiteListPackages is not null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_191
    iget-object v8, v1, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-virtual {v0}, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->getWhiteListPackages()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v5, v9, v13}, Lcom/android/server/enterprise/sso/GenericSSOService;->addWhiteListPackages2(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;I)I

    move-result v7

    if-gez v7, :cond_208

    const-string v8, "GenericSSOService"

    const-string v9, "In handleMessage: Add whitelist failed. Unenrolling."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v1, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-virtual {v0}, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v5, v9, v13}, Lcom/android/server/enterprise/sso/GenericSSOService;->unenrollSSOVendor2(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)I

    goto :goto_208

    :pswitch_1ae
    move-object/from16 v16, v5

    :try_start_1b0
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;
    :try_end_1b4
    .catch Landroid/os/RemoteException; {:try_start_1b0 .. :try_end_1b4} :catch_1c9

    move-object v5, v0

    :try_start_1b5
    iget-object v0, v1, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->acquireUserInfo(ILandroid/os/Bundle;)Lcom/samsung/android/knox/sso/common/UserInfo;

    move-result-object v0

    if-eqz v5, :cond_1c6

    if-eqz v0, :cond_1c3

    invoke-interface {v5, v0}, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;->userInfoSuccess(Lcom/samsung/android/knox/sso/common/UserInfo;)V

    goto :goto_1c6

    :cond_1c3
    invoke-interface {v5, v6}, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;->onFail(I)V
    :try_end_1c6
    .catch Landroid/os/RemoteException; {:try_start_1b5 .. :try_end_1c6} :catch_1c7

    :cond_1c6
    :goto_1c6
    goto :goto_208

    :catch_1c7
    move-exception v0

    goto :goto_1cc

    :catch_1c9
    move-exception v0

    move-object/from16 v5, v16

    :goto_1cc
    const-string v6, "GenericSSOService"

    const-string v7, "In handleMessage: RemoteException"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_208

    :pswitch_1d4
    move-object/from16 v16, v5

    :try_start_1d6
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;
    :try_end_1da
    .catch Landroid/os/RemoteException; {:try_start_1d6 .. :try_end_1da} :catch_1fd

    move-object v5, v0

    :try_start_1db
    iget-object v0, v1, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenFromConfigData(ILandroid/os/Bundle;)Lcom/samsung/android/knox/sso/common/TokenInfo;
    invoke-static {v0, v3, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$000(Lcom/android/server/enterprise/sso/GenericSSOService;ILandroid/os/Bundle;)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v0

    if-eqz v5, :cond_1fa

    if-eqz v0, :cond_1f0

    invoke-interface {v5, v0}, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;->tokenInfoSuccess(Lcom/samsung/android/knox/sso/common/TokenInfo;)V

    const-string v6, "GenericSSOService"

    const-string v7, "In handleMessage: Getting a token successfully"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1fa

    :cond_1f0
    invoke-interface {v5, v6}, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;->onFail(I)V

    const-string v6, "GenericSSOService"

    const-string v7, "In handleMessage: Failed to get a token"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1fa
    .catch Landroid/os/RemoteException; {:try_start_1db .. :try_end_1fa} :catch_1fb

    :cond_1fa
    :goto_1fa
    goto :goto_208

    :catch_1fb
    move-exception v0

    goto :goto_200

    :catch_1fd
    move-exception v0

    move-object/from16 v5, v16

    :goto_200
    const-string v6, "GenericSSOService"

    const-string v7, "In handleMessage: RemoteException"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :cond_208
    :goto_208
    return-void

    nop

    :pswitch_data_20a
    .packed-switch 0x2
        :pswitch_1d4
        :pswitch_1ae
        :pswitch_13
        :pswitch_121
        :pswitch_15
    .end packed-switch
.end method
