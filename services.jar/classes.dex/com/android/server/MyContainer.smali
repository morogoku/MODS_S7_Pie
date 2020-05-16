.class public Lcom/android/server/MyContainer;
.super Lcom/android/server/SEAMSContainer;
.source "MyContainer.java"


# static fields
.field private static final MAX_MYCONTAIN_NUM:I = 0x12c

.field private static MYCONTAINER_MAC_PERM:Ljava/lang/String; = null

.field private static final MYCONTAINER_SEANDROID_FOLDER:Ljava/lang/String;

.field private static final MYCONTAINER_TYPE:I = 0x2

.field private static final MYCONTAIN_START_NUM:I = 0xc9

.field private static final TAG:Ljava/lang/String; = "MyContainer"

.field private static final UNTRUSTEDAPP_CAT:I = 0x3ff

.field private static mSKLog:Lcom/android/server/SKLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/security/mycontainer/mac_permissions.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/MyContainer;->MYCONTAINER_MAC_PERM:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/security/mycontainer/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/MyContainer;->MYCONTAINER_SEANDROID_FOLDER:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v0

    sput-object v0, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Lcom/android/server/SEAMSContainer;-><init>()V

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "MyContainer"

    const-string/jumbo v2, "enter MyContainer"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    sput-object p1, Lcom/android/server/MyContainer;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/MyContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    sget-object v1, Lcom/android/server/MyContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/MyContainer;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-void
.end method


# virtual methods
.method public addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .registers 30

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v11, p4

    const/4 v0, 0x0

    sget-boolean v4, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v4, :cond_17

    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string/jumbo v6, "enter addAppToContainer"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    const/4 v4, 0x4

    const/4 v12, 0x3

    if-eq v11, v12, :cond_28

    if-eq v11, v4, :cond_28

    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v6, "Apptype not 3 or 4"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x3

    return v4

    :cond_28
    invoke-static/range {p1 .. p1}, Lcom/android/server/MyContainer;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, -0x1

    if-nez v13, :cond_39

    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v6, " addAppToContainer failed, no packageName found"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v14

    :cond_39
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v5

    if-nez v5, :cond_4b

    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v6, " invalid container ID"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, -0xc

    return v4

    :cond_4b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/MyContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v15

    const/4 v5, -0x2

    if-nez v15, :cond_5d

    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string/jumbo v7, "genericMDMID is null, Returning null"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_5d
    iget-object v6, v15, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v7, v15, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-static {v6, v7, v3}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_71

    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "addAppToContainer, Given Container ID not created by Caller - Returning Refused"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_71
    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_91

    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addAppToContainer, instance of MyContainer "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_91
    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v13}, Lcom/android/server/MyContainer;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    if-nez v2, :cond_aa

    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "addAppToContainer, Input Certificate is null"

    invoke-virtual {v4, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, -0xe

    return v4

    :cond_aa
    const/4 v9, 0x0

    if-nez v10, :cond_d2

    sget-object v7, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "MyContainer"

    const-string v12, "addAppToContainer, signature is null, package not installed yet"

    invoke-virtual {v7, v8, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, ""

    aget-object v8, v2, v9

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ca

    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "addAppToContainer, signature is null, certificate is empty"

    invoke-virtual {v4, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v14

    :cond_ca
    aget-object v6, v2, v9

    const/4 v0, 0x1

    :cond_cd
    move v9, v0

    move/from16 v17, v5

    move-object v12, v6

    goto :goto_119

    :cond_d2
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    check-cast v6, Ljava/lang/String;

    aget-object v7, v2, v9

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10b

    sget-boolean v7, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v7, :cond_ee

    sget-object v7, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "MyContainer"

    const-string v12, "addAppToContainer, cert matches"

    invoke-virtual {v7, v8, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ee
    const/4 v5, 0x1

    sget-boolean v7, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v7, :cond_10b

    sget-object v7, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "MyContainer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addAppToContainer, certMatch: "

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10b
    if-nez v5, :cond_cd

    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "addAppToContainer, input certificate does not match the certificate extracted from package"

    invoke-virtual {v4, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, -0xd

    return v4

    :goto_119
    new-instance v0, Ljava/io/File;

    sget-object v5, Lcom/android/server/MyContainer;->MYCONTAINER_MAC_PERM:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    :try_start_121
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/16 v18, 0x0

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_12c} :catch_2fe

    if-eqz v5, :cond_14e

    :try_start_12e
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " addAppToContainer packageName = "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_146
    .catch Ljava/lang/Exception; {:try_start_12e .. :try_end_146} :catch_147

    goto :goto_14e

    :catch_147
    move-exception v0

    move-object v5, v8

    move v2, v9

    move-object/from16 v21, v10

    goto/16 :goto_303

    :cond_14e
    :goto_14e
    :try_start_14e
    invoke-static {v13, v2}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    move-object v14, v5

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_14e .. :try_end_155} :catch_2fe

    if-eqz v5, :cond_160

    :try_start_157
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "addAppToContainer, Got Application Info"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_160
    const/16 v5, -0x9

    if-ne v11, v4, :cond_180

    if-eqz v14, :cond_19e

    iget-object v6, v14, Landroid/content/pm/ApplicationInfo;->allowContainerSpace:Ljava/lang/String;

    if-eqz v6, :cond_19e

    iget-object v6, v14, Landroid/content/pm/ApplicationInfo;->allowContainerSpace:Ljava/lang/String;

    const/16 v7, 0x66

    const/16 v4, 0xc8

    invoke-static {v6, v7, v4, v11}, Lcom/android/server/MyContainer;->checkSpaceRange(Ljava/lang/String;III)I

    move-result v4

    if-eqz v4, :cond_19e

    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "addAppToContainer, Given Package Name has a non-empty third party Container Allow Category"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_180
    const/4 v4, 0x3

    if-ne v11, v4, :cond_19e

    if-eqz v14, :cond_19e

    iget-object v4, v14, Landroid/content/pm/ApplicationInfo;->allowContainerSpace:Ljava/lang/String;

    if-eqz v4, :cond_19e

    iget-object v4, v14, Landroid/content/pm/ApplicationInfo;->allowContainerSpace:Ljava/lang/String;

    const/4 v6, 0x1

    const/16 v7, 0x2bc

    invoke-static {v4, v6, v7, v11}, Lcom/android/server/MyContainer;->checkSpaceRange(Ljava/lang/String;III)I

    move-result v4

    if-eqz v4, :cond_19e

    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "addAppToContainer_GENERIC_SECURED_APPTYPE, Given Package Name has a non-empty third party Container Allow Category"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_19e
    const/4 v4, 0x4

    if-eq v11, v4, :cond_1b8

    invoke-virtual {v1, v13}, Lcom/android/server/MyContainer;->isProcessRunning(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b8

    invoke-virtual {v1, v13}, Lcom/android/server/MyContainer;->checkIfSingleContainerOwnerIsBeingAdded(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b8

    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v6, "addAppToContainer, App is Running and is not an Agent which owns a Single Container"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b6
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_1b6} :catch_147

    const/4 v4, -0x8

    return v4

    :cond_1b8
    :try_start_1b8
    iget-object v4, v14, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    if-eqz v4, :cond_2d9

    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "addAppToContainer, Got Application Info, Seinfo is not null"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, v14, Landroid/content/pm/ApplicationInfo;->space:I
    :try_end_1c7
    .catch Ljava/lang/Exception; {:try_start_1b8 .. :try_end_1c7} :catch_2fe

    if-lez v4, :cond_1d9

    :try_start_1c9
    iget v4, v14, Landroid/content/pm/ApplicationInfo;->space:I

    const/16 v6, 0x1f5

    if-ge v4, v6, :cond_1d9

    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "addAppToContainer, ERROR_ALREADY_CONTAINER_APP is returned"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d8
    .catch Ljava/lang/Exception; {:try_start_1c9 .. :try_end_1d8} :catch_147

    return v5

    :cond_1d9
    :try_start_1d9
    iget v4, v14, Landroid/content/pm/ApplicationInfo;->space:I
    :try_end_1db
    .catch Ljava/lang/Exception; {:try_start_1d9 .. :try_end_1db} :catch_2fe

    if-nez v4, :cond_1e8

    :try_start_1dd
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v6, "addAppToContainer, Got Application Info, appinfo.category is 0"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e6
    .catch Ljava/lang/Exception; {:try_start_1dd .. :try_end_1e6} :catch_147

    const/4 v4, -0x1

    return v4

    :cond_1e8
    :try_start_1e8
    const-string v4, "default"

    iget-object v5, v14, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1f0
    .catch Ljava/lang/Exception; {:try_start_1e8 .. :try_end_1f0} :catch_2fe

    if-eqz v4, :cond_1f7

    :try_start_1f2
    const-string/jumbo v4, "untrusted"

    iput-object v4, v14, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;
    :try_end_1f7
    .catch Ljava/lang/Exception; {:try_start_1f2 .. :try_end_1f7} :catch_147

    :cond_1f7
    :try_start_1f7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4
    :try_end_1fb
    .catch Ljava/lang/Exception; {:try_start_1f7 .. :try_end_1fb} :catch_2fe

    move/from16 v19, v4

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-ne v11, v5, :cond_21d

    :try_start_201
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v14, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":s0:c"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_21b
    .catch Ljava/lang/Exception; {:try_start_201 .. :try_end_21b} :catch_147

    move-object v4, v5

    goto :goto_220

    :cond_21d
    :try_start_21d
    iget-object v5, v14, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    move-object v4, v5

    :goto_220
    move-object/from16 v20, v4

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21
    :try_end_226
    .catch Ljava/lang/Exception; {:try_start_21d .. :try_end_226} :catch_2fe

    const/16 v22, 0x0

    move-object v4, v8

    move-object v5, v12

    move-object v6, v13

    move-object/from16 v7, v20

    move-object/from16 v23, v8

    move-object/from16 v8, v21

    move v2, v9

    const/16 v16, 0x0

    move v9, v11

    move-object/from16 v21, v10

    move/from16 v10, v22

    :try_start_239
    invoke-static/range {v4 .. v10}, Lcom/android/server/MyContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v4
    :try_end_23d
    .catch Ljava/lang/Exception; {:try_start_239 .. :try_end_23d} :catch_2d5

    if-eqz v4, :cond_24f

    :try_start_23f
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v6, "addAppToContainer: addEntryToMac failed"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_248
    .catch Ljava/lang/Exception; {:try_start_23f .. :try_end_248} :catch_24a

    const/4 v4, -0x1

    return v4

    :catch_24a
    move-exception v0

    move-object/from16 v5, v23

    goto/16 :goto_303

    :cond_24f
    :try_start_24f
    invoke-virtual {v1, v13, v3, v12, v2}, Lcom/android/server/MyContainer;->loadContainerSetting(Ljava/lang/String;ILjava/lang/String;Z)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_26a

    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v6, "addAppToContainer: loadContainerSetting failed"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4
    :try_end_263
    .catch Ljava/lang/Exception; {:try_start_24f .. :try_end_263} :catch_2d5

    move-object/from16 v5, v23

    :try_start_265
    invoke-static {v5, v12, v13, v4, v11}, Lcom/android/server/MyContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    const/4 v4, -0x1

    return v4

    :cond_26a
    move-object/from16 v5, v23

    sget-boolean v4, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v4, :cond_27a

    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string/jumbo v7, "load container setting is done"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27a
    if-nez v2, :cond_2b1

    const/4 v4, 0x3

    if-ne v11, v4, :cond_2b1

    sget-boolean v4, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v4, :cond_29c

    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "relabelAppDir "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29c
    sget-object v4, Lcom/android/server/MyContainer;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/seams/SEAMSPolicy;

    move-result-object v4

    invoke-virtual {v4, v13}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->relabelAppDir(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2b1

    sget-object v4, Lcom/android/server/MyContainer;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/seams/SEAMSPolicy;

    move-result-object v4

    invoke-virtual {v4, v13}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->relabelAppDir(Ljava/lang/String;)I
    :try_end_2b1
    .catch Ljava/lang/Exception; {:try_start_265 .. :try_end_2b1} :catch_2fc

    :cond_2b1
    nop

    nop

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_2d4

    sget-object v0, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "MyContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "leave addAppToContainer + containerID ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d4
    return v16

    :catch_2d5
    move-exception v0

    move-object/from16 v5, v23

    goto :goto_303

    :cond_2d9
    move-object v5, v8

    move v2, v9

    move-object/from16 v21, v10

    :try_start_2dd
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addAppToContainer, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " seinfo is null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2fa
    .catch Ljava/lang/Exception; {:try_start_2dd .. :try_end_2fa} :catch_2fc

    const/4 v4, -0x1

    return v4

    :catch_2fc
    move-exception v0

    goto :goto_303

    :catch_2fe
    move-exception v0

    move-object v5, v8

    move v2, v9

    move-object/from16 v21, v10

    :goto_303
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string/jumbo v7, "leave addAppToContainer + Exception e + Returning Policy Failed"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x1

    return v4
.end method

.method public changeAppDomain(Ljava/lang/String;ILjava/lang/String;Z)I
    .registers 27

    move-object/from16 v1, p0

    move/from16 v9, p2

    move/from16 v10, p4

    const/4 v0, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    new-array v11, v3, [Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    sget-boolean v4, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v4, :cond_37

    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "enter changeAppDomain : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39

    :cond_37
    move-object/from16 v7, p1

    :goto_39
    const/4 v14, 0x3

    if-eq v9, v14, :cond_47

    sget-object v3, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "MyContainer"

    const-string v5, "Apptype not SEAMSPolicy.GENERIC_SECURED_APPTYPE"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x3

    return v3

    :cond_47
    invoke-static/range {p1 .. p1}, Lcom/android/server/MyContainer;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/4 v8, -0x1

    if-nez v15, :cond_58

    sget-object v3, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "MyContainer"

    const-string v5, " changeAppDomain failed, no packageName found"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_58
    if-eq v10, v3, :cond_63

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->hasDDCContainers()Z

    move-result v4

    if-nez v4, :cond_63

    invoke-virtual {v1, v12, v13}, Lcom/android/server/MyContainer;->createChangeDomain(II)I

    :cond_63
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/MyContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v7

    const/4 v4, -0x2

    if-nez v7, :cond_74

    sget-object v3, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v6, "changeDomainMDMID is null, Returning null"

    invoke-virtual {v3, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_74
    iget-object v5, v7, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v6, v7, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    const/16 v14, 0x3ff

    invoke-static {v5, v6, v14}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_8a

    sget-object v3, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v6, "changeAppDomain, Given Container ID not created by Caller - Returning Refused"

    invoke-virtual {v3, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_8a
    sget-boolean v4, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v4, :cond_97

    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v6, "changeAppDomain, instance of MyContainer "

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_97
    const/4 v6, 0x0

    if-eqz v10, :cond_af

    invoke-virtual {v1, v15}, Lcom/android/server/MyContainer;->getSignatureFromMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_aa

    sget-object v3, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "MyContainer"

    const-string v5, "changeAppDomain, signature is null"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_aa
    move-object v14, v0

    move-object/from16 v17, v2

    goto/16 :goto_137

    :cond_af
    invoke-static {v15}, Lcom/android/server/MyContainer;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_bf

    sget-object v3, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "MyContainer"

    const-string v5, "changeAppDomain, sigs is null"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_bf
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    sget-boolean v4, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v4, :cond_d3

    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v14, "changeAppDomain, get signature"

    invoke-virtual {v4, v5, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d3
    aput-object v0, v11, v6

    invoke-static {v15, v11}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_e6

    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "MyContainer"

    const-string v6, "changeAppDomain, Got Application Info"

    invoke-virtual {v5, v14, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e6
    if-nez v4, :cond_f2

    sget-object v3, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v6, "Can\'t get appInfo from package"

    invoke-virtual {v3, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_f2
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->allowContainerSpace:Ljava/lang/String;

    const/16 v6, -0x9

    if-eqz v5, :cond_10c

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->allowContainerSpace:Ljava/lang/String;

    const/16 v14, 0x2bc

    invoke-static {v5, v3, v14, v9}, Lcom/android/server/MyContainer;->checkSpaceRange(Ljava/lang/String;III)I

    move-result v3

    if-eqz v3, :cond_10c

    sget-object v3, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v8, "changeAppDomain, Given Package Name has a non-empty third party Container Allow Category"

    invoke-virtual {v3, v5, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_10c
    sget-object v3, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v14, "changeAppDomain, Got Application Info, Seinfo is not null"

    invoke-virtual {v3, v5, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, v4, Landroid/content/pm/ApplicationInfo;->space:I

    if-lez v3, :cond_129

    iget v3, v4, Landroid/content/pm/ApplicationInfo;->space:I

    const/16 v5, 0x1f5

    if-ge v3, v5, :cond_129

    sget-object v3, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v8, "changeAppDomain, ERROR_ALREADY_CONTAINER_APP is returned"

    invoke-virtual {v3, v5, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_129
    iget v3, v4, Landroid/content/pm/ApplicationInfo;->space:I

    if-nez v3, :cond_aa

    sget-object v3, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v6, "changeAppDomain, Got Application Info, appinfo.category is 0"

    invoke-virtual {v3, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :goto_137
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_144

    sget-object v0, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    const-string v3, " changeAppDomain 103"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_144
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/android/server/MyContainer;->MYCONTAINER_MAC_PERM:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_159

    sget-object v0, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    const-string v3, "changeAppDomain 104"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_159
    :try_start_159
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0
    :try_end_160
    .catch Ljava/lang/Exception; {:try_start_159 .. :try_end_160} :catch_228

    if-eqz v10, :cond_17e

    const/16 v2, 0x3ff

    :try_start_164
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v14, v15, v3, v9}, Lcom/android/server/MyContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_16b
    .catch Ljava/lang/Exception; {:try_start_164 .. :try_end_16b} :catch_175

    move-object/from16 v20, v6

    move-object/from16 v18, v7

    move/from16 v21, v12

    const/16 v16, 0x0

    move v12, v8

    goto :goto_1ae

    :catch_175
    move-exception v0

    move-object v3, v6

    move-object/from16 v18, v7

    move/from16 v21, v12

    move v12, v8

    goto/16 :goto_22f

    :cond_17e
    const/16 v2, 0x3ff

    :try_start_180
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18
    :try_end_184
    .catch Ljava/lang/Exception; {:try_start_180 .. :try_end_184} :catch_228

    const/16 v19, 0x0

    move-object v2, v6

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, p3

    move-object/from16 v20, v6

    const/16 v16, 0x0

    move-object/from16 v6, v18

    move-object/from16 v18, v7

    move v7, v9

    move/from16 v21, v12

    move v12, v8

    move/from16 v8, v19

    :try_start_199
    invoke-static/range {v2 .. v8}, Lcom/android/server/MyContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v2
    :try_end_19d
    .catch Ljava/lang/Exception; {:try_start_199 .. :try_end_19d} :catch_224

    if-eqz v2, :cond_1ae

    :try_start_19f
    sget-object v2, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "MyContainer"

    const-string v4, "changeAppDomain: addEntryToMac failed"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a8
    .catch Ljava/lang/Exception; {:try_start_19f .. :try_end_1a8} :catch_1a9

    return v12

    :catch_1a9
    move-exception v0

    move-object/from16 v3, v20

    goto/16 :goto_22f

    :cond_1ae
    :goto_1ae
    :try_start_1ae
    aget-object v2, v11, v16

    invoke-virtual {v1, v15, v0, v2, v10}, Lcom/android/server/MyContainer;->loadContainerSetting(Ljava/lang/String;ILjava/lang/String;Z)I

    move-result v2

    if-ne v2, v12, :cond_1cb

    sget-object v2, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "MyContainer"

    const-string v4, "changeAppDomain: loadContainerSetting failed"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x3ff

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1c5
    .catch Ljava/lang/Exception; {:try_start_1ae .. :try_end_1c5} :catch_224

    move-object/from16 v3, v20

    :try_start_1c7
    invoke-static {v3, v14, v15, v2, v9}, Lcom/android/server/MyContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    return v12

    :cond_1cb
    move-object/from16 v3, v20

    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_1db

    sget-object v2, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "MyContainer"

    const-string/jumbo v5, "load container setting is done"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1db
    if-nez v10, :cond_212

    const/4 v2, 0x3

    if-ne v9, v2, :cond_212

    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_1fd

    sget-object v2, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "MyContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "relabelAppDir "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1fd
    sget-object v2, Lcom/android/server/MyContainer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/seams/SEAMSPolicy;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->relabelAppDir(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_212

    sget-object v2, Lcom/android/server/MyContainer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/seams/SEAMSPolicy;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->relabelAppDir(Ljava/lang/String;)I
    :try_end_212
    .catch Ljava/lang/Exception; {:try_start_1c7 .. :try_end_212} :catch_222

    :cond_212
    nop

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_221

    sget-object v0, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    const-string/jumbo v4, "leave changeAppDomain"

    invoke-virtual {v0, v2, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_221
    return v16

    :catch_222
    move-exception v0

    goto :goto_22f

    :catch_224
    move-exception v0

    move-object/from16 v3, v20

    goto :goto_22f

    :catch_228
    move-exception v0

    move-object v3, v6

    move-object/from16 v18, v7

    move/from16 v21, v12

    move v12, v8

    :goto_22f
    sget-object v2, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "MyContainer"

    const-string/jumbo v5, "leave changeAppDomain + Exception e + Returning Policy Failed"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v12
.end method

.method protected checkIfSingleContainerOwnerIsBeingAdded(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_c

    const-string v1, "MyContainer"

    const-string v2, "Entered checkIfSingleContainerOwnerIsBeingAdded"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-virtual {p0}, Lcom/android/server/MyContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v1

    if-nez v1, :cond_1a

    const-string v2, "MyContainer"

    const-string v3, "checkIfSingleContainerOwnerIsBeingAdded, genericMDMID is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1a
    iget-object v2, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_2d

    const-string v2, "MyContainer"

    const-string v3, "checkIfAgentIsBeingAdded returning true"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    iget-object v2, p0, Lcom/android/server/MyContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->getPackageManagerSEAMS()Lcom/android/server/pm/PackageManagerSEAMS;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/PackageManagerSEAMS;->checkIfSingleContainerOwnerIsBeingAdded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3b} :catch_3d

    return v2

    :cond_3c
    goto :goto_41

    :catch_3d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_41
    const-string v1, "MyContainer"

    const-string v2, "checkIfSingleContainerOwnerIsBeingAdded, false is returned"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public createChangeDomain(II)I
    .registers 19

    move-object/from16 v1, p0

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_10

    sget-object v0, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    const-string/jumbo v3, "enter createChangeDomain"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    move v2, v0

    const/4 v3, -0x1

    :try_start_19
    new-instance v0, Ljava/io/File;

    sget-object v4, Lcom/android/server/MyContainer;->MYCONTAINER_SEANDROID_FOLDER:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_50

    sget-boolean v4, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v4, :cond_47

    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " does not exist. Creating dir"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_47
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    invoke-virtual {v0, v5, v5}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v0, v5, v5}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_50} :catch_141

    :cond_50
    nop

    new-instance v0, Ljava/io/File;

    sget-object v4, Lcom/android/server/MyContainer;->MYCONTAINER_MAC_PERM:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/MyContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v4

    if-nez v4, :cond_68

    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "createChangeDomain, changeDomainMDMID is null"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_68
    sget-boolean v6, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v6, :cond_75

    sget-object v6, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "addEntryToMac ok!"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_75
    new-array v5, v5, [Ljava/lang/String;

    iget-object v6, v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v6, v5, v13

    iget-object v6, v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    sget-boolean v6, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v6, :cond_a9

    sget-object v6, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "createChangeDomain, Got Application Info"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createChangeDomain, appInfo.seInfo:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v14, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a9
    iget v6, v14, Landroid/content/pm/ApplicationInfo;->space:I

    if-eqz v6, :cond_bf

    iget v6, v14, Landroid/content/pm/ApplicationInfo;->space:I

    const/16 v7, 0x1f5

    if-ge v6, v7, :cond_bf

    sget-object v3, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "createChangeDomain, The Agent is a Container App"

    invoke-virtual {v3, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, -0x9

    return v3

    :cond_bf
    iget-object v6, v1, Lcom/android/server/MyContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->getPackageManagerSEAMS()Lcom/android/server/pm/PackageManagerSEAMS;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v8, v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/android/server/pm/PackageManagerSEAMS;->createDDCContainerID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    const/4 v6, -0x7

    if-ne v15, v6, :cond_da

    sget-object v3, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "createChangeDomain, Generic Container Count Overflow"

    invoke-virtual {v3, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_da
    iget-object v7, v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iget-object v8, v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v9, v14, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    const/4 v12, 0x1

    move-object v6, v0

    invoke-static/range {v6 .. v12}, Lcom/android/server/MyContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v6

    if-eqz v6, :cond_104

    sget-object v6, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "createChangeDomain: addEntryToMac failed"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v1, Lcom/android/server/MyContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->getPackageManagerSEAMS()Lcom/android/server/pm/PackageManagerSEAMS;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v8, v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v15}, Lcom/android/server/pm/PackageManagerSEAMS;->removeContainerID(Ljava/lang/String;Ljava/lang/String;I)I

    return v3

    :cond_104
    iget-object v6, v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    aget-object v7, v5, v13

    invoke-virtual {v1, v6, v2, v7, v13}, Lcom/android/server/MyContainer;->loadContainerSetting(Ljava/lang/String;ILjava/lang/String;Z)I

    move-result v6

    if-ne v6, v3, :cond_130

    sget-object v6, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "createChangeDomain: loadcontainersetting failed"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iget-object v7, v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v6, v7, v8, v13}, Lcom/android/server/MyContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v6, v1, Lcom/android/server/MyContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->getPackageManagerSEAMS()Lcom/android/server/pm/PackageManagerSEAMS;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v8, v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v15}, Lcom/android/server/pm/PackageManagerSEAMS;->removeContainerID(Ljava/lang/String;Ljava/lang/String;I)I

    return v3

    :cond_130
    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_13e

    sget-object v3, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string/jumbo v7, "load container setting is done"

    invoke-virtual {v3, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13e
    const/16 v3, 0x3ff

    return v3

    :catch_141
    move-exception v0

    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v6, "createChangeDomain, Issue with myContainerDir directory"

    invoke-virtual {v4, v5, v6, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v3
.end method

.method public createSEContainer(II)I
    .registers 19

    move-object/from16 v1, p0

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_10

    sget-object v0, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    const-string/jumbo v3, "enter createContainer"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    move v2, v0

    const/4 v3, -0x1

    :try_start_19
    new-instance v0, Ljava/io/File;

    sget-object v4, Lcom/android/server/MyContainer;->MYCONTAINER_SEANDROID_FOLDER:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_60

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->hasGenericContainers()Z

    move-result v4

    if-eqz v4, :cond_37

    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v6, "createSEContainer, Issue with myContainerDir directory"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_37
    sget-boolean v4, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v4, :cond_57

    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " does not exist. Creating dir"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_57
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    invoke-virtual {v0, v5, v5}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v0, v5, v5}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_60} :catch_196

    :cond_60
    nop

    new-instance v0, Ljava/io/File;

    sget-object v4, Lcom/android/server/MyContainer;->MYCONTAINER_MAC_PERM:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/MyContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v4

    if-nez v4, :cond_78

    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "createSEContainer, genericMDMID is null"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_78
    sget-boolean v6, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v6, :cond_85

    sget-object v6, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "addEntryToMac ok!"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_85
    new-array v5, v5, [Ljava/lang/String;

    iget-object v6, v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v6, v5, v13

    iget-object v6, v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    sget-boolean v6, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v6, :cond_b9

    sget-object v6, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "createSEContainer, Got Application Info"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createSEContainer, appInfo.seInfo: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v14, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b9
    iget v6, v14, Landroid/content/pm/ApplicationInfo;->space:I

    if-eqz v6, :cond_cf

    iget v6, v14, Landroid/content/pm/ApplicationInfo;->space:I

    const/16 v7, 0x1f5

    if-ge v6, v7, :cond_cf

    sget-object v3, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "createSEContainer, The Agent is a Container App"

    invoke-virtual {v3, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, -0x9

    return v3

    :cond_cf
    iget-object v6, v1, Lcom/android/server/MyContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->getPackageManagerSEAMS()Lcom/android/server/pm/PackageManagerSEAMS;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v8, v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/android/server/pm/PackageManagerSEAMS;->createContainer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    const/4 v6, -0x7

    if-ne v15, v6, :cond_ea

    sget-object v3, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "createContainer, Generic Container Count Overflow"

    invoke-virtual {v3, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_ea
    invoke-static {v15}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v6

    if-eqz v6, :cond_154

    iget-object v7, v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iget-object v8, v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v9, v14, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    const/4 v12, 0x1

    move-object v6, v0

    invoke-static/range {v6 .. v12}, Lcom/android/server/MyContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v6

    if-eqz v6, :cond_11a

    sget-object v6, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "createSEContainer: addEntryToMac failed"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v1, Lcom/android/server/MyContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->getPackageManagerSEAMS()Lcom/android/server/pm/PackageManagerSEAMS;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v8, v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v15}, Lcom/android/server/pm/PackageManagerSEAMS;->removeContainerID(Ljava/lang/String;Ljava/lang/String;I)I

    return v3

    :cond_11a
    iget-object v6, v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    aget-object v7, v5, v13

    invoke-virtual {v1, v6, v2, v7, v13}, Lcom/android/server/MyContainer;->loadContainerSetting(Ljava/lang/String;ILjava/lang/String;Z)I

    move-result v6

    if-ne v6, v3, :cond_146

    sget-object v6, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "createSEContainer: loadcontainersetting failed"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iget-object v7, v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v6, v7, v8, v13}, Lcom/android/server/MyContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v6, v1, Lcom/android/server/MyContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->getPackageManagerSEAMS()Lcom/android/server/pm/PackageManagerSEAMS;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v8, v4, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v15}, Lcom/android/server/pm/PackageManagerSEAMS;->removeContainerID(Ljava/lang/String;Ljava/lang/String;I)I

    return v3

    :cond_146
    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_154

    sget-object v3, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string/jumbo v7, "load container setting is done"

    invoke-virtual {v3, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_154
    sget-object v3, Lcom/android/server/MyContainer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/seams/SEAMSPolicy;

    move-result-object v3

    invoke-virtual {v3, v15, v13}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->setSEContainerClipboardMode(II)I

    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_16b

    sget-object v3, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string/jumbo v7, "set clipboard default to false"

    invoke-virtual {v3, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16b
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.samsung.intent.action.SECONTAINER_ADDED"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "secontainerid"

    invoke-virtual {v3, v6, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v6, Lcom/android/server/MyContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object v6, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Broadcast addition of secontainer:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v15

    :catch_196
    move-exception v0

    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v6, "createSEContainer, Issue with myContainerDir directory"

    invoke-virtual {v4, v5, v6, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v3
.end method

.method public getPackageNamesFromSEContainer(II)[Ljava/lang/String;
    .registers 9

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "MyContainer"

    const-string v2, "Entered Get Package Names from Container"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    invoke-static {p1}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_bf

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_21

    sget-object v0, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    const-string v3, "Given Container ID is my Container ID"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    invoke-virtual {p0}, Lcom/android/server/MyContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v0

    if-nez v0, :cond_32

    sget-object v2, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "MyContainer"

    const-string/jumbo v4, "genericMDMID is null, Returning null"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_32
    sget-object v2, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "MyContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "genericmdmid packagename = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "MyContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "genericmdmid certs= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "MyContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "container id= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-static {v2, v3, p1}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_95

    sget-object v2, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "MyContainer"

    const-string/jumbo v4, "getPackageNamesFromSEContainer, Given Container ID not created by Caller - Returning Refused"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_95
    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ne p2, v2, :cond_a4

    iget-object v1, p0, Lcom/android/server/MyContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->getPackageManagerSEAMS()Lcom/android/server/pm/PackageManagerSEAMS;

    move-result-object v1

    invoke-virtual {v1, p1, v3, p2}, Lcom/android/server/pm/PackageManagerSEAMS;->getPackageNamesFromSEContainerID(III)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_a4
    const/4 v2, 0x4

    if-ne p2, v2, :cond_bf

    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_b4

    sget-object v1, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    const-string v4, "Calling getContainerAllowPackageNamesFromSEContainer"

    invoke-virtual {v1, v2, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b4
    iget-object v1, p0, Lcom/android/server/MyContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->getPackageManagerSEAMS()Lcom/android/server/pm/PackageManagerSEAMS;

    move-result-object v1

    invoke-virtual {v1, p1, v3, p2}, Lcom/android/server/pm/PackageManagerSEAMS;->getContainerAllowPackageNamesFromSEContainer(III)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_bf
    sget-object v0, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    const-string/jumbo v3, "getPackageNamesFromSEContainer, Given Container ID is not my Container ID, returning null"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getSEContainerIDs()Ljava/util/HashSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_e

    sget-object v0, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "MyContainer"

    const-string/jumbo v2, "enter getContainerIDs"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    invoke-virtual {p0}, Lcom/android/server/MyContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v0

    if-nez v0, :cond_20

    sget-object v1, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    const-string/jumbo v3, "getSEContainerIDs, genericMDMID is null, Returning null"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1

    :cond_20
    iget-object v1, p0, Lcom/android/server/MyContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->getPackageManagerSEAMS()Lcom/android/server/pm/PackageManagerSEAMS;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerSEAMS;->getMyContainerIDs(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    return-object v1
.end method

.method public getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I
    .registers 12

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_e

    sget-object v0, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "MyContainer"

    const-string/jumbo v2, "enter getSEContainerIDsfromPackageName"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    invoke-static {p1}, Lcom/android/server/MyContainer;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/MyContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_24

    sget-object v2, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "MyContainer"

    const-string/jumbo v4, "genericMDMID is null, Returning null"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_24
    const/4 v2, 0x3

    if-ne p2, v2, :cond_3f

    iget-object v1, p0, Lcom/android/server/MyContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->getPackageManagerSEAMS()Lcom/android/server/pm/PackageManagerSEAMS;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    const/4 v7, 0x2

    move-object v6, p1

    move v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/PackageManagerSEAMS;->getSEContainerIDFromPackageName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    return-object v2

    :cond_3f
    const/4 v2, 0x4

    if-ne p2, v2, :cond_54

    iget-object v1, p0, Lcom/android/server/MyContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->getPackageManagerSEAMS()Lcom/android/server/pm/PackageManagerSEAMS;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    const/4 v7, 0x2

    move-object v6, p1

    move v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/PackageManagerSEAMS;->getSEContainerIDsFromContainerAllowPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[I

    move-result-object v1

    return-object v1

    :cond_54
    sget-object v2, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "MyContainer"

    const-string/jumbo v4, "getSEContainerIDsfromPackageName, null is returned"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getSignatureFromMac(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/server/MyContainer;->MYCONTAINER_MAC_PERM:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/android/server/MyContainer;->getSignatureEntryFromMac(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .registers 29

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const/4 v0, 0x0

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_17

    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string/jumbo v7, "enter removeAppFromContainer"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    const/4 v5, 0x3

    const/4 v6, 0x4

    if-eq v4, v5, :cond_28

    if-eq v4, v6, :cond_28

    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "Apptype not 3 or 4"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x3

    return v5

    :cond_28
    invoke-static/range {p1 .. p1}, Lcom/android/server/MyContainer;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, -0x1

    if-nez v13, :cond_39

    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, " removeAppFromContainer failed, no packageName found"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v14

    :cond_39
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/MyContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v15

    const/4 v7, -0x2

    if-nez v15, :cond_4b

    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string/jumbo v8, "removeAppFromContainer, genericMDMID is null, Returning null"

    invoke-virtual {v5, v6, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_4b
    iget-object v8, v15, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v9, v15, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-static {v8, v9, v3}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_60

    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string/jumbo v8, "removeAppFromContainer, Given Container ID not created by Caller - Returning Refused - Container Allow Package Case"

    invoke-virtual {v5, v6, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_60
    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v13}, Lcom/android/server/MyContainer;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    if-nez v2, :cond_79

    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v9, " removeAppFromContainer, Input Certificate is null"

    invoke-virtual {v5, v6, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, -0xe

    return v5

    :cond_79
    const/4 v9, 0x0

    if-nez v12, :cond_8e

    sget-object v10, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "MyContainer"

    const-string/jumbo v14, "removeAppFromContainer, signature is null, package not installed yet"

    invoke-virtual {v10, v11, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v8, v2, v9

    const/4 v0, 0x1

    :cond_89
    move v11, v0

    move/from16 v17, v7

    move-object v14, v8

    goto :goto_d8

    :cond_8e
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v8, v10

    check-cast v8, Ljava/lang/String;

    aget-object v10, v2, v9

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c9

    sget-boolean v10, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v10, :cond_ab

    sget-object v10, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "MyContainer"

    const-string/jumbo v14, "removeAppFromContainer, cert matches"

    invoke-virtual {v10, v11, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ab
    const/4 v7, 0x1

    sget-boolean v10, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v10, :cond_c9

    sget-object v10, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "MyContainer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "removeAppFromContainer, certMatch: "

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v11, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c9
    if-nez v7, :cond_89

    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string/jumbo v9, "removeAppFromContainer, input certificate does not match the certificate extracted from package"

    invoke-virtual {v5, v6, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, -0xd

    return v5

    :goto_d8
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_e5

    sget-object v0, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, " removeAppFromContainer 103"

    invoke-virtual {v0, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e5
    new-instance v0, Ljava/io/File;

    sget-object v7, Lcom/android/server/MyContainer;->MYCONTAINER_MAC_PERM:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_fa

    sget-object v0, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, " removeAppFromContainer 104"

    invoke-virtual {v0, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_fa
    :try_start_fa
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    move/from16 v18, v7

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    move/from16 v19, v7

    sget-boolean v7, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_10f} :catch_2d0

    if-eqz v7, :cond_134

    :try_start_111
    sget-object v7, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "MyContainer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " removeAppFromContainer tempPackage = "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v8, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_134

    :catch_12a
    move-exception v0

    move-object/from16 v21, v10

    move-object/from16 v20, v12

    move-object/from16 v23, v15

    move v15, v11

    goto/16 :goto_2d8

    :cond_134
    :goto_134
    if-eq v4, v6, :cond_14e

    invoke-virtual {v1, v13}, Lcom/android/server/MyContainer;->isProcessRunning(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14e

    invoke-virtual {v1, v13}, Lcom/android/server/MyContainer;->checkIfSingleContainerOwnerIsBeingAdded(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_14e

    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string/jumbo v7, "removeAppFromContainer, App is Running and is not an Agent which owns a Single Container"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14c
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_14c} :catch_12a

    const/4 v5, -0x8

    return v5

    :cond_14e
    :try_start_14e
    invoke-static {v13, v2}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    sget-boolean v7, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_154
    .catch Ljava/lang/Exception; {:try_start_14e .. :try_end_154} :catch_2d0

    if-eqz v7, :cond_160

    :try_start_156
    sget-object v7, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "MyContainer"

    const-string/jumbo v9, "removeAppFromContainer ok!11"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_160
    .catch Ljava/lang/Exception; {:try_start_156 .. :try_end_160} :catch_12a

    :cond_160
    :try_start_160
    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;
    :try_end_162
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_162} :catch_2d0

    if-eqz v7, :cond_2a7

    const/4 v7, 0x3

    if-ne v4, v7, :cond_23a

    :try_start_167
    sget-boolean v7, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_169
    .catch Ljava/lang/Exception; {:try_start_167 .. :try_end_169} :catch_230

    if-eqz v7, :cond_188

    :try_start_16b
    sget-object v7, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "MyContainer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "remove ContainerID="

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_188
    .catch Ljava/lang/Exception; {:try_start_16b .. :try_end_188} :catch_12a

    :cond_188
    :try_start_188
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Landroid/content/pm/ApplicationInfo;->space:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v14, v13, v6, v4}, Lcom/android/server/MyContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v6
    :try_end_19f
    .catch Ljava/lang/Exception; {:try_start_188 .. :try_end_19f} :catch_230

    if-nez v6, :cond_1ad

    :try_start_1a1
    sget-object v6, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string/jumbo v8, "removeAppFromContainer, removeEntryFromMac failed"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1ab
    .catch Ljava/lang/Exception; {:try_start_1a1 .. :try_end_1ab} :catch_12a

    const/4 v6, -0x1

    return v6

    :cond_1ad
    const/4 v6, 0x0

    :try_start_1ae
    aget-object v7, v2, v6

    invoke-virtual {v1, v13, v3, v7, v11}, Lcom/android/server/MyContainer;->loadContainerSetting(Ljava/lang/String;ILjava/lang/String;Z)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1ef

    sget-object v6, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string/jumbo v8, "removeAppFromContainer, loadContainerSetting failed"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v5, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Landroid/content/pm/ApplicationInfo;->space:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16
    :try_end_1d6
    .catch Ljava/lang/Exception; {:try_start_1ae .. :try_end_1d6} :catch_230

    const/16 v20, 0x3

    const/16 v21, 0x0

    move-object v6, v10

    move-object v7, v14

    move-object v8, v13

    move-object/from16 v22, v10

    move-object/from16 v10, v16

    move-object/from16 v23, v15

    move v15, v11

    move/from16 v11, v20

    move-object/from16 v20, v12

    move/from16 v12, v21

    :try_start_1ea
    invoke-static/range {v6 .. v12}, Lcom/android/server/MyContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    const/4 v6, -0x1

    return v6

    :cond_1ef
    move-object/from16 v22, v10

    move-object/from16 v20, v12

    move-object/from16 v23, v15

    move v15, v11

    if-nez v15, :cond_241

    sget-object v6, Lcom/android/server/MyContainer;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/seams/SEAMSPolicy;

    move-result-object v6

    invoke-virtual {v6, v13}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->relabelAppDir(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_20d

    sget-object v6, Lcom/android/server/MyContainer;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/seams/SEAMSPolicy;

    move-result-object v6

    invoke-virtual {v6, v13}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->relabelAppDir(Ljava/lang/String;)I

    :cond_20d
    sget-boolean v6, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v6, :cond_241

    sget-object v6, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "relabelAppDir1 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22a
    .catch Ljava/lang/Exception; {:try_start_1ea .. :try_end_22a} :catch_22b

    goto :goto_241

    :catch_22b
    move-exception v0

    move-object/from16 v21, v22

    goto/16 :goto_2d8

    :catch_230
    move-exception v0

    move-object/from16 v20, v12

    move-object/from16 v23, v15

    move v15, v11

    move-object/from16 v21, v10

    goto/16 :goto_2d8

    :cond_23a
    move-object/from16 v22, v10

    move-object/from16 v20, v12

    move-object/from16 v23, v15

    move v15, v11

    :cond_241
    :goto_241
    const/4 v6, 0x4

    if-ne v4, v6, :cond_295

    :try_start_244
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6
    :try_end_248
    .catch Ljava/lang/Exception; {:try_start_244 .. :try_end_248} :catch_291

    move-object/from16 v12, v22

    :try_start_24a
    invoke-static {v12, v14, v13, v6, v4}, Lcom/android/server/MyContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v6
    :try_end_24e
    .catch Ljava/lang/Exception; {:try_start_24a .. :try_end_24e} :catch_28d

    if-nez v6, :cond_261

    :try_start_250
    sget-object v6, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string/jumbo v8, "removeAppFromContainer_GENERIC_TRUSTED_APPTYPE, removeEntryFromMac failed"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25a
    .catch Ljava/lang/Exception; {:try_start_250 .. :try_end_25a} :catch_25c

    const/4 v6, -0x1

    return v6

    :catch_25c
    move-exception v0

    move-object/from16 v21, v12

    goto/16 :goto_2d8

    :cond_261
    const/4 v6, 0x0

    :try_start_262
    aget-object v7, v2, v6

    invoke-virtual {v1, v13, v3, v7, v15}, Lcom/android/server/MyContainer;->loadContainerSetting(Ljava/lang/String;ILjava/lang/String;Z)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_28a

    sget-object v6, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string/jumbo v8, "removeAppFromContainer_GENERIC_TRUSTED_APPTYPE, loadContainerSetting failed"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v5, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10
    :try_end_27b
    .catch Ljava/lang/Exception; {:try_start_262 .. :try_end_27b} :catch_28d

    const/4 v11, 0x4

    const/16 v16, 0x0

    move-object v6, v12

    move-object v7, v14

    move-object v8, v13

    move-object/from16 v21, v12

    move/from16 v12, v16

    :try_start_285
    invoke-static/range {v6 .. v12}, Lcom/android/server/MyContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I
    :try_end_288
    .catch Ljava/lang/Exception; {:try_start_285 .. :try_end_288} :catch_2ce

    const/4 v6, -0x1

    return v6

    :cond_28a
    move-object/from16 v21, v12

    goto :goto_297

    :catch_28d
    move-exception v0

    move-object/from16 v21, v12

    goto :goto_2d8

    :catch_291
    move-exception v0

    move-object/from16 v21, v22

    goto :goto_2d8

    :cond_295
    move-object/from16 v21, v22

    :goto_297
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_2a5

    sget-object v0, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string/jumbo v6, "leave removeAppFromContainer"

    invoke-virtual {v0, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a5
    const/4 v0, 0x0

    return v0

    :cond_2a7
    move-object/from16 v21, v10

    move-object/from16 v20, v12

    move-object/from16 v23, v15

    move v15, v11

    :try_start_2ae
    sget-object v6, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "removeAppFromContainer, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " seinfo is null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2cc
    .catch Ljava/lang/Exception; {:try_start_2ae .. :try_end_2cc} :catch_2ce

    const/4 v6, -0x1

    return v6

    :catch_2ce
    move-exception v0

    goto :goto_2d8

    :catch_2d0
    move-exception v0

    move-object/from16 v21, v10

    move-object/from16 v20, v12

    move-object/from16 v23, v15

    move v15, v11

    :goto_2d8
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string/jumbo v7, "removeAppFromContainer failed"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x1

    return v5
.end method

.method public removeSEContainer(III)I
    .registers 16

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_e

    sget-object v0, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "MyContainer"

    const-string/jumbo v2, "enter destroyContainer"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/MyContainer;->MYCONTAINER_MAC_PERM:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/android/server/MyContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v2

    const/4 v3, -0x1

    if-nez v2, :cond_28

    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string/jumbo v6, "removeSEContainer, genericMDMID is null"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_28
    sget-boolean v4, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v4, :cond_85

    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string/jumbo v6, "genericMDMID is not null"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "destroyContainer:  package name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "destroyContainer:  certs = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "destroyContainer:  containerID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_85
    invoke-static {p3}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v4

    if-eqz v4, :cond_19a

    sget-object v4, Lcom/android/server/MyContainer;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/seams/SEAMSPolicy;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getSEContainerClipboardMode(I)I

    move-result v1

    sget-boolean v4, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v4, :cond_a2

    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v6, "Given containerID is myContainer ID"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a2
    const/4 v4, 0x3

    invoke-virtual {p0, p3, v4}, Lcom/android/server/MyContainer;->getPackageNamesFromSEContainer(II)[Ljava/lang/String;

    move-result-object v4

    const/16 v5, -0xb

    if-eqz v4, :cond_b9

    array-length v6, v4

    if-nez v6, :cond_af

    goto :goto_b9

    :cond_af
    sget-object v3, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "CONTAINER not empty"

    invoke-virtual {v3, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_b9
    :goto_b9
    sget-boolean v6, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v6, :cond_c6

    sget-object v6, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "container is empty"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c6
    const/4 v6, 0x4

    invoke-virtual {p0, p3, v6}, Lcom/android/server/MyContainer;->getPackageNamesFromSEContainer(II)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_db

    array-length v7, v6

    if-nez v7, :cond_d1

    goto :goto_db

    :cond_d1
    sget-object v3, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "Trusted Package List not emPty"

    invoke-virtual {v3, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_db
    :goto_db
    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_e8

    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "Trusted Packages List is empty"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e8
    iget-object v5, p0, Lcom/android/server/MyContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->getPackageManagerSEAMS()Lcom/android/server/pm/PackageManagerSEAMS;

    move-result-object v5

    iget-object v7, v2, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v8, v2, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v5, v7, v8, p3}, Lcom/android/server/pm/PackageManagerSEAMS;->removeContainerID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_18f

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_106

    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string/jumbo v8, "remove MyContainer ID Successful"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_106
    iget-object v5, v2, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iget-object v7, v2, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v0, v5, v7, v8, v9}, Lcom/android/server/MyContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_120

    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string/jumbo v8, "removeEntryFromMac failed"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_120
    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_12e

    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string/jumbo v8, "removeEntryFromMac Successful"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12e
    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.samsung.intent.action.SECONTAINER_REMOVED"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "secontainerid"

    invoke-virtual {v5, v7, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v7, Lcom/android/server/MyContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object v7, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "MyContainer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Broadcast removal of secontainer:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v1, :cond_183

    sget-object v3, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Generic clipboard for containerID:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " has:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", deleting the entry now"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p3, v1}, Lcom/android/server/MyContainer;->deleteSEContainerClipboardTableEntry(II)I

    goto :goto_18e

    :cond_183
    if-ne v1, v3, :cond_18e

    sget-object v3, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string v8, "Error retrieving status of Generic clipboard "

    invoke-virtual {v3, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18e
    :goto_18e
    return v9

    :cond_18f
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "MyContainer"

    const-string/jumbo v8, "remove MyContainer ID Failed"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_19a
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v6, "Not my containerID"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method
