.class public Lcom/android/server/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# static fields
.field private static APM_TYPE:I = 0x0

.field private static SDCARD_TYPE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ResourceManager"

.field private static WHITELIST_MAC_PERM:Ljava/lang/String;

.field private static WHITELIST_SEANDROID_FOLDER:Ljava/lang/String;

.field private static instance:Lcom/android/server/ResourceManager;

.field private static mSKLog:Lcom/android/server/SKLogger;


# instance fields
.field private mPms:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/security/whitelist/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ResourceManager;->WHITELIST_SEANDROID_FOLDER:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/security/whitelist/mac_permissions.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ResourceManager;->WHITELIST_MAC_PERM:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    const/4 v0, 0x1

    sput v0, Lcom/android/server/ResourceManager;->APM_TYPE:I

    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v0

    sput-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ResourceManager;->instance:Lcom/android/server/ResourceManager;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "ResourceManager"

    const-string/jumbo v2, "enter ResourceManager"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method private addAppToBlacklistInternal(ILjava/lang/String;[Ljava/lang/String;I)I
    .registers 23

    move/from16 v7, p1

    move-object/from16 v8, p3

    move/from16 v9, p4

    const/4 v1, 0x0

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_15

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "ResourceManager"

    const-string/jumbo v3, "enter addAppToBlacklist"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    const/4 v10, -0x1

    :try_start_16
    sget v0, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq v9, v0, :cond_1b

    return v10

    :cond_1b
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/android/server/ResourceManager;->WHITELIST_SEANDROID_FOLDER:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_52

    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_48

    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "ResourceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " does not exist. Creating dir"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_48
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v2}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v0, v2, v2}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_52} :catch_19a

    :cond_52
    nop

    invoke-static/range {p2 .. p2}, Lcom/android/server/ResourceManager;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_63

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "ResourceManager"

    const-string v3, " addAppToBlacklist failed, no packageName found"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    :cond_63
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_70

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "ResourceManager"

    const-string v3, "addAppToBlacklist"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_70
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v11, v7}, Lcom/android/server/ResourceManager;->getSignatureFromPackage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v12

    if-nez v8, :cond_88

    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_85

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "ResourceManager"

    const-string v5, " Input Certificate is null"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_85
    const/16 v3, -0xe

    return v3

    :cond_88
    const/4 v13, 0x0

    if-nez v12, :cond_a0

    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_98

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "ResourceManager"

    const-string v5, "addAppToBlacklist, signature is null, package not installed yet"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_98
    aget-object v2, v8, v13

    const/4 v1, 0x1

    :cond_9b
    move/from16 v16, v0

    move v15, v1

    move-object v14, v2

    goto :goto_de

    :cond_a0
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Ljava/lang/String;

    aget-object v3, v8, v13

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cc

    const/4 v0, 0x1

    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_cc

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "ResourceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addAppToBlacklist, certMatch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_cc
    if-nez v0, :cond_9b

    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_db

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "ResourceManager"

    const-string v5, "addAppToBlacklist, input certificate does not match the certificate extracted from package"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_db
    const/16 v3, -0xd

    return v3

    :goto_de
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_eb

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "ResourceManager"

    const-string v2, "addAppToBlacklist - open whitelist/mac_permissions file"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_eb
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/ResourceManager;->WHITELIST_MAC_PERM:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    :try_start_f3
    invoke-static {v11, v8}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    if-eqz v1, :cond_160

    sget-object v1, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "ResourceManager"

    const-string v3, "addAppToBlacklist, Got Application Info, Seinfo is not null"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "default"

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_10c} :catch_187

    if-eqz v1, :cond_11a

    :try_start_10e
    const-string/jumbo v1, "untrusted"

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_113} :catch_114

    goto :goto_11a

    :catch_114
    move-exception v0

    move-object/from16 v2, p0

    move-object v13, v6

    goto/16 :goto_18b

    :cond_11a
    :goto_11a
    move-object v1, v6

    move-object v2, v14

    move-object v3, v11

    move v4, v7

    move-object v5, v0

    move-object v13, v6

    move v6, v9

    :try_start_121
    invoke-static/range {v1 .. v6}, Lcom/android/server/ResourceManager;->addBlacklistEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;I)I

    move-result v1

    if-eqz v1, :cond_131

    sget-object v1, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "ResourceManager"

    const-string v3, "addBlacklistEntryToMac failed"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_130
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_130} :catch_15c

    return v10

    :cond_131
    move-object/from16 v2, p0

    :try_start_133
    invoke-direct {v2, v11, v7, v14, v15}, Lcom/android/server/ResourceManager;->loadContainerSetting(Ljava/lang/String;ILjava/lang/String;Z)I

    move-result v1

    if-ne v1, v10, :cond_13d

    invoke-static {v13, v11, v7, v9}, Lcom/android/server/ResourceManager;->removeBlacklistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z

    return v10

    :cond_13d
    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_14b

    sget-object v1, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "ResourceManager"

    const-string/jumbo v4, "load container setting is done"

    invoke-virtual {v1, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14b
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_14b} :catch_185

    :cond_14b
    nop

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_15a

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "ResourceManager"

    const-string/jumbo v3, "leave addAppToBlacklist"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15a
    const/4 v0, 0x0

    return v0

    :catch_15c
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_18b

    :cond_160
    move-object/from16 v2, p0

    move-object v13, v6

    :try_start_163
    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_184

    sget-object v1, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "ResourceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addAppToBlacklist, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " seInfo is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_184
    .catch Ljava/lang/Exception; {:try_start_163 .. :try_end_184} :catch_185

    :cond_184
    return v10

    :catch_185
    move-exception v0

    goto :goto_18b

    :catch_187
    move-exception v0

    move-object/from16 v2, p0

    move-object v13, v6

    :goto_18b
    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_199

    sget-object v1, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "ResourceManager"

    const-string/jumbo v4, "leave addAppToBlacklist: Exception: Returning Policy Failed"

    invoke-virtual {v1, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_199
    return v10

    :catch_19a
    move-exception v0

    move-object/from16 v2, p0

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "ResourceManager"

    const-string v5, "Issue with whitelistDir directory"

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v10
.end method

.method protected static declared-synchronized addBlacklistEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;I)I
    .registers 42

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    const-class v6, Lcom/android/server/ResourceManager;

    monitor-enter v6

    :try_start_d
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "ResourceManager"

    const-string v8, "addBlacklistEntryToMac_begin"

    invoke-virtual {v0, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    move-object v7, v0

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->space:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->allowSpace:Ljava/lang/String;

    move-object v9, v0

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->allowContainerSpace:Ljava/lang/String;

    move-object v10, v0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0
    :try_end_30
    .catchall {:try_start_d .. :try_end_30} :catchall_766

    move-object v13, v0

    const/4 v0, 0x0

    move-object v14, v0

    :try_start_33
    invoke-virtual {v13}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    move-object v15, v0

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_3c
    .catch Lorg/xml/sax/SAXException; {:try_start_33 .. :try_end_3c} :catch_74d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_33 .. :try_end_3c} :catch_737
    .catch Ljavax/xml/transform/TransformerException; {:try_start_33 .. :try_end_3c} :catch_721
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3c} :catch_70b
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3c} :catch_6f4
    .catchall {:try_start_33 .. :try_end_3c} :catchall_766

    if-eqz v0, :cond_193

    :try_start_3e
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_bf

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "ResourceManager"
    :try_end_46
    .catch Lorg/xml/sax/SAXException; {:try_start_3e .. :try_end_46} :catch_17f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3e .. :try_end_46} :catch_16b
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3e .. :try_end_46} :catch_157
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_46} :catch_143
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_46} :catch_12f
    .catchall {:try_start_3e .. :try_end_46} :catchall_766

    move/from16 v17, v11

    :try_start_48
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4d
    .catch Lorg/xml/sax/SAXException; {:try_start_48 .. :try_end_4d} :catch_ad
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_48 .. :try_end_4d} :catch_9b
    .catch Ljavax/xml/transform/TransformerException; {:try_start_48 .. :try_end_4d} :catch_89
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4d} :catch_77
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4d} :catch_65
    .catchall {:try_start_48 .. :try_end_4d} :catchall_766

    move/from16 v18, v12

    :try_start_4f
    const-string/jumbo v12, "macPermFile exists "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v4, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c3

    :catch_65
    move-exception v0

    move/from16 v18, v12

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v7, p3

    goto/16 :goto_706

    :catch_77
    move-exception v0

    move/from16 v18, v12

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v7, p3

    goto/16 :goto_71d

    :catch_89
    move-exception v0

    move/from16 v18, v12

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v7, p3

    goto/16 :goto_733

    :catch_9b
    move-exception v0

    move/from16 v18, v12

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v7, p3

    goto/16 :goto_749

    :catch_ad
    move-exception v0

    move/from16 v18, v12

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v7, p3

    goto/16 :goto_75f

    :cond_bf
    move/from16 v17, v11

    move/from16 v18, v12

    :goto_c3
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_cd

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/File;->setWritable(Z)Z

    :cond_cd
    invoke-virtual {v15, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0
    :try_end_d1
    .catch Lorg/xml/sax/SAXException; {:try_start_4f .. :try_end_d1} :catch_11d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4f .. :try_end_d1} :catch_10b
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4f .. :try_end_d1} :catch_f9
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_d1} :catch_e7
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_d1} :catch_d5
    .catchall {:try_start_4f .. :try_end_d1} :catchall_766

    const/4 v12, 0x1

    move-object v14, v0

    goto/16 :goto_1e0

    :catch_d5
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v12, v18

    :goto_e3
    move/from16 v7, p3

    goto/16 :goto_706

    :catch_e7
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v12, v18

    :goto_f5
    move/from16 v7, p3

    goto/16 :goto_71d

    :catch_f9
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v12, v18

    :goto_107
    move/from16 v7, p3

    goto/16 :goto_733

    :catch_10b
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v12, v18

    :goto_119
    move/from16 v7, p3

    goto/16 :goto_749

    :catch_11d
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v12, v18

    :goto_12b
    move/from16 v7, p3

    goto/16 :goto_75f

    :catch_12f
    move-exception v0

    move/from16 v17, v11

    move/from16 v18, v12

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v7, p3

    goto/16 :goto_706

    :catch_143
    move-exception v0

    move/from16 v17, v11

    move/from16 v18, v12

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v7, p3

    goto/16 :goto_71d

    :catch_157
    move-exception v0

    move/from16 v17, v11

    move/from16 v18, v12

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v7, p3

    goto/16 :goto_733

    :catch_16b
    move-exception v0

    move/from16 v17, v11

    move/from16 v18, v12

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v7, p3

    goto/16 :goto_749

    :catch_17f
    move-exception v0

    move/from16 v17, v11

    move/from16 v18, v12

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v7, p3

    goto/16 :goto_75f

    :cond_193
    move/from16 v17, v11

    move/from16 v18, v12

    :try_start_197
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_199
    .catch Lorg/xml/sax/SAXException; {:try_start_197 .. :try_end_199} :catch_6e2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_197 .. :try_end_199} :catch_6d0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_197 .. :try_end_199} :catch_6be
    .catch Ljava/io/IOException; {:try_start_197 .. :try_end_199} :catch_6ac
    .catch Ljava/lang/Exception; {:try_start_197 .. :try_end_199} :catch_69a
    .catchall {:try_start_197 .. :try_end_199} :catchall_766

    if-eqz v0, :cond_1bc

    :try_start_19b
    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "ResourceManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addEntryToMac,"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " does not exist, creating file"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v4, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1bc
    .catch Lorg/xml/sax/SAXException; {:try_start_19b .. :try_end_1bc} :catch_11d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_19b .. :try_end_1bc} :catch_10b
    .catch Ljavax/xml/transform/TransformerException; {:try_start_19b .. :try_end_1bc} :catch_f9
    .catch Ljava/io/IOException; {:try_start_19b .. :try_end_1bc} :catch_e7
    .catch Ljava/lang/Exception; {:try_start_19b .. :try_end_1bc} :catch_d5
    .catchall {:try_start_19b .. :try_end_1bc} :catchall_766

    :cond_1bc
    :try_start_1bc
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->createNewFile()Z
    :try_end_1bf
    .catch Ljava/io/IOException; {:try_start_1bc .. :try_end_1bf} :catch_1c0
    .catch Lorg/xml/sax/SAXException; {:try_start_1bc .. :try_end_1bf} :catch_11d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1bc .. :try_end_1bf} :catch_10b
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1bc .. :try_end_1bf} :catch_f9
    .catch Ljava/lang/Exception; {:try_start_1bc .. :try_end_1bf} :catch_d5
    .catchall {:try_start_1bc .. :try_end_1bf} :catchall_766

    goto :goto_1c5

    :catch_1c0
    move-exception v0

    move-object v4, v0

    :try_start_1c2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1c5
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v0
    :try_end_1c9
    .catch Lorg/xml/sax/SAXException; {:try_start_1c2 .. :try_end_1c9} :catch_6e2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1c2 .. :try_end_1c9} :catch_6d0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1c2 .. :try_end_1c9} :catch_6be
    .catch Ljava/io/IOException; {:try_start_1c2 .. :try_end_1c9} :catch_6ac
    .catch Ljava/lang/Exception; {:try_start_1c2 .. :try_end_1c9} :catch_69a
    .catchall {:try_start_1c2 .. :try_end_1c9} :catchall_766

    if-nez v0, :cond_1cf

    const/4 v4, 0x1

    :try_start_1cc
    invoke-virtual {v1, v4}, Ljava/io/File;->setWritable(Z)Z
    :try_end_1cf
    .catch Lorg/xml/sax/SAXException; {:try_start_1cc .. :try_end_1cf} :catch_11d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1cc .. :try_end_1cf} :catch_10b
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1cc .. :try_end_1cf} :catch_f9
    .catch Ljava/io/IOException; {:try_start_1cc .. :try_end_1cf} :catch_e7
    .catch Ljava/lang/Exception; {:try_start_1cc .. :try_end_1cf} :catch_d5
    .catchall {:try_start_1cc .. :try_end_1cf} :catchall_766

    :cond_1cf
    :try_start_1cf
    invoke-virtual {v15}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    move-object v14, v0

    const-string/jumbo v0, "policy"

    invoke-interface {v14, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v14, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_1de
    .catch Lorg/xml/sax/SAXException; {:try_start_1cf .. :try_end_1de} :catch_6e2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1cf .. :try_end_1de} :catch_6d0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1cf .. :try_end_1de} :catch_6be
    .catch Ljava/io/IOException; {:try_start_1cf .. :try_end_1de} :catch_6ac
    .catch Ljava/lang/Exception; {:try_start_1cf .. :try_end_1de} :catch_69a
    .catchall {:try_start_1cf .. :try_end_1de} :catchall_766

    move/from16 v12, v18

    :goto_1e0
    :try_start_1e0
    invoke-interface {v14}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->normalize()V

    const-string/jumbo v0, "policy"

    invoke-interface {v14, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v11, 0x0

    invoke-interface {v0, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    check-cast v16, Lorg/w3c/dom/Element;

    move-object/from16 v4, v16

    const-string/jumbo v11, "signer"

    invoke-interface {v4, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-string/jumbo v23, "service"

    move-object/from16 v24, v23

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    invoke-interface {v14, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v22

    move-object/from16 v26, v22

    move-object/from16 v27, v0

    const-string/jumbo v0, "name"
    :try_end_21f
    .catch Lorg/xml/sax/SAXException; {:try_start_1e0 .. :try_end_21f} :catch_68a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1e0 .. :try_end_21f} :catch_67a
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1e0 .. :try_end_21f} :catch_66a
    .catch Ljava/io/IOException; {:try_start_1e0 .. :try_end_21f} :catch_65a
    .catch Ljava/lang/Exception; {:try_start_1e0 .. :try_end_21f} :catch_64a
    .catchall {:try_start_1e0 .. :try_end_21f} :catchall_766

    move-object/from16 v28, v13

    move-object/from16 v13, v26

    :try_start_223
    invoke-interface {v13, v0, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "seinfo"

    invoke-interface {v13, v0, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22c
    .catch Lorg/xml/sax/SAXException; {:try_start_223 .. :try_end_22c} :catch_63c
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_223 .. :try_end_22c} :catch_62e
    .catch Ljavax/xml/transform/TransformerException; {:try_start_223 .. :try_end_22c} :catch_620
    .catch Ljava/io/IOException; {:try_start_223 .. :try_end_22c} :catch_612
    .catch Ljava/lang/Exception; {:try_start_223 .. :try_end_22c} :catch_604
    .catchall {:try_start_223 .. :try_end_22c} :catchall_766

    if-eqz v8, :cond_271

    :try_start_22e
    const-string/jumbo v0, "space"

    invoke-interface {v13, v0, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_271

    :catch_235
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    goto/16 :goto_e3

    :catch_241
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    goto/16 :goto_f5

    :catch_24d
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    goto/16 :goto_107

    :catch_259
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    goto/16 :goto_119

    :catch_265
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    goto/16 :goto_12b

    :cond_271
    :goto_271
    if-eqz v9, :cond_278

    const-string v0, "allowSpace"

    invoke-interface {v13, v0, v9}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_278
    if-eqz v10, :cond_27f

    const-string v0, "containerAllowSpace"

    invoke-interface {v13, v0, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27f
    .catch Lorg/xml/sax/SAXException; {:try_start_22e .. :try_end_27f} :catch_265
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_22e .. :try_end_27f} :catch_259
    .catch Ljavax/xml/transform/TransformerException; {:try_start_22e .. :try_end_27f} :catch_24d
    .catch Ljava/io/IOException; {:try_start_22e .. :try_end_27f} :catch_241
    .catch Ljava/lang/Exception; {:try_start_22e .. :try_end_27f} :catch_235
    .catchall {:try_start_22e .. :try_end_27f} :catchall_766

    :cond_27f
    :try_start_27f
    sget v0, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I
    :try_end_281
    .catch Lorg/xml/sax/SAXException; {:try_start_27f .. :try_end_281} :catch_63c
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_27f .. :try_end_281} :catch_62e
    .catch Ljavax/xml/transform/TransformerException; {:try_start_27f .. :try_end_281} :catch_620
    .catch Ljava/io/IOException; {:try_start_27f .. :try_end_281} :catch_612
    .catch Ljava/lang/Exception; {:try_start_27f .. :try_end_281} :catch_604
    .catchall {:try_start_27f .. :try_end_281} :catchall_766

    if-ne v5, v0, :cond_331

    :try_start_283
    const-string/jumbo v0, "sdcarduseridBL"
    :try_end_286
    .catch Lorg/xml/sax/SAXException; {:try_start_283 .. :try_end_286} :catch_323
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_283 .. :try_end_286} :catch_315
    .catch Ljavax/xml/transform/TransformerException; {:try_start_283 .. :try_end_286} :catch_307
    .catch Ljava/io/IOException; {:try_start_283 .. :try_end_286} :catch_2f9
    .catch Ljava/lang/Exception; {:try_start_283 .. :try_end_286} :catch_2eb
    .catchall {:try_start_283 .. :try_end_286} :catchall_766

    move-object/from16 v29, v10

    :try_start_288
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v13, v0, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_2b5

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "ResourceManager"

    move-object/from16 v30, v15

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_29e
    .catch Lorg/xml/sax/SAXException; {:try_start_288 .. :try_end_29e} :catch_2e1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_288 .. :try_end_29e} :catch_2d7
    .catch Ljavax/xml/transform/TransformerException; {:try_start_288 .. :try_end_29e} :catch_2cd
    .catch Ljava/io/IOException; {:try_start_288 .. :try_end_29e} :catch_2c3
    .catch Ljava/lang/Exception; {:try_start_288 .. :try_end_29e} :catch_2b9
    .catchall {:try_start_288 .. :try_end_29e} :catchall_766

    :try_start_29e
    const-string v1, "addblacklistentrytomac - package = "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "whitelisted to access sdcard"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b3
    .catch Lorg/xml/sax/SAXException; {:try_start_29e .. :try_end_2b3} :catch_36f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_29e .. :try_end_2b3} :catch_364
    .catch Ljavax/xml/transform/TransformerException; {:try_start_29e .. :try_end_2b3} :catch_359
    .catch Ljava/io/IOException; {:try_start_29e .. :try_end_2b3} :catch_34e
    .catch Ljava/lang/Exception; {:try_start_29e .. :try_end_2b3} :catch_343
    .catchall {:try_start_29e .. :try_end_2b3} :catchall_766

    goto/16 :goto_335

    :cond_2b5
    move-object/from16 v30, v15

    goto/16 :goto_335

    :catch_2b9
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    goto/16 :goto_e3

    :catch_2c3
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    goto/16 :goto_f5

    :catch_2cd
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    goto/16 :goto_107

    :catch_2d7
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    goto/16 :goto_119

    :catch_2e1
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    goto/16 :goto_12b

    :catch_2eb
    move-exception v0

    move-object/from16 v29, v10

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move/from16 v7, p3

    goto/16 :goto_706

    :catch_2f9
    move-exception v0

    move-object/from16 v29, v10

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move/from16 v7, p3

    goto/16 :goto_71d

    :catch_307
    move-exception v0

    move-object/from16 v29, v10

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move/from16 v7, p3

    goto/16 :goto_733

    :catch_315
    move-exception v0

    move-object/from16 v29, v10

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move/from16 v7, p3

    goto/16 :goto_749

    :catch_323
    move-exception v0

    move-object/from16 v29, v10

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move/from16 v7, p3

    goto/16 :goto_75f

    :cond_331
    move-object/from16 v29, v10

    move-object/from16 v30, v15

    :goto_335
    :try_start_335
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_337
    .catch Lorg/xml/sax/SAXException; {:try_start_335 .. :try_end_337} :catch_5f7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_335 .. :try_end_337} :catch_5ea
    .catch Ljavax/xml/transform/TransformerException; {:try_start_335 .. :try_end_337} :catch_5dd
    .catch Ljava/io/IOException; {:try_start_335 .. :try_end_337} :catch_5d0
    .catch Ljava/lang/Exception; {:try_start_335 .. :try_end_337} :catch_5c3
    .catchall {:try_start_335 .. :try_end_337} :catchall_766

    if-eqz v0, :cond_37a

    :try_start_339
    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "ResourceManager"

    const-string v10, "addblacklistentrytomac - done with preparing entry"

    invoke-virtual {v0, v1, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_342
    .catch Lorg/xml/sax/SAXException; {:try_start_339 .. :try_end_342} :catch_36f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_339 .. :try_end_342} :catch_364
    .catch Ljavax/xml/transform/TransformerException; {:try_start_339 .. :try_end_342} :catch_359
    .catch Ljava/io/IOException; {:try_start_339 .. :try_end_342} :catch_34e
    .catch Ljava/lang/Exception; {:try_start_339 .. :try_end_342} :catch_343
    .catchall {:try_start_339 .. :try_end_342} :catchall_766

    goto :goto_37a

    :catch_343
    move-exception v0

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v15, p0

    goto/16 :goto_e3

    :catch_34e
    move-exception v0

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v15, p0

    goto/16 :goto_f5

    :catch_359
    move-exception v0

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v15, p0

    goto/16 :goto_107

    :catch_364
    move-exception v0

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v15, p0

    goto/16 :goto_119

    :catch_36f
    move-exception v0

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v15, p0

    goto/16 :goto_12b

    :cond_37a
    :goto_37a
    :try_start_37a
    const-string/jumbo v0, "signer"

    invoke-interface {v14, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string/jumbo v1, "seinfo"

    invoke-interface {v14, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    const-string v10, "allow-all"

    invoke-interface {v14, v10}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    const-string/jumbo v15, "signature"

    invoke-interface {v0, v15, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v15, "value"

    invoke-interface {v1, v15, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39a
    .catch Lorg/xml/sax/SAXException; {:try_start_37a .. :try_end_39a} :catch_5f7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_37a .. :try_end_39a} :catch_5ea
    .catch Ljavax/xml/transform/TransformerException; {:try_start_37a .. :try_end_39a} :catch_5dd
    .catch Ljava/io/IOException; {:try_start_37a .. :try_end_39a} :catch_5d0
    .catch Ljava/lang/Exception; {:try_start_37a .. :try_end_39a} :catch_5c3
    .catchall {:try_start_37a .. :try_end_39a} :catchall_766

    if-eqz v8, :cond_3a2

    :try_start_39c
    const-string/jumbo v15, "space"

    invoke-interface {v1, v15, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a2
    if-eqz v9, :cond_3a9

    const-string v15, "allowSpace"

    invoke-interface {v1, v15, v9}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a9
    .catch Lorg/xml/sax/SAXException; {:try_start_39c .. :try_end_3a9} :catch_36f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_39c .. :try_end_3a9} :catch_364
    .catch Ljavax/xml/transform/TransformerException; {:try_start_39c .. :try_end_3a9} :catch_359
    .catch Ljava/io/IOException; {:try_start_39c .. :try_end_3a9} :catch_34e
    .catch Ljava/lang/Exception; {:try_start_39c .. :try_end_3a9} :catch_343
    .catchall {:try_start_39c .. :try_end_3a9} :catchall_766

    :cond_3a9
    const/4 v15, 0x0

    :goto_3aa
    move-object/from16 v31, v7

    :try_start_3ac
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v15, v7, :cond_512

    invoke-interface {v11, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;
    :try_end_3b8
    .catch Lorg/xml/sax/SAXException; {:try_start_3ac .. :try_end_3b8} :catch_5b8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3ac .. :try_end_3b8} :catch_5ad
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3ac .. :try_end_3b8} :catch_5a2
    .catch Ljava/io/IOException; {:try_start_3ac .. :try_end_3b8} :catch_597
    .catch Ljava/lang/Exception; {:try_start_3ac .. :try_end_3b8} :catch_58c
    .catchall {:try_start_3ac .. :try_end_3b8} :catchall_766

    move-object/from16 v32, v8

    :try_start_3ba
    const-string/jumbo v8, "signature"

    invoke-interface {v7, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4d1

    invoke-static {v7, v3}, Lcom/android/server/ResourceManager;->checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    if-eqz v8, :cond_4b2

    sget-boolean v16, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_3cf
    .catch Lorg/xml/sax/SAXException; {:try_start_3ba .. :try_end_3cf} :catch_509
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3ba .. :try_end_3cf} :catch_500
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3ba .. :try_end_3cf} :catch_4f7
    .catch Ljava/io/IOException; {:try_start_3ba .. :try_end_3cf} :catch_4ee
    .catch Ljava/lang/Exception; {:try_start_3ba .. :try_end_3cf} :catch_4e5
    .catchall {:try_start_3ba .. :try_end_3cf} :catchall_766

    if-eqz v16, :cond_402

    :try_start_3d1
    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    move-object/from16 v33, v7

    const-string v7, "ResourceManager"
    :try_end_3d7
    .catch Lorg/xml/sax/SAXException; {:try_start_3d1 .. :try_end_3d7} :catch_3fb
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3d1 .. :try_end_3d7} :catch_3f4
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3d1 .. :try_end_3d7} :catch_3ed
    .catch Ljava/io/IOException; {:try_start_3d1 .. :try_end_3d7} :catch_3e6
    .catch Ljava/lang/Exception; {:try_start_3d1 .. :try_end_3d7} :catch_3df
    .catchall {:try_start_3d1 .. :try_end_3d7} :catchall_766

    move-object/from16 v34, v9

    :try_start_3d9
    const-string v9, "Exist elem not null. Package Name already exists"

    invoke-virtual {v2, v7, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_406

    :catch_3df
    move-exception v0

    move-object/from16 v34, v9

    move/from16 v7, p3

    goto/16 :goto_4ea

    :catch_3e6
    move-exception v0

    move-object/from16 v34, v9

    move/from16 v7, p3

    goto/16 :goto_4f3

    :catch_3ed
    move-exception v0

    move-object/from16 v34, v9

    move/from16 v7, p3

    goto/16 :goto_4fc

    :catch_3f4
    move-exception v0

    move-object/from16 v34, v9

    move/from16 v7, p3

    goto/16 :goto_505

    :catch_3fb
    move-exception v0

    move-object/from16 v34, v9

    move/from16 v7, p3

    goto/16 :goto_50e

    :cond_402
    move-object/from16 v33, v7

    move-object/from16 v34, v9

    :goto_406
    sget v2, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-ne v5, v2, :cond_496

    const-string/jumbo v2, "sdcarduseridBL"

    invoke-interface {v8, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/server/ResourceManager;->checkUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44b

    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_448

    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "ResourceManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addEntryToMac, Existing "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " entry for "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", return true and continue with next step"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v7, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_448
    .catch Lorg/xml/sax/SAXException; {:try_start_3d9 .. :try_end_448} :catch_4ad
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3d9 .. :try_end_448} :catch_4a8
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3d9 .. :try_end_448} :catch_4a3
    .catch Ljava/io/IOException; {:try_start_3d9 .. :try_end_448} :catch_49e
    .catch Ljava/lang/Exception; {:try_start_3d9 .. :try_end_448} :catch_499
    .catchall {:try_start_3d9 .. :try_end_448} :catchall_766

    :cond_448
    monitor-exit v6

    const/4 v2, 0x0

    return v2

    :cond_44b
    const/4 v2, 0x0

    :try_start_44c
    const-string/jumbo v5, "sdcarduseridBL"

    invoke-interface {v8, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_483

    const-string/jumbo v5, "sdcarduseridBL"

    invoke-interface {v8, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_483

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_469
    .catch Lorg/xml/sax/SAXException; {:try_start_44c .. :try_end_469} :catch_4ad
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_44c .. :try_end_469} :catch_4a8
    .catch Ljavax/xml/transform/TransformerException; {:try_start_44c .. :try_end_469} :catch_4a3
    .catch Ljava/io/IOException; {:try_start_44c .. :try_end_469} :catch_49e
    .catch Ljava/lang/Exception; {:try_start_44c .. :try_end_469} :catch_499
    .catchall {:try_start_44c .. :try_end_469} :catchall_766

    move/from16 v7, p3

    :try_start_46b
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "sdcarduseridBL"

    invoke-interface {v8, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    goto :goto_48a

    :cond_483
    move/from16 v7, p3

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    :goto_48a
    const-string/jumbo v5, "sdcarduseridBL"

    invoke-interface {v8, v5, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    nop

    move/from16 v17, v5

    goto/16 :goto_51a

    :cond_496
    move/from16 v7, p3

    goto :goto_4b8

    :catch_499
    move-exception v0

    move/from16 v7, p3

    goto/16 :goto_52a

    :catch_49e
    move-exception v0

    move/from16 v7, p3

    goto/16 :goto_52f

    :catch_4a3
    move-exception v0

    move/from16 v7, p3

    goto/16 :goto_534

    :catch_4a8
    move-exception v0

    move/from16 v7, p3

    goto/16 :goto_539

    :catch_4ad
    move-exception v0

    move/from16 v7, p3

    goto/16 :goto_53e

    :cond_4b2
    move-object/from16 v33, v7

    move-object/from16 v34, v9

    move/from16 v7, p3

    :goto_4b8
    invoke-interface {v11, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2, v13}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_4cc

    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "ResourceManager"

    const-string v9, "addBlacklistEntryToMac, signature match found. Appending elem"

    invoke-virtual {v2, v5, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4cc
    const/4 v2, 0x1

    nop

    move/from16 v17, v2

    goto :goto_51a

    :cond_4d1
    move-object/from16 v33, v7

    move-object/from16 v34, v9

    move/from16 v7, p3

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, v31

    move-object/from16 v8, v32

    move-object/from16 v16, v33

    move-object/from16 v2, p1

    move/from16 v5, p5

    goto/16 :goto_3aa

    :catch_4e5
    move-exception v0

    move/from16 v7, p3

    move-object/from16 v34, v9

    :goto_4ea
    move-object/from16 v15, p0

    goto/16 :goto_706

    :catch_4ee
    move-exception v0

    move/from16 v7, p3

    move-object/from16 v34, v9

    :goto_4f3
    move-object/from16 v15, p0

    goto/16 :goto_71d

    :catch_4f7
    move-exception v0

    move/from16 v7, p3

    move-object/from16 v34, v9

    :goto_4fc
    move-object/from16 v15, p0

    goto/16 :goto_733

    :catch_500
    move-exception v0

    move/from16 v7, p3

    move-object/from16 v34, v9

    :goto_505
    move-object/from16 v15, p0

    goto/16 :goto_749

    :catch_509
    move-exception v0

    move/from16 v7, p3

    move-object/from16 v34, v9

    :goto_50e
    move-object/from16 v15, p0

    goto/16 :goto_75f

    :cond_512
    move/from16 v7, p3

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v33, v16

    :goto_51a
    if-nez v17, :cond_542

    invoke-interface {v0, v10}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v0, v13}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_542

    :catch_529
    move-exception v0

    :goto_52a
    move-object/from16 v15, p0

    goto/16 :goto_706

    :catch_52e
    move-exception v0

    :goto_52f
    move-object/from16 v15, p0

    goto/16 :goto_71d

    :catch_533
    move-exception v0

    :goto_534
    move-object/from16 v15, p0

    goto/16 :goto_733

    :catch_538
    move-exception v0

    :goto_539
    move-object/from16 v15, p0

    goto/16 :goto_749

    :catch_53d
    move-exception v0

    :goto_53e
    move-object/from16 v15, p0

    goto/16 :goto_75f

    :cond_542
    :goto_542
    invoke-interface {v14}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Element;->normalize()V

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v5

    const/4 v8, 0x0

    if-eqz v12, :cond_55b

    new-instance v9, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v9, v14}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    move-object v8, v9

    goto :goto_561

    :cond_55b
    new-instance v9, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v9, v4}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    move-object v8, v9

    :goto_561
    new-instance v9, Ljavax/xml/transform/stream/StreamResult;
    :try_end_563
    .catch Lorg/xml/sax/SAXException; {:try_start_46b .. :try_end_563} :catch_53d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_46b .. :try_end_563} :catch_538
    .catch Ljavax/xml/transform/TransformerException; {:try_start_46b .. :try_end_563} :catch_533
    .catch Ljava/io/IOException; {:try_start_46b .. :try_end_563} :catch_52e
    .catch Ljava/lang/Exception; {:try_start_46b .. :try_end_563} :catch_529
    .catchall {:try_start_46b .. :try_end_563} :catchall_766

    move-object/from16 v15, p0

    :try_start_565
    invoke-direct {v9, v15}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    invoke-virtual {v5, v8, v9}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v16

    if-eqz v16, :cond_578

    move-object/from16 v35, v0

    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Ljava/io/File;->setWritable(Z)Z
    :try_end_577
    .catch Lorg/xml/sax/SAXException; {:try_start_565 .. :try_end_577} :catch_589
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_565 .. :try_end_577} :catch_586
    .catch Ljavax/xml/transform/TransformerException; {:try_start_565 .. :try_end_577} :catch_583
    .catch Ljava/io/IOException; {:try_start_565 .. :try_end_577} :catch_580
    .catch Ljava/lang/Exception; {:try_start_565 .. :try_end_577} :catch_57d
    .catchall {:try_start_565 .. :try_end_577} :catchall_766

    goto :goto_57a

    :cond_578
    move-object/from16 v35, v0

    :goto_57a
    monitor-exit v6

    const/4 v0, 0x0

    return v0

    :catch_57d
    move-exception v0

    goto/16 :goto_706

    :catch_580
    move-exception v0

    goto/16 :goto_71d

    :catch_583
    move-exception v0

    goto/16 :goto_733

    :catch_586
    move-exception v0

    goto/16 :goto_749

    :catch_589
    move-exception v0

    goto/16 :goto_75f

    :catch_58c
    move-exception v0

    move/from16 v7, p3

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v15, p0

    goto/16 :goto_706

    :catch_597
    move-exception v0

    move/from16 v7, p3

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v15, p0

    goto/16 :goto_71d

    :catch_5a2
    move-exception v0

    move/from16 v7, p3

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v15, p0

    goto/16 :goto_733

    :catch_5ad
    move-exception v0

    move/from16 v7, p3

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v15, p0

    goto/16 :goto_749

    :catch_5b8
    move-exception v0

    move/from16 v7, p3

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v15, p0

    goto/16 :goto_75f

    :catch_5c3
    move-exception v0

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v15, p0

    move/from16 v7, p3

    goto/16 :goto_706

    :catch_5d0
    move-exception v0

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v15, p0

    move/from16 v7, p3

    goto/16 :goto_71d

    :catch_5dd
    move-exception v0

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v15, p0

    move/from16 v7, p3

    goto/16 :goto_733

    :catch_5ea
    move-exception v0

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v15, p0

    move/from16 v7, p3

    goto/16 :goto_749

    :catch_5f7
    move-exception v0

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v15, p0

    move/from16 v7, p3

    goto/16 :goto_75f

    :catch_604
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move/from16 v7, p3

    goto/16 :goto_706

    :catch_612
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move/from16 v7, p3

    goto/16 :goto_71d

    :catch_620
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move/from16 v7, p3

    goto/16 :goto_733

    :catch_62e
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move/from16 v7, p3

    goto/16 :goto_749

    :catch_63c
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move/from16 v7, p3

    goto/16 :goto_75f

    :catch_64a
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v7, p3

    goto/16 :goto_6aa

    :catch_65a
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v7, p3

    goto/16 :goto_6bc

    :catch_66a
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v7, p3

    goto/16 :goto_6ce

    :catch_67a
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v7, p3

    goto/16 :goto_6e0

    :catch_68a
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v7, p3

    goto/16 :goto_6f2

    :catch_69a
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v7, p3

    move/from16 v12, v18

    :goto_6aa
    goto/16 :goto_706

    :catch_6ac
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v7, p3

    move/from16 v12, v18

    :goto_6bc
    goto/16 :goto_71d

    :catch_6be
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v7, p3

    move/from16 v12, v18

    :goto_6ce
    goto/16 :goto_733

    :catch_6d0
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v7, p3

    move/from16 v12, v18

    :goto_6e0
    goto/16 :goto_749

    :catch_6e2
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move-object/from16 v28, v13

    move/from16 v7, p3

    move/from16 v12, v18

    :goto_6f2
    goto/16 :goto_75f

    :catch_6f4
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move/from16 v17, v11

    move/from16 v18, v12

    move-object/from16 v28, v13

    move/from16 v7, p3

    :goto_706
    :try_start_706
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_763

    :catch_70b
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move/from16 v17, v11

    move/from16 v18, v12

    move-object/from16 v28, v13

    move/from16 v7, p3

    :goto_71d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_762

    :catch_721
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move/from16 v17, v11

    move/from16 v18, v12

    move-object/from16 v28, v13

    move/from16 v7, p3

    :goto_733
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_762

    :catch_737
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move/from16 v17, v11

    move/from16 v18, v12

    move-object/from16 v28, v13

    move/from16 v7, p3

    :goto_749
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_762

    :catch_74d
    move-exception v0

    move-object v15, v1

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v34, v9

    move-object/from16 v29, v10

    move/from16 v17, v11

    move/from16 v18, v12

    move-object/from16 v28, v13

    move/from16 v7, p3

    :goto_75f
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_762
    .catchall {:try_start_706 .. :try_end_762} :catchall_766

    :goto_762
    nop

    :goto_763
    const/4 v0, -0x1

    monitor-exit v6

    return v0

    :catchall_766
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method protected static declared-synchronized addWhitelistEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;I)I
    .registers 45

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    const-class v7, Lcom/android/server/ResourceManager;

    monitor-enter v7

    :try_start_f
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "ResourceManager"

    const-string v9, "addWhitelistEntryToMac_begin"

    invoke-virtual {v0, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    move-object v8, v0

    iget v0, v5, Landroid/content/pm/ApplicationInfo;->space:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->allowSpace:Ljava/lang/String;

    move-object v10, v0

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->allowContainerSpace:Ljava/lang/String;

    move-object v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0
    :try_end_32
    .catchall {:try_start_f .. :try_end_32} :catchall_936

    move-object v14, v0

    const/4 v0, 0x0

    move-object v15, v0

    :try_start_35
    invoke-virtual {v14}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_3f
    .catch Lorg/xml/sax/SAXException; {:try_start_35 .. :try_end_3f} :catch_91e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_35 .. :try_end_3f} :catch_909
    .catch Ljavax/xml/transform/TransformerException; {:try_start_35 .. :try_end_3f} :catch_8f4
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3f} :catch_8df
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3f} :catch_8ca
    .catchall {:try_start_35 .. :try_end_3f} :catchall_936

    if-eqz v0, :cond_181

    :try_start_41
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_bd

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "ResourceManager"
    :try_end_49
    .catch Lorg/xml/sax/SAXException; {:try_start_41 .. :try_end_49} :catch_16e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_41 .. :try_end_49} :catch_15b
    .catch Ljavax/xml/transform/TransformerException; {:try_start_41 .. :try_end_49} :catch_148
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_49} :catch_135
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_49} :catch_122
    .catchall {:try_start_41 .. :try_end_49} :catchall_936

    move/from16 v18, v12

    :try_start_4b
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_50
    .catch Lorg/xml/sax/SAXException; {:try_start_4b .. :try_end_50} :catch_ac
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4b .. :try_end_50} :catch_9b
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4b .. :try_end_50} :catch_8a
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_50} :catch_79
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_50} :catch_68
    .catchall {:try_start_4b .. :try_end_50} :catchall_936

    move/from16 v19, v13

    :try_start_52
    const-string/jumbo v13, "macPermFile exists "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v5, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c1

    :catch_68
    move-exception v0

    move/from16 v19, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v20, v14

    move/from16 v31, v19

    goto/16 :goto_8db

    :catch_79
    move-exception v0

    move/from16 v19, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v20, v14

    move/from16 v31, v19

    goto/16 :goto_8f0

    :catch_8a
    move-exception v0

    move/from16 v19, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v20, v14

    move/from16 v31, v19

    goto/16 :goto_905

    :catch_9b
    move-exception v0

    move/from16 v19, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v20, v14

    move/from16 v31, v19

    goto/16 :goto_91a

    :catch_ac
    move-exception v0

    move/from16 v19, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v20, v14

    move/from16 v31, v19

    goto/16 :goto_92f

    :cond_bd
    move/from16 v18, v12

    move/from16 v19, v13

    :goto_c1
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_cb

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/io/File;->setWritable(Z)Z

    :cond_cb
    move-object/from16 v5, v16

    invoke-virtual {v5, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0
    :try_end_d1
    .catch Lorg/xml/sax/SAXException; {:try_start_52 .. :try_end_d1} :catch_113
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_52 .. :try_end_d1} :catch_104
    .catch Ljavax/xml/transform/TransformerException; {:try_start_52 .. :try_end_d1} :catch_f5
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_d1} :catch_e6
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_d1} :catch_d7
    .catchall {:try_start_52 .. :try_end_d1} :catchall_936

    const/4 v13, 0x1

    move-object v15, v0

    move-object/from16 v20, v14

    goto/16 :goto_258

    :catch_d7
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v20, v14

    :goto_e2
    move/from16 v31, v19

    goto/16 :goto_8db

    :catch_e6
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v20, v14

    :goto_f1
    move/from16 v31, v19

    goto/16 :goto_8f0

    :catch_f5
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v20, v14

    :goto_100
    move/from16 v31, v19

    goto/16 :goto_905

    :catch_104
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v20, v14

    :goto_10f
    move/from16 v31, v19

    goto/16 :goto_91a

    :catch_113
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v20, v14

    :goto_11e
    move/from16 v31, v19

    goto/16 :goto_92f

    :catch_122
    move-exception v0

    move/from16 v18, v12

    move/from16 v19, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v20, v14

    move/from16 v31, v19

    goto/16 :goto_8db

    :catch_135
    move-exception v0

    move/from16 v18, v12

    move/from16 v19, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v20, v14

    move/from16 v31, v19

    goto/16 :goto_8f0

    :catch_148
    move-exception v0

    move/from16 v18, v12

    move/from16 v19, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v20, v14

    move/from16 v31, v19

    goto/16 :goto_905

    :catch_15b
    move-exception v0

    move/from16 v18, v12

    move/from16 v19, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v20, v14

    move/from16 v31, v19

    goto/16 :goto_91a

    :catch_16e
    move-exception v0

    move/from16 v18, v12

    move/from16 v19, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v20, v14

    move/from16 v31, v19

    goto/16 :goto_92f

    :cond_181
    move/from16 v18, v12

    move/from16 v19, v13

    move-object/from16 v5, v16

    :try_start_187
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_189
    .catch Lorg/xml/sax/SAXException; {:try_start_187 .. :try_end_189} :catch_8bb
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_187 .. :try_end_189} :catch_8ac
    .catch Ljavax/xml/transform/TransformerException; {:try_start_187 .. :try_end_189} :catch_89d
    .catch Ljava/io/IOException; {:try_start_187 .. :try_end_189} :catch_88f
    .catch Ljava/lang/Exception; {:try_start_187 .. :try_end_189} :catch_881
    .catchall {:try_start_187 .. :try_end_189} :catchall_936

    if-eqz v0, :cond_206

    :try_start_18b
    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v12, "ResourceManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_194
    .catch Lorg/xml/sax/SAXException; {:try_start_18b .. :try_end_194} :catch_1f7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_18b .. :try_end_194} :catch_1e8
    .catch Ljavax/xml/transform/TransformerException; {:try_start_18b .. :try_end_194} :catch_1d9
    .catch Ljava/io/IOException; {:try_start_18b .. :try_end_194} :catch_1ca
    .catch Ljava/lang/Exception; {:try_start_18b .. :try_end_194} :catch_1bb
    .catchall {:try_start_18b .. :try_end_194} :catchall_936

    move-object/from16 v20, v14

    :try_start_196
    const-string v14, "addEntryToMac,"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " does not exist, creating file"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1ae
    .catch Lorg/xml/sax/SAXException; {:try_start_196 .. :try_end_1ae} :catch_22d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_196 .. :try_end_1ae} :catch_222
    .catch Ljavax/xml/transform/TransformerException; {:try_start_196 .. :try_end_1ae} :catch_217
    .catch Ljava/io/IOException; {:try_start_196 .. :try_end_1ae} :catch_1b0
    .catch Ljava/lang/Exception; {:try_start_196 .. :try_end_1ae} :catch_20c
    .catchall {:try_start_196 .. :try_end_1ae} :catchall_936

    goto/16 :goto_208

    :catch_1b0
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    goto/16 :goto_f1

    :catch_1bb
    move-exception v0

    move-object/from16 v20, v14

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v31, v19

    goto/16 :goto_8db

    :catch_1ca
    move-exception v0

    move-object/from16 v20, v14

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v31, v19

    goto/16 :goto_8f0

    :catch_1d9
    move-exception v0

    move-object/from16 v20, v14

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v31, v19

    goto/16 :goto_905

    :catch_1e8
    move-exception v0

    move-object/from16 v20, v14

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v31, v19

    goto/16 :goto_91a

    :catch_1f7
    move-exception v0

    move-object/from16 v20, v14

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v31, v19

    goto/16 :goto_92f

    :cond_206
    move-object/from16 v20, v14

    :goto_208
    :try_start_208
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->createNewFile()Z
    :try_end_20b
    .catch Ljava/io/IOException; {:try_start_208 .. :try_end_20b} :catch_238
    .catch Lorg/xml/sax/SAXException; {:try_start_208 .. :try_end_20b} :catch_22d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_208 .. :try_end_20b} :catch_222
    .catch Ljavax/xml/transform/TransformerException; {:try_start_208 .. :try_end_20b} :catch_217
    .catch Ljava/lang/Exception; {:try_start_208 .. :try_end_20b} :catch_20c
    .catchall {:try_start_208 .. :try_end_20b} :catchall_936

    goto :goto_23d

    :catch_20c
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    goto/16 :goto_e2

    :catch_217
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    goto/16 :goto_100

    :catch_222
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    goto/16 :goto_10f

    :catch_22d
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    goto/16 :goto_11e

    :catch_238
    move-exception v0

    move-object v12, v0

    :try_start_23a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_23d
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v0
    :try_end_241
    .catch Lorg/xml/sax/SAXException; {:try_start_23a .. :try_end_241} :catch_874
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_23a .. :try_end_241} :catch_867
    .catch Ljavax/xml/transform/TransformerException; {:try_start_23a .. :try_end_241} :catch_85a
    .catch Ljava/io/IOException; {:try_start_23a .. :try_end_241} :catch_84d
    .catch Ljava/lang/Exception; {:try_start_23a .. :try_end_241} :catch_840
    .catchall {:try_start_23a .. :try_end_241} :catchall_936

    if-nez v0, :cond_247

    const/4 v12, 0x1

    :try_start_244
    invoke-virtual {v1, v12}, Ljava/io/File;->setWritable(Z)Z
    :try_end_247
    .catch Lorg/xml/sax/SAXException; {:try_start_244 .. :try_end_247} :catch_22d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_244 .. :try_end_247} :catch_222
    .catch Ljavax/xml/transform/TransformerException; {:try_start_244 .. :try_end_247} :catch_217
    .catch Ljava/io/IOException; {:try_start_244 .. :try_end_247} :catch_1b0
    .catch Ljava/lang/Exception; {:try_start_244 .. :try_end_247} :catch_20c
    .catchall {:try_start_244 .. :try_end_247} :catchall_936

    :cond_247
    :try_start_247
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    move-object v15, v0

    const-string/jumbo v0, "policy"

    invoke-interface {v15, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v15, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_256
    .catch Lorg/xml/sax/SAXException; {:try_start_247 .. :try_end_256} :catch_874
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_247 .. :try_end_256} :catch_867
    .catch Ljavax/xml/transform/TransformerException; {:try_start_247 .. :try_end_256} :catch_85a
    .catch Ljava/io/IOException; {:try_start_247 .. :try_end_256} :catch_84d
    .catch Ljava/lang/Exception; {:try_start_247 .. :try_end_256} :catch_840
    .catchall {:try_start_247 .. :try_end_256} :catchall_936

    move/from16 v13, v19

    :goto_258
    :try_start_258
    invoke-interface {v15}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->normalize()V

    const-string/jumbo v0, "policy"

    invoke-interface {v15, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v12, 0x0

    const/4 v14, 0x0

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    check-cast v16, Lorg/w3c/dom/Element;

    move-object/from16 v12, v16

    const-string/jumbo v14, "signer"

    invoke-interface {v12, v14}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string/jumbo v24, "service"

    move-object/from16 v25, v24

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    invoke-interface {v15, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v23

    move-object/from16 v27, v23

    move-object/from16 v28, v0

    const-string/jumbo v0, "name"

    move-object/from16 v29, v5

    move-object/from16 v5, v27

    invoke-interface {v5, v0, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "seinfo"

    invoke-interface {v5, v0, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a4
    .catch Lorg/xml/sax/SAXException; {:try_start_258 .. :try_end_2a4} :catch_833
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_258 .. :try_end_2a4} :catch_826
    .catch Ljavax/xml/transform/TransformerException; {:try_start_258 .. :try_end_2a4} :catch_819
    .catch Ljava/io/IOException; {:try_start_258 .. :try_end_2a4} :catch_80c
    .catch Ljava/lang/Exception; {:try_start_258 .. :try_end_2a4} :catch_7ff
    .catchall {:try_start_258 .. :try_end_2a4} :catchall_936

    if-eqz v9, :cond_2ee

    :try_start_2a6
    const-string/jumbo v0, "space"

    invoke-interface {v5, v0, v9}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2ee

    :catch_2ad
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v31, v13

    goto/16 :goto_8db

    :catch_2ba
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v31, v13

    goto/16 :goto_8f0

    :catch_2c7
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v31, v13

    goto/16 :goto_905

    :catch_2d4
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v31, v13

    goto/16 :goto_91a

    :catch_2e1
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v31, v13

    goto/16 :goto_92f

    :cond_2ee
    :goto_2ee
    if-eqz v10, :cond_2f5

    const-string v0, "allowSpace"

    invoke-interface {v5, v0, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f5
    if-eqz v11, :cond_2fc

    const-string v0, "containerAllowSpace"

    invoke-interface {v5, v0, v11}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2fc
    .catch Lorg/xml/sax/SAXException; {:try_start_2a6 .. :try_end_2fc} :catch_2e1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2a6 .. :try_end_2fc} :catch_2d4
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2a6 .. :try_end_2fc} :catch_2c7
    .catch Ljava/io/IOException; {:try_start_2a6 .. :try_end_2fc} :catch_2ba
    .catch Ljava/lang/Exception; {:try_start_2a6 .. :try_end_2fc} :catch_2ad
    .catchall {:try_start_2a6 .. :try_end_2fc} :catchall_936

    :cond_2fc
    :try_start_2fc
    sget v0, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I
    :try_end_2fe
    .catch Lorg/xml/sax/SAXException; {:try_start_2fc .. :try_end_2fe} :catch_833
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2fc .. :try_end_2fe} :catch_826
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2fc .. :try_end_2fe} :catch_819
    .catch Ljava/io/IOException; {:try_start_2fc .. :try_end_2fe} :catch_80c
    .catch Ljava/lang/Exception; {:try_start_2fc .. :try_end_2fe} :catch_7ff
    .catchall {:try_start_2fc .. :try_end_2fe} :catchall_936

    if-ne v6, v0, :cond_3ea

    :try_start_300
    const-string/jumbo v0, "sdcarduserid"
    :try_end_303
    .catch Lorg/xml/sax/SAXException; {:try_start_300 .. :try_end_303} :catch_3dd
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_300 .. :try_end_303} :catch_3d0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_300 .. :try_end_303} :catch_3c3
    .catch Ljava/io/IOException; {:try_start_300 .. :try_end_303} :catch_3b6
    .catch Ljava/lang/Exception; {:try_start_300 .. :try_end_303} :catch_3a9
    .catchall {:try_start_300 .. :try_end_303} :catchall_936

    move-object/from16 v30, v11

    :try_start_305
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v0, v11}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_36e

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "ResourceManager"
    :try_end_314
    .catch Lorg/xml/sax/SAXException; {:try_start_305 .. :try_end_314} :catch_39e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_305 .. :try_end_314} :catch_393
    .catch Ljavax/xml/transform/TransformerException; {:try_start_305 .. :try_end_314} :catch_388
    .catch Ljava/io/IOException; {:try_start_305 .. :try_end_314} :catch_37d
    .catch Ljava/lang/Exception; {:try_start_305 .. :try_end_314} :catch_372
    .catchall {:try_start_305 .. :try_end_314} :catchall_936

    :try_start_314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_319
    .catch Lorg/xml/sax/SAXException; {:try_start_314 .. :try_end_319} :catch_362
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_314 .. :try_end_319} :catch_356
    .catch Ljavax/xml/transform/TransformerException; {:try_start_314 .. :try_end_319} :catch_34a
    .catch Ljava/io/IOException; {:try_start_314 .. :try_end_319} :catch_33e
    .catch Ljava/lang/Exception; {:try_start_314 .. :try_end_319} :catch_332
    .catchall {:try_start_314 .. :try_end_319} :catchall_936

    move/from16 v31, v13

    :try_start_31b
    const-string v13, "addwhitelistentrytomac - package = "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v13, "whitelisted to access sdcard"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_330
    .catch Lorg/xml/sax/SAXException; {:try_start_31b .. :try_end_330} :catch_44a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_31b .. :try_end_330} :catch_43f
    .catch Ljavax/xml/transform/TransformerException; {:try_start_31b .. :try_end_330} :catch_434
    .catch Ljava/io/IOException; {:try_start_31b .. :try_end_330} :catch_429
    .catch Ljava/lang/Exception; {:try_start_31b .. :try_end_330} :catch_41e
    .catchall {:try_start_31b .. :try_end_330} :catchall_936

    goto/16 :goto_3ee

    :catch_332
    move-exception v0

    move/from16 v31, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v1, p0

    goto :goto_37b

    :catch_33e
    move-exception v0

    move/from16 v31, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v1, p0

    goto :goto_386

    :catch_34a
    move-exception v0

    move/from16 v31, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v1, p0

    goto :goto_391

    :catch_356
    move-exception v0

    move/from16 v31, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v1, p0

    goto :goto_39c

    :catch_362
    move-exception v0

    move/from16 v31, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v1, p0

    goto :goto_3a7

    :cond_36e
    move/from16 v31, v13

    goto/16 :goto_3ee

    :catch_372
    move-exception v0

    move/from16 v31, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    :goto_37b
    goto/16 :goto_8db

    :catch_37d
    move-exception v0

    move/from16 v31, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    :goto_386
    goto/16 :goto_8f0

    :catch_388
    move-exception v0

    move/from16 v31, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    :goto_391
    goto/16 :goto_905

    :catch_393
    move-exception v0

    move/from16 v31, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    :goto_39c
    goto/16 :goto_91a

    :catch_39e
    move-exception v0

    move/from16 v31, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    :goto_3a7
    goto/16 :goto_92f

    :catch_3a9
    move-exception v0

    move-object/from16 v30, v11

    move/from16 v31, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    goto/16 :goto_8db

    :catch_3b6
    move-exception v0

    move-object/from16 v30, v11

    move/from16 v31, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    goto/16 :goto_8f0

    :catch_3c3
    move-exception v0

    move-object/from16 v30, v11

    move/from16 v31, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    goto/16 :goto_905

    :catch_3d0
    move-exception v0

    move-object/from16 v30, v11

    move/from16 v31, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    goto/16 :goto_91a

    :catch_3dd
    move-exception v0

    move-object/from16 v30, v11

    move/from16 v31, v13

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    goto/16 :goto_92f

    :cond_3ea
    move-object/from16 v30, v11

    move/from16 v31, v13

    :goto_3ee
    :try_start_3ee
    sget v0, Lcom/android/server/ResourceManager;->APM_TYPE:I
    :try_end_3f0
    .catch Lorg/xml/sax/SAXException; {:try_start_3ee .. :try_end_3f0} :catch_7f4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3ee .. :try_end_3f0} :catch_7e9
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3ee .. :try_end_3f0} :catch_7de
    .catch Ljava/io/IOException; {:try_start_3ee .. :try_end_3f0} :catch_7d3
    .catch Ljava/lang/Exception; {:try_start_3ee .. :try_end_3f0} :catch_7c8
    .catchall {:try_start_3ee .. :try_end_3f0} :catchall_936

    if-ne v6, v0, :cond_455

    :try_start_3f2
    const-string v0, "apmWL"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_455

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "ResourceManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "addwhitelistentrytomac - package = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v13, "whitelisted to access critical modules"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v1, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41d
    .catch Lorg/xml/sax/SAXException; {:try_start_3f2 .. :try_end_41d} :catch_44a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3f2 .. :try_end_41d} :catch_43f
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3f2 .. :try_end_41d} :catch_434
    .catch Ljava/io/IOException; {:try_start_3f2 .. :try_end_41d} :catch_429
    .catch Ljava/lang/Exception; {:try_start_3f2 .. :try_end_41d} :catch_41e
    .catchall {:try_start_3f2 .. :try_end_41d} :catchall_936

    goto :goto_455

    :catch_41e
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    :goto_425
    move-object/from16 v1, p0

    goto/16 :goto_8db

    :catch_429
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    :goto_430
    move-object/from16 v1, p0

    goto/16 :goto_8f0

    :catch_434
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    :goto_43b
    move-object/from16 v1, p0

    goto/16 :goto_905

    :catch_43f
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    :goto_446
    move-object/from16 v1, p0

    goto/16 :goto_91a

    :catch_44a
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    :goto_451
    move-object/from16 v1, p0

    goto/16 :goto_92f

    :cond_455
    :goto_455
    :try_start_455
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_457
    .catch Lorg/xml/sax/SAXException; {:try_start_455 .. :try_end_457} :catch_7f4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_455 .. :try_end_457} :catch_7e9
    .catch Ljavax/xml/transform/TransformerException; {:try_start_455 .. :try_end_457} :catch_7de
    .catch Ljava/io/IOException; {:try_start_455 .. :try_end_457} :catch_7d3
    .catch Ljava/lang/Exception; {:try_start_455 .. :try_end_457} :catch_7c8
    .catchall {:try_start_455 .. :try_end_457} :catchall_936

    if-eqz v0, :cond_462

    :try_start_459
    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "ResourceManager"

    const-string v11, "addwhitelistentrytomac - done with preparing entry"

    invoke-virtual {v0, v1, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_462
    .catch Lorg/xml/sax/SAXException; {:try_start_459 .. :try_end_462} :catch_44a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_459 .. :try_end_462} :catch_43f
    .catch Ljavax/xml/transform/TransformerException; {:try_start_459 .. :try_end_462} :catch_434
    .catch Ljava/io/IOException; {:try_start_459 .. :try_end_462} :catch_429
    .catch Ljava/lang/Exception; {:try_start_459 .. :try_end_462} :catch_41e
    .catchall {:try_start_459 .. :try_end_462} :catchall_936

    :cond_462
    :try_start_462
    const-string/jumbo v0, "signer"

    invoke-interface {v15, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string/jumbo v1, "seinfo"

    invoke-interface {v15, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    const-string v11, "allow-all"

    invoke-interface {v15, v11}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v11

    const-string/jumbo v13, "signature"

    invoke-interface {v0, v13, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v13, "value"

    invoke-interface {v1, v13, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_482
    .catch Lorg/xml/sax/SAXException; {:try_start_462 .. :try_end_482} :catch_7f4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_462 .. :try_end_482} :catch_7e9
    .catch Ljavax/xml/transform/TransformerException; {:try_start_462 .. :try_end_482} :catch_7de
    .catch Ljava/io/IOException; {:try_start_462 .. :try_end_482} :catch_7d3
    .catch Ljava/lang/Exception; {:try_start_462 .. :try_end_482} :catch_7c8
    .catchall {:try_start_462 .. :try_end_482} :catchall_936

    if-eqz v9, :cond_48a

    :try_start_484
    const-string/jumbo v13, "space"

    invoke-interface {v1, v13, v9}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_48a
    if-eqz v10, :cond_491

    const-string v13, "allowSpace"

    invoke-interface {v1, v13, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_491
    .catch Lorg/xml/sax/SAXException; {:try_start_484 .. :try_end_491} :catch_44a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_484 .. :try_end_491} :catch_43f
    .catch Ljavax/xml/transform/TransformerException; {:try_start_484 .. :try_end_491} :catch_434
    .catch Ljava/io/IOException; {:try_start_484 .. :try_end_491} :catch_429
    .catch Ljava/lang/Exception; {:try_start_484 .. :try_end_491} :catch_41e
    .catchall {:try_start_484 .. :try_end_491} :catchall_936

    :cond_491
    const/4 v13, 0x0

    :goto_492
    move-object/from16 v32, v8

    :try_start_494
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8
    :try_end_498
    .catch Lorg/xml/sax/SAXException; {:try_start_494 .. :try_end_498} :catch_7bf
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_494 .. :try_end_498} :catch_7b6
    .catch Ljavax/xml/transform/TransformerException; {:try_start_494 .. :try_end_498} :catch_7ad
    .catch Ljava/io/IOException; {:try_start_494 .. :try_end_498} :catch_7a4
    .catch Ljava/lang/Exception; {:try_start_494 .. :try_end_498} :catch_79b
    .catchall {:try_start_494 .. :try_end_498} :catchall_936

    if-ge v13, v8, :cond_6da

    :try_start_49a
    invoke-interface {v14, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;
    :try_end_4a0
    .catch Lorg/xml/sax/SAXException; {:try_start_49a .. :try_end_4a0} :catch_6cf
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_49a .. :try_end_4a0} :catch_6c4
    .catch Ljavax/xml/transform/TransformerException; {:try_start_49a .. :try_end_4a0} :catch_6b9
    .catch Ljava/io/IOException; {:try_start_49a .. :try_end_4a0} :catch_6ae
    .catch Ljava/lang/Exception; {:try_start_49a .. :try_end_4a0} :catch_6a3
    .catchall {:try_start_49a .. :try_end_4a0} :catchall_936

    move-object/from16 v33, v9

    :try_start_4a2
    const-string/jumbo v9, "signature"

    invoke-interface {v8, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_664

    invoke-static {v8, v3}, Lcom/android/server/ResourceManager;->checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    if-eqz v9, :cond_636

    sget-boolean v16, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_4b7
    .catch Lorg/xml/sax/SAXException; {:try_start_4a2 .. :try_end_4b7} :catch_69a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4a2 .. :try_end_4b7} :catch_691
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4a2 .. :try_end_4b7} :catch_688
    .catch Ljava/io/IOException; {:try_start_4a2 .. :try_end_4b7} :catch_67f
    .catch Ljava/lang/Exception; {:try_start_4a2 .. :try_end_4b7} :catch_676
    .catchall {:try_start_4a2 .. :try_end_4b7} :catchall_936

    if-eqz v16, :cond_4f9

    :try_start_4b9
    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    move-object/from16 v34, v8

    const-string v8, "ResourceManager"
    :try_end_4bf
    .catch Lorg/xml/sax/SAXException; {:try_start_4b9 .. :try_end_4bf} :catch_4f2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4b9 .. :try_end_4bf} :catch_4eb
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4b9 .. :try_end_4bf} :catch_4e4
    .catch Ljava/io/IOException; {:try_start_4b9 .. :try_end_4bf} :catch_4dd
    .catch Ljava/lang/Exception; {:try_start_4b9 .. :try_end_4bf} :catch_4d6
    .catchall {:try_start_4b9 .. :try_end_4bf} :catchall_936

    move-object/from16 v35, v10

    :try_start_4c1
    const-string v10, "Exist elem not null. Package Name already exists"

    invoke-virtual {v2, v8, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c6
    .catch Lorg/xml/sax/SAXException; {:try_start_4c1 .. :try_end_4c6} :catch_4d3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4c1 .. :try_end_4c6} :catch_4d0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4c1 .. :try_end_4c6} :catch_4cd
    .catch Ljava/io/IOException; {:try_start_4c1 .. :try_end_4c6} :catch_4ca
    .catch Ljava/lang/Exception; {:try_start_4c1 .. :try_end_4c6} :catch_4c7
    .catchall {:try_start_4c1 .. :try_end_4c6} :catchall_936

    goto :goto_4fd

    :catch_4c7
    move-exception v0

    goto/16 :goto_425

    :catch_4ca
    move-exception v0

    goto/16 :goto_430

    :catch_4cd
    move-exception v0

    goto/16 :goto_43b

    :catch_4d0
    move-exception v0

    goto/16 :goto_446

    :catch_4d3
    move-exception v0

    goto/16 :goto_451

    :catch_4d6
    move-exception v0

    move-object/from16 v35, v10

    move-object/from16 v1, p0

    goto/16 :goto_8db

    :catch_4dd
    move-exception v0

    move-object/from16 v35, v10

    move-object/from16 v1, p0

    goto/16 :goto_8f0

    :catch_4e4
    move-exception v0

    move-object/from16 v35, v10

    move-object/from16 v1, p0

    goto/16 :goto_905

    :catch_4eb
    move-exception v0

    move-object/from16 v35, v10

    move-object/from16 v1, p0

    goto/16 :goto_91a

    :catch_4f2
    move-exception v0

    move-object/from16 v35, v10

    move-object/from16 v1, p0

    goto/16 :goto_92f

    :cond_4f9
    move-object/from16 v34, v8

    move-object/from16 v35, v10

    :goto_4fd
    :try_start_4fd
    sget v2, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-ne v6, v2, :cond_58d

    const-string/jumbo v2, "sdcarduserid"

    invoke-interface {v9, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/server/ResourceManager;->checkUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_547

    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_542

    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "ResourceManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_51f
    .catch Lorg/xml/sax/SAXException; {:try_start_4fd .. :try_end_51f} :catch_62f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4fd .. :try_end_51f} :catch_628
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4fd .. :try_end_51f} :catch_621
    .catch Ljava/io/IOException; {:try_start_4fd .. :try_end_51f} :catch_61a
    .catch Ljava/lang/Exception; {:try_start_4fd .. :try_end_51f} :catch_613
    .catchall {:try_start_4fd .. :try_end_51f} :catchall_936

    move-object/from16 v36, v15

    :try_start_521
    const-string v15, "addEntryToMac, Existing "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " entry for "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", return true and continue with next step"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_541
    .catch Lorg/xml/sax/SAXException; {:try_start_521 .. :try_end_541} :catch_661
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_521 .. :try_end_541} :catch_65e
    .catch Ljavax/xml/transform/TransformerException; {:try_start_521 .. :try_end_541} :catch_65b
    .catch Ljava/io/IOException; {:try_start_521 .. :try_end_541} :catch_658
    .catch Ljava/lang/Exception; {:try_start_521 .. :try_end_541} :catch_655
    .catchall {:try_start_521 .. :try_end_541} :catchall_936

    goto :goto_544

    :cond_542
    move-object/from16 v36, v15

    :goto_544
    monitor-exit v7

    const/4 v2, 0x0

    return v2

    :cond_547
    move-object/from16 v36, v15

    const/4 v2, 0x0

    :try_start_54a
    const-string/jumbo v8, "sdcarduserid"

    invoke-interface {v9, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_57f

    const-string/jumbo v8, "sdcarduserid"

    invoke-interface {v9, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_57f

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "sdcarduserid"

    invoke-interface {v9, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    goto :goto_584

    :cond_57f
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    :goto_584
    const-string/jumbo v8, "sdcarduserid"

    invoke-interface {v9, v8, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x1

    goto/16 :goto_6e4

    :cond_58d
    move-object/from16 v36, v15

    sget v2, Lcom/android/server/ResourceManager;->APM_TYPE:I

    if-ne v6, v2, :cond_63c

    const-string v2, "apmWL"

    invoke-interface {v9, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/server/ResourceManager;->checkUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5d3

    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_5d0

    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "ResourceManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "addEntryToMac, Existing "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " entry for "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", return true and continue with next step"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5d0
    .catch Lorg/xml/sax/SAXException; {:try_start_54a .. :try_end_5d0} :catch_661
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_54a .. :try_end_5d0} :catch_65e
    .catch Ljavax/xml/transform/TransformerException; {:try_start_54a .. :try_end_5d0} :catch_65b
    .catch Ljava/io/IOException; {:try_start_54a .. :try_end_5d0} :catch_658
    .catch Ljava/lang/Exception; {:try_start_54a .. :try_end_5d0} :catch_655
    .catchall {:try_start_54a .. :try_end_5d0} :catchall_936

    :cond_5d0
    monitor-exit v7

    const/4 v2, 0x0

    return v2

    :cond_5d3
    const/4 v2, 0x0

    :try_start_5d4
    const-string v8, "apmWL"

    invoke-interface {v9, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_606

    const-string v8, "apmWL"

    invoke-interface {v9, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_606

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "apmWL"

    invoke-interface {v9, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    goto :goto_60b

    :cond_606
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    :goto_60b
    const-string v8, "apmWL"

    invoke-interface {v9, v8, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x1

    goto/16 :goto_6e4

    :catch_613
    move-exception v0

    move-object/from16 v36, v15

    move-object/from16 v1, p0

    goto/16 :goto_8db

    :catch_61a
    move-exception v0

    move-object/from16 v36, v15

    move-object/from16 v1, p0

    goto/16 :goto_8f0

    :catch_621
    move-exception v0

    move-object/from16 v36, v15

    move-object/from16 v1, p0

    goto/16 :goto_905

    :catch_628
    move-exception v0

    move-object/from16 v36, v15

    move-object/from16 v1, p0

    goto/16 :goto_91a

    :catch_62f
    move-exception v0

    move-object/from16 v36, v15

    move-object/from16 v1, p0

    goto/16 :goto_92f

    :cond_636
    move-object/from16 v34, v8

    move-object/from16 v35, v10

    move-object/from16 v36, v15

    :cond_63c
    invoke-interface {v14, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2, v5}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_650

    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "ResourceManager"

    const-string v10, "addEntryToMac, signature match found. Appending elem"

    invoke-virtual {v2, v8, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_650
    .catch Lorg/xml/sax/SAXException; {:try_start_5d4 .. :try_end_650} :catch_661
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5d4 .. :try_end_650} :catch_65e
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5d4 .. :try_end_650} :catch_65b
    .catch Ljava/io/IOException; {:try_start_5d4 .. :try_end_650} :catch_658
    .catch Ljava/lang/Exception; {:try_start_5d4 .. :try_end_650} :catch_655
    .catchall {:try_start_5d4 .. :try_end_650} :catchall_936

    :cond_650
    const/4 v2, 0x1

    nop

    move v8, v2

    goto/16 :goto_6e4

    :catch_655
    move-exception v0

    goto/16 :goto_6f6

    :catch_658
    move-exception v0

    goto/16 :goto_6fd

    :catch_65b
    move-exception v0

    goto/16 :goto_704

    :catch_65e
    move-exception v0

    goto/16 :goto_70b

    :catch_661
    move-exception v0

    goto/16 :goto_712

    :cond_664
    move-object/from16 v34, v8

    move-object/from16 v35, v10

    move-object/from16 v36, v15

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v8, v32

    move-object/from16 v9, v33

    move-object/from16 v16, v34

    move-object/from16 v2, p1

    goto/16 :goto_492

    :catch_676
    move-exception v0

    move-object/from16 v35, v10

    move-object/from16 v36, v15

    move-object/from16 v1, p0

    goto/16 :goto_8db

    :catch_67f
    move-exception v0

    move-object/from16 v35, v10

    move-object/from16 v36, v15

    move-object/from16 v1, p0

    goto/16 :goto_8f0

    :catch_688
    move-exception v0

    move-object/from16 v35, v10

    move-object/from16 v36, v15

    move-object/from16 v1, p0

    goto/16 :goto_905

    :catch_691
    move-exception v0

    move-object/from16 v35, v10

    move-object/from16 v36, v15

    move-object/from16 v1, p0

    goto/16 :goto_91a

    :catch_69a
    move-exception v0

    move-object/from16 v35, v10

    move-object/from16 v36, v15

    move-object/from16 v1, p0

    goto/16 :goto_92f

    :catch_6a3
    move-exception v0

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v36, v15

    move-object/from16 v1, p0

    goto/16 :goto_8db

    :catch_6ae
    move-exception v0

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v36, v15

    move-object/from16 v1, p0

    goto/16 :goto_8f0

    :catch_6b9
    move-exception v0

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v36, v15

    move-object/from16 v1, p0

    goto/16 :goto_905

    :catch_6c4
    move-exception v0

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v36, v15

    move-object/from16 v1, p0

    goto/16 :goto_91a

    :catch_6cf
    move-exception v0

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v36, v15

    move-object/from16 v1, p0

    goto/16 :goto_92f

    :cond_6da
    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v36, v15

    move-object/from16 v34, v16

    move/from16 v8, v18

    :goto_6e4
    if-nez v8, :cond_716

    :try_start_6e6
    invoke-interface {v0, v11}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_6f2
    .catch Lorg/xml/sax/SAXException; {:try_start_6e6 .. :try_end_6f2} :catch_70f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6e6 .. :try_end_6f2} :catch_708
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6e6 .. :try_end_6f2} :catch_701
    .catch Ljava/io/IOException; {:try_start_6e6 .. :try_end_6f2} :catch_6fa
    .catch Ljava/lang/Exception; {:try_start_6e6 .. :try_end_6f2} :catch_6f3
    .catchall {:try_start_6e6 .. :try_end_6f2} :catchall_936

    goto :goto_716

    :catch_6f3
    move-exception v0

    move/from16 v18, v8

    :goto_6f6
    move-object/from16 v15, v36

    goto/16 :goto_425

    :catch_6fa
    move-exception v0

    move/from16 v18, v8

    :goto_6fd
    move-object/from16 v15, v36

    goto/16 :goto_430

    :catch_701
    move-exception v0

    move/from16 v18, v8

    :goto_704
    move-object/from16 v15, v36

    goto/16 :goto_43b

    :catch_708
    move-exception v0

    move/from16 v18, v8

    :goto_70b
    move-object/from16 v15, v36

    goto/16 :goto_446

    :catch_70f
    move-exception v0

    move/from16 v18, v8

    :goto_712
    move-object/from16 v15, v36

    goto/16 :goto_451

    :cond_716
    :goto_716
    move-object/from16 v15, v36

    :try_start_718
    invoke-interface {v15}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Element;->normalize()V

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v9
    :try_end_727
    .catch Lorg/xml/sax/SAXException; {:try_start_718 .. :try_end_727} :catch_794
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_718 .. :try_end_727} :catch_78d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_718 .. :try_end_727} :catch_786
    .catch Ljava/io/IOException; {:try_start_718 .. :try_end_727} :catch_77f
    .catch Ljava/lang/Exception; {:try_start_718 .. :try_end_727} :catch_778
    .catchall {:try_start_718 .. :try_end_727} :catchall_936

    const/4 v10, 0x0

    if-eqz v31, :cond_74a

    :try_start_72a
    new-instance v13, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v13, v15}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_72f
    .catch Lorg/xml/sax/SAXException; {:try_start_72a .. :try_end_72f} :catch_745
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_72a .. :try_end_72f} :catch_740
    .catch Ljavax/xml/transform/TransformerException; {:try_start_72a .. :try_end_72f} :catch_73b
    .catch Ljava/io/IOException; {:try_start_72a .. :try_end_72f} :catch_736
    .catch Ljava/lang/Exception; {:try_start_72a .. :try_end_72f} :catch_731
    .catchall {:try_start_72a .. :try_end_72f} :catchall_936

    move-object v10, v13

    goto :goto_750

    :catch_731
    move-exception v0

    move/from16 v18, v8

    goto/16 :goto_425

    :catch_736
    move-exception v0

    move/from16 v18, v8

    goto/16 :goto_430

    :catch_73b
    move-exception v0

    move/from16 v18, v8

    goto/16 :goto_43b

    :catch_740
    move-exception v0

    move/from16 v18, v8

    goto/16 :goto_446

    :catch_745
    move-exception v0

    move/from16 v18, v8

    goto/16 :goto_451

    :cond_74a
    :try_start_74a
    new-instance v13, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v13, v12}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    move-object v10, v13

    :goto_750
    new-instance v13, Ljavax/xml/transform/stream/StreamResult;
    :try_end_752
    .catch Lorg/xml/sax/SAXException; {:try_start_74a .. :try_end_752} :catch_794
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_74a .. :try_end_752} :catch_78d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_74a .. :try_end_752} :catch_786
    .catch Ljava/io/IOException; {:try_start_74a .. :try_end_752} :catch_77f
    .catch Ljava/lang/Exception; {:try_start_74a .. :try_end_752} :catch_778
    .catchall {:try_start_74a .. :try_end_752} :catchall_936

    move-object/from16 v37, v1

    move-object/from16 v1, p0

    :try_start_756
    invoke-direct {v13, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    invoke-virtual {v9, v10, v13}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v16

    if-eqz v16, :cond_769

    move-object/from16 v38, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/io/File;->setWritable(Z)Z
    :try_end_768
    .catch Lorg/xml/sax/SAXException; {:try_start_756 .. :try_end_768} :catch_776
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_756 .. :try_end_768} :catch_774
    .catch Ljavax/xml/transform/TransformerException; {:try_start_756 .. :try_end_768} :catch_772
    .catch Ljava/io/IOException; {:try_start_756 .. :try_end_768} :catch_770
    .catch Ljava/lang/Exception; {:try_start_756 .. :try_end_768} :catch_76e
    .catchall {:try_start_756 .. :try_end_768} :catchall_936

    goto :goto_76b

    :cond_769
    move-object/from16 v38, v0

    :goto_76b
    monitor-exit v7

    const/4 v0, 0x0

    return v0

    :catch_76e
    move-exception v0

    goto :goto_77b

    :catch_770
    move-exception v0

    goto :goto_782

    :catch_772
    move-exception v0

    goto :goto_789

    :catch_774
    move-exception v0

    goto :goto_790

    :catch_776
    move-exception v0

    goto :goto_797

    :catch_778
    move-exception v0

    move-object/from16 v1, p0

    :goto_77b
    move/from16 v18, v8

    goto/16 :goto_8db

    :catch_77f
    move-exception v0

    move-object/from16 v1, p0

    :goto_782
    move/from16 v18, v8

    goto/16 :goto_8f0

    :catch_786
    move-exception v0

    move-object/from16 v1, p0

    :goto_789
    move/from16 v18, v8

    goto/16 :goto_905

    :catch_78d
    move-exception v0

    move-object/from16 v1, p0

    :goto_790
    move/from16 v18, v8

    goto/16 :goto_91a

    :catch_794
    move-exception v0

    move-object/from16 v1, p0

    :goto_797
    move/from16 v18, v8

    goto/16 :goto_92f

    :catch_79b
    move-exception v0

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v1, p0

    goto/16 :goto_8db

    :catch_7a4
    move-exception v0

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v1, p0

    goto/16 :goto_8f0

    :catch_7ad
    move-exception v0

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v1, p0

    goto/16 :goto_905

    :catch_7b6
    move-exception v0

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v1, p0

    goto/16 :goto_91a

    :catch_7bf
    move-exception v0

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v1, p0

    goto/16 :goto_92f

    :catch_7c8
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v1, p0

    goto/16 :goto_8db

    :catch_7d3
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v1, p0

    goto/16 :goto_8f0

    :catch_7de
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v1, p0

    goto/16 :goto_905

    :catch_7e9
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v1, p0

    goto/16 :goto_91a

    :catch_7f4
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v1, p0

    goto/16 :goto_92f

    :catch_7ff
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v31, v13

    goto/16 :goto_8db

    :catch_80c
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v31, v13

    goto/16 :goto_8f0

    :catch_819
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v31, v13

    goto/16 :goto_905

    :catch_826
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v31, v13

    goto/16 :goto_91a

    :catch_833
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v31, v13

    goto/16 :goto_92f

    :catch_840
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v31, v19

    goto/16 :goto_8db

    :catch_84d
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v31, v19

    goto/16 :goto_8f0

    :catch_85a
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v31, v19

    goto/16 :goto_905

    :catch_867
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v31, v19

    goto/16 :goto_91a

    :catch_874
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v31, v19

    goto/16 :goto_92f

    :catch_881
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v20, v14

    move/from16 v31, v19

    goto :goto_8db

    :catch_88f
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v20, v14

    move/from16 v31, v19

    goto :goto_8f0

    :catch_89d
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v20, v14

    move/from16 v31, v19

    goto/16 :goto_905

    :catch_8ac
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v20, v14

    move/from16 v31, v19

    goto/16 :goto_91a

    :catch_8bb
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move-object/from16 v20, v14

    move/from16 v31, v19

    goto/16 :goto_92f

    :catch_8ca
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v18, v12

    move/from16 v19, v13

    move-object/from16 v20, v14

    move/from16 v31, v19

    :goto_8db
    :try_start_8db
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_933

    :catch_8df
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v18, v12

    move/from16 v19, v13

    move-object/from16 v20, v14

    move/from16 v31, v19

    :goto_8f0
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_932

    :catch_8f4
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v18, v12

    move/from16 v19, v13

    move-object/from16 v20, v14

    move/from16 v31, v19

    :goto_905
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_932

    :catch_909
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v18, v12

    move/from16 v19, v13

    move-object/from16 v20, v14

    move/from16 v31, v19

    :goto_91a
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_932

    :catch_91e
    move-exception v0

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v35, v10

    move-object/from16 v30, v11

    move/from16 v18, v12

    move/from16 v19, v13

    move-object/from16 v20, v14

    move/from16 v31, v19

    :goto_92f
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_932
    .catchall {:try_start_8db .. :try_end_932} :catchall_936

    :goto_932
    nop

    :goto_933
    const/4 v0, -0x1

    monitor-exit v7

    return v0

    :catchall_936
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method private static checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_11

    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_10

    sget-object v1, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "ResourceManager"

    const-string v3, "checkTrustedEntryExists: curElem is null"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    return-object v0

    :cond_11
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    nop

    :goto_18
    if-eqz v1, :cond_4b

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "seinfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    const-string/jumbo v2, "name"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_41

    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "ResourceManager"

    const-string v4, "checkTrustedEntryExists, Match found..returning elem"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    move-object v0, v1

    goto :goto_4b

    :cond_43
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lorg/w3c/dom/Element;

    goto :goto_18

    :cond_4b
    :goto_4b
    return-object v0
.end method

.method private static checkUser(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_24

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "ResourceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkUser: existUsers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", newUser="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_2d
    if-ge v3, v1, :cond_3c

    aget-object v4, v0, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    const/4 v1, 0x1

    return v1

    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    :cond_3c
    return v2
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/ResourceManager;
    .registers 3

    const-class v0, Lcom/android/server/ResourceManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/ResourceManager;->instance:Lcom/android/server/ResourceManager;

    if-nez v1, :cond_e

    new-instance v1, Lcom/android/server/ResourceManager;

    invoke-direct {v1, p0}, Lcom/android/server/ResourceManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/ResourceManager;->instance:Lcom/android/server/ResourceManager;

    :cond_e
    sget-object v1, Lcom/android/server/ResourceManager;->instance:Lcom/android/server/ResourceManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getSignatureFromPackage(Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_12

    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_11

    sget-object v1, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "ResourceManager"

    const-string/jumbo v3, "getSignatureFromPackage: packageName is null"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    return-object v0

    :cond_12
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    move-object v2, v0

    const/high16 v3, 0x8000000

    :try_start_19
    invoke-interface {v1, p0, v3, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    move-object v2, v3

    if-eqz v2, :cond_42

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-eqz v3, :cond_42

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v3}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v3

    if-eqz v3, :cond_42

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_32
    array-length v6, v3

    if-ge v5, v6, :cond_41

    aget-object v6, v3, v5

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_3e} :catch_44

    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    :cond_41
    return-object v4

    :cond_42
    nop

    return-object v0

    :catch_44
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    goto :goto_10

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object p0, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_11

    if-lez v1, :cond_3

    move-object v0, p0

    :goto_10
    return-object v0

    :catch_11
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private static hashset_to_str_array(Ljava/util/HashSet;)[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "ResourceManager"

    const-string v1, "Entered hashset_to_str_array in ResourceManager"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    if-eqz p0, :cond_33

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_14

    goto :goto_33

    :cond_14
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    aput-object v3, v0, v1

    nop

    move v1, v4

    goto :goto_1f

    :cond_32
    return-object v0

    :cond_33
    :goto_33
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_3e

    const-string v0, "ResourceManager"

    const-string v1, " hashset_to_str_array returning null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    const/4 v0, 0x0

    return-object v0
.end method

.method private loadContainerSetting(Ljava/lang/String;ILjava/lang/String;Z)I
    .registers 9

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_e

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "ResourceManager"

    const-string/jumbo v2, "loadContainerSetting_begin"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    const/4 v0, -0x1

    if-nez p1, :cond_1c

    sget-object v1, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "ResourceManager"

    const-string/jumbo v3, "loadContainerSetting, packageName is null"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1c
    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_2a

    sget-object v1, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "ResourceManager"

    const-string/jumbo v3, "loadContainerSetting, before calling updateAppInfo"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    const-string/jumbo v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService;

    iput-object v1, p0, Lcom/android/server/ResourceManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/ResourceManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->getPackageManagerSEAMS()Lcom/android/server/pm/PackageManagerSEAMS;

    move-result-object v1

    invoke-virtual {v1, p1, p3, p4}, Lcom/android/server/pm/PackageManagerSEAMS;->updateAppInfoForPackage(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_50

    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_4f

    sget-object v1, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "ResourceManager"

    const-string/jumbo v3, "loadContainerSetting, done with updateAppInfoForPackage"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4f
    const/4 v0, 0x0

    :cond_50
    return v0
.end method

.method private removeAppFromBlacklistInternal(ILjava/lang/String;I)I
    .registers 13

    const/4 v0, 0x0

    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_f

    sget-object v1, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "ResourceManager"

    const-string/jumbo v3, "enter removeAppFromBlacklist"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    sget v1, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    const/4 v2, -0x1

    if-eq p3, v1, :cond_15

    return v2

    :cond_15
    invoke-static {p2}, Lcom/android/server/ResourceManager;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_25

    sget-object v1, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "ResourceManager"

    const-string v4, " removeAppFromBlacklist failed, no packageName found"

    invoke-virtual {v1, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_25
    const/4 v1, 0x0

    invoke-static {p2, p1}, Lcom/android/server/ResourceManager;->getSignatureFromPackage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_3c

    sget-boolean v4, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v4, :cond_3a

    sget-object v4, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "ResourceManager"

    const-string/jumbo v6, "removeAppFromWhitelist, signature is null, package not installed yet"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    const/4 v0, 0x1

    return v2

    :cond_3c
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/android/server/ResourceManager;->WHITELIST_MAC_PERM:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_43
    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_69

    sget-object v5, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "ResourceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " removeAppFromBlacklist tempPackage = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "ResourceManager"

    const-string/jumbo v7, "removeAppFromBlacklist ok!11"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_69
    invoke-static {v4, p2, p1, p3}, Lcom/android/server/ResourceManager;->removeBlacklistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z

    move-result v5

    if-nez v5, :cond_7a

    sget-object v5, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "ResourceManager"

    const-string/jumbo v7, "removeEntryFromMac failed"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_7a
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, p2, p1, v6, v0}, Lcom/android/server/ResourceManager;->loadContainerSetting(Ljava/lang/String;ILjava/lang/String;Z)I

    move-result v6
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_85} :catch_98

    if-ne v6, v2, :cond_88

    return v2

    :cond_88
    nop

    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_97

    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "ResourceManager"

    const-string/jumbo v7, "leave removeAppFromBlacklist"

    invoke-virtual {v2, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_97
    return v5

    :catch_98
    move-exception v5

    return v2
.end method

.method protected static declared-synchronized removeBlacklistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z
    .registers 27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-class v3, Lcom/android/server/ResourceManager;

    monitor-enter v3

    :try_start_7
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_15

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "ResourceManager"

    const-string/jumbo v5, "removeBlacklistEntryFromMac_begin"

    invoke-virtual {v0, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_30c

    move-object v6, v0

    :try_start_1c
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_28e

    sget-boolean v8, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_2a
    .catch Lorg/xml/sax/SAXException; {:try_start_1c .. :try_end_2a} :catch_2ff
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1c .. :try_end_2a} :catch_2f4
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1c .. :try_end_2a} :catch_2e9
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_2a} :catch_2de
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2a} :catch_2d3
    .catchall {:try_start_1c .. :try_end_2a} :catchall_30c

    if-eqz v8, :cond_5a

    :try_start_2c
    sget-object v8, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "ResourceManager"

    const-string/jumbo v11, "macpermfile exists"

    invoke-virtual {v8, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catch Lorg/xml/sax/SAXException; {:try_start_2c .. :try_end_36} :catch_53
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2c .. :try_end_36} :catch_4c
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2c .. :try_end_36} :catch_45
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_36} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_36} :catch_37
    .catchall {:try_start_2c .. :try_end_36} :catchall_30c

    goto :goto_5a

    :catch_37
    move-exception v0

    move/from16 v14, p3

    move-object/from16 v18, v5

    goto/16 :goto_2da

    :catch_3e
    move-exception v0

    move/from16 v14, p3

    move-object/from16 v18, v5

    goto/16 :goto_2e5

    :catch_45
    move-exception v0

    move/from16 v14, p3

    move-object/from16 v18, v5

    goto/16 :goto_2f0

    :catch_4c
    move-exception v0

    move/from16 v14, p3

    move-object/from16 v18, v5

    goto/16 :goto_2fb

    :catch_53
    move-exception v0

    move/from16 v14, p3

    move-object/from16 v18, v5

    goto/16 :goto_306

    :cond_5a
    :goto_5a
    :try_start_5a
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v8
    :try_end_5e
    .catch Lorg/xml/sax/SAXException; {:try_start_5a .. :try_end_5e} :catch_2ff
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5a .. :try_end_5e} :catch_2f4
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5a .. :try_end_5e} :catch_2e9
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5e} :catch_2de
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5e} :catch_2d3
    .catchall {:try_start_5a .. :try_end_5e} :catchall_30c

    if-nez v8, :cond_64

    const/4 v8, 0x1

    :try_start_61
    invoke-virtual {v1, v8}, Ljava/io/File;->setWritable(Z)Z
    :try_end_64
    .catch Lorg/xml/sax/SAXException; {:try_start_61 .. :try_end_64} :catch_53
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_61 .. :try_end_64} :catch_4c
    .catch Ljavax/xml/transform/TransformerException; {:try_start_61 .. :try_end_64} :catch_45
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_37
    .catchall {:try_start_61 .. :try_end_64} :catchall_30c

    :cond_64
    :try_start_64
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v8

    move-object v7, v8

    invoke-interface {v7}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Element;->normalize()V

    const-string/jumbo v8, "policy"

    invoke-interface {v7, v8}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    const/4 v10, 0x0

    invoke-interface {v8, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    move-object v10, v11

    const-string/jumbo v11, "signer"

    invoke-interface {v10, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget-boolean v14, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_8a
    .catch Lorg/xml/sax/SAXException; {:try_start_64 .. :try_end_8a} :catch_2ff
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_64 .. :try_end_8a} :catch_2f4
    .catch Ljavax/xml/transform/TransformerException; {:try_start_64 .. :try_end_8a} :catch_2e9
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_8a} :catch_2de
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_8a} :catch_2d3
    .catchall {:try_start_64 .. :try_end_8a} :catchall_30c

    if-eqz v14, :cond_b5

    :try_start_8c
    sget-object v14, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v15, "ResourceManager"

    const-string v9, "Looking for matching entry in /data/security/whitelist/mac_permissions.xml"

    invoke-virtual {v14, v15, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v9, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "ResourceManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    const-string/jumbo v0, "the signer length is "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v14, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b4
    .catch Lorg/xml/sax/SAXException; {:try_start_8c .. :try_end_b4} :catch_53
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8c .. :try_end_b4} :catch_4c
    .catch Ljavax/xml/transform/TransformerException; {:try_start_8c .. :try_end_b4} :catch_45
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_b4} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_b4} :catch_37
    .catchall {:try_start_8c .. :try_end_b4} :catchall_30c

    goto :goto_b7

    :cond_b5
    move-object/from16 v16, v0

    :goto_b7
    const/4 v0, 0x0

    :goto_b8
    :try_start_b8
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v0, v9, :cond_1c3

    invoke-interface {v11, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    move-object v12, v9

    invoke-static {v12, v2}, Lcom/android/server/ResourceManager;->checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    move-object v13, v9

    if-eqz v13, :cond_1b5

    sget v9, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I
    :try_end_ce
    .catch Lorg/xml/sax/SAXException; {:try_start_b8 .. :try_end_ce} :catch_2ff
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_b8 .. :try_end_ce} :catch_2f4
    .catch Ljavax/xml/transform/TransformerException; {:try_start_b8 .. :try_end_ce} :catch_2e9
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_ce} :catch_2de
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_ce} :catch_2d3
    .catchall {:try_start_b8 .. :try_end_ce} :catchall_30c

    move/from16 v14, p3

    if-ne v14, v9, :cond_1b7

    :try_start_d2
    const-string/jumbo v9, "sdcarduseridBL"

    invoke-interface {v13, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_182

    sget-boolean v9, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v9, :cond_12c

    sget-object v9, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v15, "ResourceManager"
    :try_end_e3
    .catch Lorg/xml/sax/SAXException; {:try_start_d2 .. :try_end_e3} :catch_1b2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_d2 .. :try_end_e3} :catch_1af
    .catch Ljavax/xml/transform/TransformerException; {:try_start_d2 .. :try_end_e3} :catch_1ac
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_e3} :catch_1a9
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_e3} :catch_1a6
    .catchall {:try_start_d2 .. :try_end_e3} :catchall_30c

    move/from16 v17, v4

    :try_start_e5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_ea
    .catch Lorg/xml/sax/SAXException; {:try_start_e5 .. :try_end_ea} :catch_125
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_e5 .. :try_end_ea} :catch_11e
    .catch Ljavax/xml/transform/TransformerException; {:try_start_e5 .. :try_end_ea} :catch_117
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_ea} :catch_110
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_ea} :catch_109
    .catchall {:try_start_e5 .. :try_end_ea} :catchall_30c

    move-object/from16 v18, v5

    :try_start_ec
    const-string/jumbo v5, "removeBlacklistEntryFromMac, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " match found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v15, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_130

    :catch_109
    move-exception v0

    move-object/from16 v18, v5

    move/from16 v4, v17

    goto/16 :goto_2da

    :catch_110
    move-exception v0

    move-object/from16 v18, v5

    move/from16 v4, v17

    goto/16 :goto_2e5

    :catch_117
    move-exception v0

    move-object/from16 v18, v5

    move/from16 v4, v17

    goto/16 :goto_2f0

    :catch_11e
    move-exception v0

    move-object/from16 v18, v5

    move/from16 v4, v17

    goto/16 :goto_2fb

    :catch_125
    move-exception v0

    move-object/from16 v18, v5

    move/from16 v4, v17

    goto/16 :goto_306

    :cond_12c
    move/from16 v17, v4

    move-object/from16 v18, v5

    :goto_130
    const-string/jumbo v4, "sdcarduseridBL"

    invoke-interface {v13, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_158

    sget-boolean v4, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v4, :cond_14f

    sget-object v4, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "ResourceManager"

    const-string/jumbo v9, "removeBlacklistEntryFrommac - User ID Match"

    invoke-virtual {v4, v5, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14f
    const-string/jumbo v4, "sdcarduseridBL"

    invoke-interface {v13, v4}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_1c9

    :cond_158
    sget-boolean v4, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v4, :cond_166

    sget-object v4, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "ResourceManager"

    const-string/jumbo v9, "it is for Generic Trusted with partial space match"

    invoke-virtual {v4, v5, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_166
    const-string/jumbo v4, "sdcarduseridBL"

    invoke-interface {v13, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ResourceManager;->removeUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_181

    const-string/jumbo v5, "sdcarduseridBL"

    invoke-interface {v13, v5, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    nop

    move v4, v5

    goto :goto_1c9

    :cond_181
    goto :goto_1bb

    :cond_182
    move/from16 v17, v4

    move-object/from16 v18, v5

    sget-boolean v4, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v4, :cond_1a3

    sget-object v4, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "ResourceManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "removeBlacklistEntryFromMac, no match found for"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a3
    .catch Lorg/xml/sax/SAXException; {:try_start_ec .. :try_end_1a3} :catch_2cf
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_ec .. :try_end_1a3} :catch_2cb
    .catch Ljavax/xml/transform/TransformerException; {:try_start_ec .. :try_end_1a3} :catch_2c7
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_1a3} :catch_2c3
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_1a3} :catch_2bf
    .catchall {:try_start_ec .. :try_end_1a3} :catchall_30c

    :cond_1a3
    monitor-exit v3

    const/4 v3, 0x0

    return v3

    :catch_1a6
    move-exception v0

    goto/16 :goto_2d6

    :catch_1a9
    move-exception v0

    goto/16 :goto_2e1

    :catch_1ac
    move-exception v0

    goto/16 :goto_2ec

    :catch_1af
    move-exception v0

    goto/16 :goto_2f7

    :catch_1b2
    move-exception v0

    goto/16 :goto_302

    :cond_1b5
    move/from16 v14, p3

    :cond_1b7
    move/from16 v17, v4

    move-object/from16 v18, v5

    :goto_1bb
    add-int/lit8 v0, v0, 0x1

    move/from16 v4, v17

    move-object/from16 v5, v18

    goto/16 :goto_b8

    :cond_1c3
    move/from16 v14, p3

    move/from16 v17, v4

    move-object/from16 v18, v5

    :goto_1c9
    if-eqz v4, :cond_247

    :try_start_1cb
    const-string/jumbo v0, "service"

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5
    :try_end_1d6
    .catch Lorg/xml/sax/SAXException; {:try_start_1cb .. :try_end_1d6} :catch_242
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1cb .. :try_end_1d6} :catch_23d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1cb .. :try_end_1d6} :catch_238
    .catch Ljava/io/IOException; {:try_start_1cb .. :try_end_1d6} :catch_233
    .catch Ljava/lang/Exception; {:try_start_1cb .. :try_end_1d6} :catch_22e
    .catchall {:try_start_1cb .. :try_end_1d6} :catchall_30c

    if-nez v5, :cond_1eb

    :try_start_1d8
    invoke-interface {v10, v12}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_1db
    .catch Lorg/xml/sax/SAXException; {:try_start_1d8 .. :try_end_1db} :catch_1e8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1d8 .. :try_end_1db} :catch_1e5
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1d8 .. :try_end_1db} :catch_1e2
    .catch Ljava/io/IOException; {:try_start_1d8 .. :try_end_1db} :catch_1df
    .catch Ljava/lang/Exception; {:try_start_1d8 .. :try_end_1db} :catch_1dc
    .catchall {:try_start_1d8 .. :try_end_1db} :catchall_30c

    goto :goto_1eb

    :catch_1dc
    move-exception v0

    goto/16 :goto_2da

    :catch_1df
    move-exception v0

    goto/16 :goto_2e5

    :catch_1e2
    move-exception v0

    goto/16 :goto_2f0

    :catch_1e5
    move-exception v0

    goto/16 :goto_2fb

    :catch_1e8
    move-exception v0

    goto/16 :goto_306

    :cond_1eb
    :goto_1eb
    :try_start_1eb
    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_1ed
    .catch Lorg/xml/sax/SAXException; {:try_start_1eb .. :try_end_1ed} :catch_242
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1eb .. :try_end_1ed} :catch_23d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1eb .. :try_end_1ed} :catch_238
    .catch Ljava/io/IOException; {:try_start_1eb .. :try_end_1ed} :catch_233
    .catch Ljava/lang/Exception; {:try_start_1eb .. :try_end_1ed} :catch_22e
    .catchall {:try_start_1eb .. :try_end_1ed} :catchall_30c

    if-eqz v5, :cond_1f9

    :try_start_1ef
    sget-object v5, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "ResourceManager"

    const-string/jumbo v15, "removeBlacklistEntryFromMac, Match found..deleted elem...writing to file"

    invoke-virtual {v5, v9, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f9
    .catch Lorg/xml/sax/SAXException; {:try_start_1ef .. :try_end_1f9} :catch_1e8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1ef .. :try_end_1f9} :catch_1e5
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1ef .. :try_end_1f9} :catch_1e2
    .catch Ljava/io/IOException; {:try_start_1ef .. :try_end_1f9} :catch_1df
    .catch Ljava/lang/Exception; {:try_start_1ef .. :try_end_1f9} :catch_1dc
    .catchall {:try_start_1ef .. :try_end_1f9} :catchall_30c

    :cond_1f9
    :try_start_1f9
    invoke-interface {v7}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Element;->normalize()V

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v9

    new-instance v15, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v15, v7}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    move-object/from16 v19, v0

    new-instance v0, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    invoke-virtual {v9, v15, v0}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    sget-boolean v17, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v17, :cond_22b

    move-object/from16 v20, v0

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;
    :try_end_21f
    .catch Lorg/xml/sax/SAXException; {:try_start_1f9 .. :try_end_21f} :catch_242
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1f9 .. :try_end_21f} :catch_23d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1f9 .. :try_end_21f} :catch_238
    .catch Ljava/io/IOException; {:try_start_1f9 .. :try_end_21f} :catch_233
    .catch Ljava/lang/Exception; {:try_start_1f9 .. :try_end_21f} :catch_22e
    .catchall {:try_start_1f9 .. :try_end_21f} :catchall_30c

    move/from16 v21, v4

    :try_start_221
    const-string v4, "ResourceManager"

    move-object/from16 v22, v5

    const-string v5, " removeBlacklistEntryFromMac, entry removed from mac_permissions.xml"

    invoke-virtual {v0, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22d

    :cond_22b
    move/from16 v21, v4

    :goto_22d
    goto :goto_266

    :catch_22e
    move-exception v0

    move/from16 v21, v4

    goto/16 :goto_2da

    :catch_233
    move-exception v0

    move/from16 v21, v4

    goto/16 :goto_2e5

    :catch_238
    move-exception v0

    move/from16 v21, v4

    goto/16 :goto_2f0

    :catch_23d
    move-exception v0

    move/from16 v21, v4

    goto/16 :goto_2fb

    :catch_242
    move-exception v0

    move/from16 v21, v4

    goto/16 :goto_306

    :cond_247
    move/from16 v21, v4

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "ResourceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " removeBlacklistEntryFromMac, No match for packageName:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ". Please check again"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :goto_266
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_270

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/io/File;->setWritable(Z)Z
    :try_end_270
    .catch Lorg/xml/sax/SAXException; {:try_start_221 .. :try_end_270} :catch_289
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_221 .. :try_end_270} :catch_284
    .catch Ljavax/xml/transform/TransformerException; {:try_start_221 .. :try_end_270} :catch_27f
    .catch Ljava/io/IOException; {:try_start_221 .. :try_end_270} :catch_27a
    .catch Ljava/lang/Exception; {:try_start_221 .. :try_end_270} :catch_275
    .catchall {:try_start_221 .. :try_end_270} :catchall_30c

    :cond_270
    nop

    move/from16 v4, v21

    goto/16 :goto_30a

    :catch_275
    move-exception v0

    move/from16 v4, v21

    goto/16 :goto_2da

    :catch_27a
    move-exception v0

    move/from16 v4, v21

    goto/16 :goto_2e5

    :catch_27f
    move-exception v0

    move/from16 v4, v21

    goto/16 :goto_2f0

    :catch_284
    move-exception v0

    move/from16 v4, v21

    goto/16 :goto_2fb

    :catch_289
    move-exception v0

    move/from16 v4, v21

    goto/16 :goto_306

    :cond_28e
    move/from16 v14, p3

    move-object/from16 v16, v0

    move/from16 v17, v4

    move-object/from16 v18, v5

    :try_start_296
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_2bc

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "ResourceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeBlacklistEntryFromMac, "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " does not exist, creating file"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2bc
    .catch Lorg/xml/sax/SAXException; {:try_start_296 .. :try_end_2bc} :catch_2cf
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_296 .. :try_end_2bc} :catch_2cb
    .catch Ljavax/xml/transform/TransformerException; {:try_start_296 .. :try_end_2bc} :catch_2c7
    .catch Ljava/io/IOException; {:try_start_296 .. :try_end_2bc} :catch_2c3
    .catch Ljava/lang/Exception; {:try_start_296 .. :try_end_2bc} :catch_2bf
    .catchall {:try_start_296 .. :try_end_2bc} :catchall_30c

    :cond_2bc
    monitor-exit v3

    const/4 v0, 0x0

    return v0

    :catch_2bf
    move-exception v0

    move/from16 v4, v17

    goto :goto_2da

    :catch_2c3
    move-exception v0

    move/from16 v4, v17

    goto :goto_2e5

    :catch_2c7
    move-exception v0

    move/from16 v4, v17

    goto :goto_2f0

    :catch_2cb
    move-exception v0

    move/from16 v4, v17

    goto :goto_2fb

    :catch_2cf
    move-exception v0

    move/from16 v4, v17

    goto :goto_306

    :catch_2d3
    move-exception v0

    move/from16 v14, p3

    :goto_2d6
    move/from16 v17, v4

    move-object/from16 v18, v5

    :goto_2da
    :try_start_2da
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_30a

    :catch_2de
    move-exception v0

    move/from16 v14, p3

    :goto_2e1
    move/from16 v17, v4

    move-object/from16 v18, v5

    :goto_2e5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_309

    :catch_2e9
    move-exception v0

    move/from16 v14, p3

    :goto_2ec
    move/from16 v17, v4

    move-object/from16 v18, v5

    :goto_2f0
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_309

    :catch_2f4
    move-exception v0

    move/from16 v14, p3

    :goto_2f7
    move/from16 v17, v4

    move-object/from16 v18, v5

    :goto_2fb
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_309

    :catch_2ff
    move-exception v0

    move/from16 v14, p3

    :goto_302
    move/from16 v17, v4

    move-object/from16 v18, v5

    :goto_306
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_309
    .catchall {:try_start_2da .. :try_end_309} :catchall_30c

    :goto_309
    nop

    :goto_30a
    monitor-exit v3

    return v4

    :catchall_30c
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method private static removeUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "ResourceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "existUsers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    const/4 v0, 0x0

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    const/4 v4, 0x0

    :goto_27
    if-ge v4, v3, :cond_4e

    aget-object v5, v1, v4

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    const/4 v2, 0x1

    goto :goto_4b

    :cond_33
    if-nez v0, :cond_37

    move-object v0, v5

    goto :goto_4b

    :cond_37
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    :cond_4e
    if-eqz v2, :cond_6e

    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_6d

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "ResourceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeUser, return: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6d
    return-object v0

    :cond_6e
    const/4 v3, 0x0

    return-object v3
.end method

.method protected static declared-synchronized removeWhitelistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z
    .registers 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    const-class v4, Lcom/android/server/ResourceManager;

    monitor-enter v4

    :try_start_9
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_17

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "ResourceManager"

    const-string/jumbo v6, "removeWhitelistEntryFromMac_begin"

    invoke-virtual {v0, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_410

    move-object v7, v0

    :try_start_1e
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_39e

    sget-boolean v9, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_2c
    .catch Lorg/xml/sax/SAXException; {:try_start_1e .. :try_end_2c} :catch_405
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1e .. :try_end_2c} :catch_3fc
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1e .. :try_end_2c} :catch_3f3
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_2c} :catch_3ea
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2c} :catch_3e1
    .catchall {:try_start_1e .. :try_end_2c} :catchall_410

    if-eqz v9, :cond_52

    :try_start_2e
    sget-object v9, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "ResourceManager"

    const-string/jumbo v12, "macpermfile exists"

    invoke-virtual {v9, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catch Lorg/xml/sax/SAXException; {:try_start_2e .. :try_end_38} :catch_4d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2e .. :try_end_38} :catch_48
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2e .. :try_end_38} :catch_43
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_38} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_38} :catch_39
    .catchall {:try_start_2e .. :try_end_38} :catchall_410

    goto :goto_52

    :catch_39
    move-exception v0

    move-object/from16 v18, v6

    goto/16 :goto_3e6

    :catch_3e
    move-exception v0

    move-object/from16 v18, v6

    goto/16 :goto_3ef

    :catch_43
    move-exception v0

    move-object/from16 v18, v6

    goto/16 :goto_3f8

    :catch_48
    move-exception v0

    move-object/from16 v18, v6

    goto/16 :goto_401

    :catch_4d
    move-exception v0

    move-object/from16 v18, v6

    goto/16 :goto_40a

    :cond_52
    :goto_52
    :try_start_52
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v9
    :try_end_56
    .catch Lorg/xml/sax/SAXException; {:try_start_52 .. :try_end_56} :catch_405
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_52 .. :try_end_56} :catch_3fc
    .catch Ljavax/xml/transform/TransformerException; {:try_start_52 .. :try_end_56} :catch_3f3
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_56} :catch_3ea
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_56} :catch_3e1
    .catchall {:try_start_52 .. :try_end_56} :catchall_410

    if-nez v9, :cond_5c

    const/4 v9, 0x1

    :try_start_59
    invoke-virtual {v1, v9}, Ljava/io/File;->setWritable(Z)Z
    :try_end_5c
    .catch Lorg/xml/sax/SAXException; {:try_start_59 .. :try_end_5c} :catch_4d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_59 .. :try_end_5c} :catch_48
    .catch Ljavax/xml/transform/TransformerException; {:try_start_59 .. :try_end_5c} :catch_43
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_3e
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_39
    .catchall {:try_start_59 .. :try_end_5c} :catchall_410

    :cond_5c
    :try_start_5c
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v9

    move-object v8, v9

    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Element;->normalize()V

    const-string/jumbo v9, "policy"

    invoke-interface {v8, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v9, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Element;

    move-object v11, v12

    const-string/jumbo v12, "signer"

    invoke-interface {v11, v12}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    sget-boolean v15, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_82
    .catch Lorg/xml/sax/SAXException; {:try_start_5c .. :try_end_82} :catch_405
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5c .. :try_end_82} :catch_3fc
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5c .. :try_end_82} :catch_3f3
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_82} :catch_3ea
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_82} :catch_3e1
    .catchall {:try_start_5c .. :try_end_82} :catchall_410

    if-eqz v15, :cond_eb

    :try_start_84
    sget-object v15, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "ResourceManager"

    move-object/from16 v16, v0

    const-string v0, "Looking for matching entry in /data/security/whitelist/mac_permissions.xml"

    invoke-virtual {v15, v10, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "ResourceManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_98
    .catch Lorg/xml/sax/SAXException; {:try_start_84 .. :try_end_98} :catch_e4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_84 .. :try_end_98} :catch_dd
    .catch Ljavax/xml/transform/TransformerException; {:try_start_84 .. :try_end_98} :catch_d6
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_98} :catch_cf
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_98} :catch_c8
    .catchall {:try_start_84 .. :try_end_98} :catchall_410

    move/from16 v17, v5

    :try_start_9a
    const-string/jumbo v5, "the signer length is "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v10, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ae
    .catch Lorg/xml/sax/SAXException; {:try_start_9a .. :try_end_ae} :catch_c3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_9a .. :try_end_ae} :catch_be
    .catch Ljavax/xml/transform/TransformerException; {:try_start_9a .. :try_end_ae} :catch_b9
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_ae} :catch_b4
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_ae} :catch_af
    .catchall {:try_start_9a .. :try_end_ae} :catchall_410

    goto :goto_ef

    :catch_af
    move-exception v0

    move-object/from16 v18, v6

    goto/16 :goto_3ce

    :catch_b4
    move-exception v0

    move-object/from16 v18, v6

    goto/16 :goto_3d2

    :catch_b9
    move-exception v0

    move-object/from16 v18, v6

    goto/16 :goto_3d6

    :catch_be
    move-exception v0

    move-object/from16 v18, v6

    goto/16 :goto_3da

    :catch_c3
    move-exception v0

    move-object/from16 v18, v6

    goto/16 :goto_3de

    :catch_c8
    move-exception v0

    move/from16 v17, v5

    move-object/from16 v18, v6

    goto/16 :goto_3e6

    :catch_cf
    move-exception v0

    move/from16 v17, v5

    move-object/from16 v18, v6

    goto/16 :goto_3ef

    :catch_d6
    move-exception v0

    move/from16 v17, v5

    move-object/from16 v18, v6

    goto/16 :goto_3f8

    :catch_dd
    move-exception v0

    move/from16 v17, v5

    move-object/from16 v18, v6

    goto/16 :goto_401

    :catch_e4
    move-exception v0

    move/from16 v17, v5

    move-object/from16 v18, v6

    goto/16 :goto_40a

    :cond_eb
    move-object/from16 v16, v0

    move/from16 v17, v5

    :goto_ef
    const/4 v0, 0x0

    :goto_f0
    :try_start_f0
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v0, v5, :cond_2b4

    invoke-interface {v12, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    move-object v13, v5

    invoke-static {v13, v2}, Lcom/android/server/ResourceManager;->checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    move-object v14, v5

    if-eqz v14, :cond_2ac

    sget v5, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-ne v3, v5, :cond_1d1

    const-string/jumbo v5, "sdcarduserid"

    invoke-interface {v14, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1af

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_13d

    sget-object v5, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "ResourceManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_11e
    .catch Lorg/xml/sax/SAXException; {:try_start_f0 .. :try_end_11e} :catch_397
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_f0 .. :try_end_11e} :catch_390
    .catch Ljavax/xml/transform/TransformerException; {:try_start_f0 .. :try_end_11e} :catch_389
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_11e} :catch_382
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_11e} :catch_37b
    .catchall {:try_start_f0 .. :try_end_11e} :catchall_410

    move-object/from16 v18, v6

    :try_start_120
    const-string/jumbo v6, "removeWhitelistEntryFromMac, "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v14}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " match found for "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v10, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13f

    :cond_13d
    move-object/from16 v18, v6

    :goto_13f
    const-string/jumbo v5, "sdcarduserid"

    invoke-interface {v14, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_184

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_15e

    sget-object v5, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "ResourceManager"

    const-string/jumbo v10, "removeWhitelistEntryFrommac - User ID Match"

    invoke-virtual {v5, v6, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15e
    const-string/jumbo v5, "sdcarduserid"

    invoke-interface {v14, v5}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V
    :try_end_164
    .catch Lorg/xml/sax/SAXException; {:try_start_120 .. :try_end_164} :catch_3dd
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_120 .. :try_end_164} :catch_3d9
    .catch Ljavax/xml/transform/TransformerException; {:try_start_120 .. :try_end_164} :catch_3d5
    .catch Ljava/io/IOException; {:try_start_120 .. :try_end_164} :catch_3d1
    .catch Ljava/lang/Exception; {:try_start_120 .. :try_end_164} :catch_3cd
    .catchall {:try_start_120 .. :try_end_164} :catchall_410

    const/4 v5, 0x1

    :try_start_165
    const-string v6, "apmWL"

    invoke-interface {v14, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_17b

    const-string v6, "apmWL"

    invoke-interface {v14, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v10, ""

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b8

    :cond_17b
    invoke-interface {v12, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6, v14}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_182
    .catch Lorg/xml/sax/SAXException; {:try_start_165 .. :try_end_182} :catch_2d7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_165 .. :try_end_182} :catch_2d4
    .catch Ljavax/xml/transform/TransformerException; {:try_start_165 .. :try_end_182} :catch_2d1
    .catch Ljava/io/IOException; {:try_start_165 .. :try_end_182} :catch_2ce
    .catch Ljava/lang/Exception; {:try_start_165 .. :try_end_182} :catch_2cb
    .catchall {:try_start_165 .. :try_end_182} :catchall_410

    goto/16 :goto_2b8

    :cond_184
    :try_start_184
    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_192

    sget-object v5, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "ResourceManager"

    const-string/jumbo v10, "it is for Generic Trusted with partial space match"

    invoke-virtual {v5, v6, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_192
    const-string/jumbo v5, "sdcarduserid"

    invoke-interface {v14, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ResourceManager;->removeUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1ae

    const-string/jumbo v6, "sdcarduserid"

    invoke-interface {v14, v6, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    nop

    :goto_1ab
    move v5, v6

    goto/16 :goto_2b8

    :cond_1ae
    goto :goto_1d3

    :cond_1af
    move-object/from16 v18, v6

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_1ce

    sget-object v5, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "ResourceManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "removeWhitelistEntryFromMac, no match found for"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v6, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1ce
    .catch Lorg/xml/sax/SAXException; {:try_start_184 .. :try_end_1ce} :catch_3dd
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_184 .. :try_end_1ce} :catch_3d9
    .catch Ljavax/xml/transform/TransformerException; {:try_start_184 .. :try_end_1ce} :catch_3d5
    .catch Ljava/io/IOException; {:try_start_184 .. :try_end_1ce} :catch_3d1
    .catch Ljava/lang/Exception; {:try_start_184 .. :try_end_1ce} :catch_3cd
    .catchall {:try_start_184 .. :try_end_1ce} :catchall_410

    :cond_1ce
    monitor-exit v4

    const/4 v4, 0x0

    return v4

    :cond_1d1
    move-object/from16 v18, v6

    :goto_1d3
    :try_start_1d3
    sget-object v5, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "ResourceManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "removeWhitelistEntryFromMac, resourceType = "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v6, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    sget v5, Lcom/android/server/ResourceManager;->APM_TYPE:I

    if-ne v3, v5, :cond_2ae

    const-string v5, "apmWL"

    invoke-interface {v14, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_28c

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_221

    sget-object v5, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "ResourceManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "removeWhitelistEntryFromMac, "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v14}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " match found for "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v6, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_221
    const-string v5, "apmWL"

    invoke-interface {v14, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_265

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_23f

    sget-object v5, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "ResourceManager"

    const-string/jumbo v10, "removeWhitelistEntryFrommac - User ID Match"

    invoke-virtual {v5, v6, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23f
    const-string v5, "apmWL"

    invoke-interface {v14, v5}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V
    :try_end_244
    .catch Lorg/xml/sax/SAXException; {:try_start_1d3 .. :try_end_244} :catch_3dd
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1d3 .. :try_end_244} :catch_3d9
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1d3 .. :try_end_244} :catch_3d5
    .catch Ljava/io/IOException; {:try_start_1d3 .. :try_end_244} :catch_3d1
    .catch Ljava/lang/Exception; {:try_start_1d3 .. :try_end_244} :catch_3cd
    .catchall {:try_start_1d3 .. :try_end_244} :catchall_410

    const/4 v5, 0x1

    :try_start_245
    const-string/jumbo v6, "sdcarduserid"

    invoke-interface {v14, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_25d

    const-string/jumbo v6, "sdcarduserid"

    invoke-interface {v14, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v10, ""

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b8

    :cond_25d
    invoke-interface {v12, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6, v14}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_264
    .catch Lorg/xml/sax/SAXException; {:try_start_245 .. :try_end_264} :catch_2d7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_245 .. :try_end_264} :catch_2d4
    .catch Ljavax/xml/transform/TransformerException; {:try_start_245 .. :try_end_264} :catch_2d1
    .catch Ljava/io/IOException; {:try_start_245 .. :try_end_264} :catch_2ce
    .catch Ljava/lang/Exception; {:try_start_245 .. :try_end_264} :catch_2cb
    .catchall {:try_start_245 .. :try_end_264} :catchall_410

    goto :goto_2b8

    :cond_265
    :try_start_265
    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_273

    sget-object v5, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "ResourceManager"

    const-string/jumbo v10, "it is for Trusted with partial space match"

    invoke-virtual {v5, v6, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_273
    const-string v5, "apmWL"

    invoke-interface {v14, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ResourceManager;->removeUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_28b

    const-string v6, "apmWL"

    invoke-interface {v14, v6, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    goto/16 :goto_1ab

    :cond_28b
    goto :goto_2ae

    :cond_28c
    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_2a9

    sget-object v5, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "ResourceManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "removeWhitelistEntryFromMac, no match found for"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v6, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a9
    .catch Lorg/xml/sax/SAXException; {:try_start_265 .. :try_end_2a9} :catch_3dd
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_265 .. :try_end_2a9} :catch_3d9
    .catch Ljavax/xml/transform/TransformerException; {:try_start_265 .. :try_end_2a9} :catch_3d5
    .catch Ljava/io/IOException; {:try_start_265 .. :try_end_2a9} :catch_3d1
    .catch Ljava/lang/Exception; {:try_start_265 .. :try_end_2a9} :catch_3cd
    .catchall {:try_start_265 .. :try_end_2a9} :catchall_410

    :cond_2a9
    monitor-exit v4

    const/4 v4, 0x0

    return v4

    :cond_2ac
    move-object/from16 v18, v6

    :cond_2ae
    :goto_2ae
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v6, v18

    goto/16 :goto_f0

    :cond_2b4
    move-object/from16 v18, v6

    move/from16 v5, v17

    :cond_2b8
    :goto_2b8
    if-eqz v5, :cond_334

    :try_start_2ba
    const-string/jumbo v0, "service"

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6
    :try_end_2c5
    .catch Lorg/xml/sax/SAXException; {:try_start_2ba .. :try_end_2c5} :catch_32f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2ba .. :try_end_2c5} :catch_32a
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2ba .. :try_end_2c5} :catch_325
    .catch Ljava/io/IOException; {:try_start_2ba .. :try_end_2c5} :catch_320
    .catch Ljava/lang/Exception; {:try_start_2ba .. :try_end_2c5} :catch_31b
    .catchall {:try_start_2ba .. :try_end_2c5} :catchall_410

    if-nez v6, :cond_2da

    :try_start_2c7
    invoke-interface {v11, v13}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_2ca
    .catch Lorg/xml/sax/SAXException; {:try_start_2c7 .. :try_end_2ca} :catch_2d7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2c7 .. :try_end_2ca} :catch_2d4
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2c7 .. :try_end_2ca} :catch_2d1
    .catch Ljava/io/IOException; {:try_start_2c7 .. :try_end_2ca} :catch_2ce
    .catch Ljava/lang/Exception; {:try_start_2c7 .. :try_end_2ca} :catch_2cb
    .catchall {:try_start_2c7 .. :try_end_2ca} :catchall_410

    goto :goto_2da

    :catch_2cb
    move-exception v0

    goto/16 :goto_3e6

    :catch_2ce
    move-exception v0

    goto/16 :goto_3ef

    :catch_2d1
    move-exception v0

    goto/16 :goto_3f8

    :catch_2d4
    move-exception v0

    goto/16 :goto_401

    :catch_2d7
    move-exception v0

    goto/16 :goto_40a

    :cond_2da
    :goto_2da
    :try_start_2da
    sget-boolean v6, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z
    :try_end_2dc
    .catch Lorg/xml/sax/SAXException; {:try_start_2da .. :try_end_2dc} :catch_32f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2da .. :try_end_2dc} :catch_32a
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2da .. :try_end_2dc} :catch_325
    .catch Ljava/io/IOException; {:try_start_2da .. :try_end_2dc} :catch_320
    .catch Ljava/lang/Exception; {:try_start_2da .. :try_end_2dc} :catch_31b
    .catchall {:try_start_2da .. :try_end_2dc} :catchall_410

    if-eqz v6, :cond_2e8

    :try_start_2de
    sget-object v6, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "ResourceManager"

    const-string/jumbo v15, "removeWhitelistEntryFromMac, Match found..deleted elem...writing to file"

    invoke-virtual {v6, v10, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e8
    .catch Lorg/xml/sax/SAXException; {:try_start_2de .. :try_end_2e8} :catch_2d7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2de .. :try_end_2e8} :catch_2d4
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2de .. :try_end_2e8} :catch_2d1
    .catch Ljava/io/IOException; {:try_start_2de .. :try_end_2e8} :catch_2ce
    .catch Ljava/lang/Exception; {:try_start_2de .. :try_end_2e8} :catch_2cb
    .catchall {:try_start_2de .. :try_end_2e8} :catchall_410

    :cond_2e8
    :try_start_2e8
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Element;->normalize()V

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v10

    new-instance v15, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v15, v8}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    move-object/from16 v19, v0

    new-instance v0, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    invoke-virtual {v10, v15, v0}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    sget-boolean v17, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v17, :cond_318

    move-object/from16 v20, v0

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "ResourceManager"
    :try_end_310
    .catch Lorg/xml/sax/SAXException; {:try_start_2e8 .. :try_end_310} :catch_32f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2e8 .. :try_end_310} :catch_32a
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2e8 .. :try_end_310} :catch_325
    .catch Ljava/io/IOException; {:try_start_2e8 .. :try_end_310} :catch_320
    .catch Ljava/lang/Exception; {:try_start_2e8 .. :try_end_310} :catch_31b
    .catchall {:try_start_2e8 .. :try_end_310} :catchall_410

    move/from16 v21, v5

    :try_start_312
    const-string v5, " removeWhitelistEntryFromMac, entry removed from mac_permissions.xml"

    invoke-virtual {v0, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31a

    :cond_318
    move/from16 v21, v5

    :goto_31a
    goto :goto_353

    :catch_31b
    move-exception v0

    move/from16 v21, v5

    goto/16 :goto_3e6

    :catch_320
    move-exception v0

    move/from16 v21, v5

    goto/16 :goto_3ef

    :catch_325
    move-exception v0

    move/from16 v21, v5

    goto/16 :goto_3f8

    :catch_32a
    move-exception v0

    move/from16 v21, v5

    goto/16 :goto_401

    :catch_32f
    move-exception v0

    move/from16 v21, v5

    goto/16 :goto_40a

    :cond_334
    move/from16 v21, v5

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "ResourceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " removeWhitelistEntryFromMac, No match for packageName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ". Please check again"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :goto_353
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_35d

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/io/File;->setWritable(Z)Z
    :try_end_35d
    .catch Lorg/xml/sax/SAXException; {:try_start_312 .. :try_end_35d} :catch_376
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_312 .. :try_end_35d} :catch_371
    .catch Ljavax/xml/transform/TransformerException; {:try_start_312 .. :try_end_35d} :catch_36c
    .catch Ljava/io/IOException; {:try_start_312 .. :try_end_35d} :catch_367
    .catch Ljava/lang/Exception; {:try_start_312 .. :try_end_35d} :catch_362
    .catchall {:try_start_312 .. :try_end_35d} :catchall_410

    :cond_35d
    nop

    move/from16 v5, v21

    goto/16 :goto_40e

    :catch_362
    move-exception v0

    move/from16 v5, v21

    goto/16 :goto_3e6

    :catch_367
    move-exception v0

    move/from16 v5, v21

    goto/16 :goto_3ef

    :catch_36c
    move-exception v0

    move/from16 v5, v21

    goto/16 :goto_3f8

    :catch_371
    move-exception v0

    move/from16 v5, v21

    goto/16 :goto_401

    :catch_376
    move-exception v0

    move/from16 v5, v21

    goto/16 :goto_40a

    :catch_37b
    move-exception v0

    move-object/from16 v18, v6

    move/from16 v5, v17

    goto/16 :goto_3e6

    :catch_382
    move-exception v0

    move-object/from16 v18, v6

    move/from16 v5, v17

    goto/16 :goto_3ef

    :catch_389
    move-exception v0

    move-object/from16 v18, v6

    move/from16 v5, v17

    goto/16 :goto_3f8

    :catch_390
    move-exception v0

    move-object/from16 v18, v6

    move/from16 v5, v17

    goto/16 :goto_401

    :catch_397
    move-exception v0

    move-object/from16 v18, v6

    move/from16 v5, v17

    goto/16 :goto_40a

    :cond_39e
    move-object/from16 v16, v0

    move/from16 v17, v5

    move-object/from16 v18, v6

    :try_start_3a4
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_3ca

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "ResourceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeWhitelistEntryFromMac, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " does not exist, creating file"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3ca
    .catch Lorg/xml/sax/SAXException; {:try_start_3a4 .. :try_end_3ca} :catch_3dd
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3a4 .. :try_end_3ca} :catch_3d9
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3a4 .. :try_end_3ca} :catch_3d5
    .catch Ljava/io/IOException; {:try_start_3a4 .. :try_end_3ca} :catch_3d1
    .catch Ljava/lang/Exception; {:try_start_3a4 .. :try_end_3ca} :catch_3cd
    .catchall {:try_start_3a4 .. :try_end_3ca} :catchall_410

    :cond_3ca
    monitor-exit v4

    const/4 v0, 0x0

    return v0

    :catch_3cd
    move-exception v0

    :goto_3ce
    move/from16 v5, v17

    goto :goto_3e6

    :catch_3d1
    move-exception v0

    :goto_3d2
    move/from16 v5, v17

    goto :goto_3ef

    :catch_3d5
    move-exception v0

    :goto_3d6
    move/from16 v5, v17

    goto :goto_3f8

    :catch_3d9
    move-exception v0

    :goto_3da
    move/from16 v5, v17

    goto :goto_401

    :catch_3dd
    move-exception v0

    :goto_3de
    move/from16 v5, v17

    goto :goto_40a

    :catch_3e1
    move-exception v0

    move/from16 v17, v5

    move-object/from16 v18, v6

    :goto_3e6
    :try_start_3e6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_40e

    :catch_3ea
    move-exception v0

    move/from16 v17, v5

    move-object/from16 v18, v6

    :goto_3ef
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_40d

    :catch_3f3
    move-exception v0

    move/from16 v17, v5

    move-object/from16 v18, v6

    :goto_3f8
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_40d

    :catch_3fc
    move-exception v0

    move/from16 v17, v5

    move-object/from16 v18, v6

    :goto_401
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_40d

    :catch_405
    move-exception v0

    move/from16 v17, v5

    move-object/from16 v18, v6

    :goto_40a
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_40d
    .catchall {:try_start_3e6 .. :try_end_40d} :catchall_410

    :goto_40d
    nop

    :goto_40e
    monitor-exit v4

    return v5

    :catchall_410
    move-exception v0

    monitor-exit v4

    throw v0
.end method


# virtual methods
.method public addAppToBlacklist(ILjava/lang/String;[Ljava/lang/String;I)I
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/ResourceManager;->addAppToBlacklistInternal(ILjava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public addAppToWhitelist(ILjava/lang/String;[Ljava/lang/String;I)I
    .registers 23

    move/from16 v7, p1

    move-object/from16 v8, p3

    move/from16 v9, p4

    const/4 v1, 0x0

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_15

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "ResourceManager"

    const-string/jumbo v3, "enter addAppToWhitelist"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    const/4 v10, -0x1

    :try_start_16
    sget v0, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq v9, v0, :cond_1f

    sget v0, Lcom/android/server/ResourceManager;->APM_TYPE:I

    if-eq v9, v0, :cond_1f

    return v10

    :cond_1f
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/android/server/ResourceManager;->WHITELIST_SEANDROID_FOLDER:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_56

    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_4c

    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "ResourceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " does not exist. Creating dir"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v2}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v0, v2, v2}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_56} :catch_1ab

    :cond_56
    nop

    invoke-static/range {p2 .. p2}, Lcom/android/server/ResourceManager;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_67

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "ResourceManager"

    const-string v3, " addAppToWhitelist failed, no packageName found"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    :cond_67
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_74

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "ResourceManager"

    const-string v3, "addAppToWhitelist"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_74
    const/4 v0, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v11, v7}, Lcom/android/server/ResourceManager;->getSignatureFromPackage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v12

    if-nez v8, :cond_91

    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_8e

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "ResourceManager"

    const-string v5, " Input Certificate is null"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8e
    const/16 v3, -0xe

    return v3

    :cond_91
    const/4 v13, 0x0

    if-nez v12, :cond_a9

    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_a1

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "ResourceManager"

    const-string v5, "addAppToWhitelist, signature is null, package not installed yet"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a1
    aget-object v2, v8, v13

    const/4 v1, 0x1

    :cond_a4
    move/from16 v16, v0

    move v15, v1

    move-object v14, v2

    goto :goto_e7

    :cond_a9
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Ljava/lang/String;

    aget-object v3, v8, v13

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d5

    const/4 v0, 0x1

    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_d5

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "ResourceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addAppToWhitelist, certMatch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d5
    if-nez v0, :cond_a4

    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_e4

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "ResourceManager"

    const-string v5, "addAppToWhitelist, input certificate does not match the certificate extracted from package"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e4
    const/16 v3, -0xd

    return v3

    :goto_e7
    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_f4

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "ResourceManager"

    const-string v2, "addAppToWhitelist - open whitelist/mac_permissions file"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f4
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/ResourceManager;->WHITELIST_MAC_PERM:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    :try_start_fc
    invoke-static {v11, v8}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    if-eqz v1, :cond_171

    sget-object v1, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "ResourceManager"

    const-string v3, "addAppToWhitelist, Got Application Info, Seinfo is not null"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "default"

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_115} :catch_198

    if-eqz v1, :cond_123

    :try_start_117
    const-string/jumbo v1, "untrusted"

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_11c} :catch_11d

    goto :goto_123

    :catch_11d
    move-exception v0

    move-object/from16 v2, p0

    move-object v13, v6

    goto/16 :goto_19c

    :cond_123
    :goto_123
    :try_start_123
    sget v1, Lcom/android/server/ResourceManager;->APM_TYPE:I
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_123 .. :try_end_125} :catch_198

    if-ne v9, v1, :cond_12b

    :try_start_127
    const-string v1, "apm"

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_12b} :catch_11d

    :cond_12b
    move-object v1, v6

    move-object v2, v14

    move-object v3, v11

    move v4, v7

    move-object v5, v0

    move-object v13, v6

    move v6, v9

    :try_start_132
    invoke-static/range {v1 .. v6}, Lcom/android/server/ResourceManager;->addWhitelistEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;I)I

    move-result v1

    if-eqz v1, :cond_142

    sget-object v1, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "ResourceManager"

    const-string v3, "addWhitelistEntryToMac failed"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_141} :catch_16d

    return v10

    :cond_142
    move-object/from16 v2, p0

    :try_start_144
    invoke-direct {v2, v11, v7, v14, v15}, Lcom/android/server/ResourceManager;->loadContainerSetting(Ljava/lang/String;ILjava/lang/String;Z)I

    move-result v1

    if-ne v1, v10, :cond_14e

    invoke-static {v13, v11, v7, v9}, Lcom/android/server/ResourceManager;->removeWhitelistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z

    return v10

    :cond_14e
    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_15c

    sget-object v1, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "ResourceManager"

    const-string/jumbo v4, "load container setting is done"

    invoke-virtual {v1, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15c
    .catch Ljava/lang/Exception; {:try_start_144 .. :try_end_15c} :catch_196

    :cond_15c
    nop

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_16b

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "ResourceManager"

    const-string/jumbo v3, "leave addAppToWhitelist"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16b
    const/4 v0, 0x0

    return v0

    :catch_16d
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_19c

    :cond_171
    move-object/from16 v2, p0

    move-object v13, v6

    :try_start_174
    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_195

    sget-object v1, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "ResourceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addAppToWhitelist, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " seInfo is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_195
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_195} :catch_196

    :cond_195
    return v10

    :catch_196
    move-exception v0

    goto :goto_19c

    :catch_198
    move-exception v0

    move-object/from16 v2, p0

    move-object v13, v6

    :goto_19c
    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_1aa

    sget-object v1, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "ResourceManager"

    const-string/jumbo v4, "leave addAppToWhitelist: Exception: Returning Policy Failed"

    invoke-virtual {v1, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1aa
    return v10

    :catch_1ab
    move-exception v0

    move-object/from16 v2, p0

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "ResourceManager"

    const-string v5, "Issue with whitelistDir directory"

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v10
.end method

.method public clearWhitelist(II)I
    .registers 10

    sget v0, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    const/4 v1, -0x1

    if-eq p2, v0, :cond_a

    sget v0, Lcom/android/server/ResourceManager;->APM_TYPE:I

    if-eq p2, v0, :cond_a

    return v1

    :cond_a
    move v0, v1

    :try_start_b
    invoke-static {p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->getWhitelist(II)Ljava/util/HashSet;

    move-result-object v2

    if-eqz v2, :cond_2f

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, p1, v5, p2}, Lcom/android/server/ResourceManager;->removeAppFromWhitelist(ILjava/lang/String;I)I

    move-result v6
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2a} :catch_30

    move v0, v6

    if-eqz v0, :cond_2e

    return v1

    :cond_2e
    goto :goto_1a

    :cond_2f
    goto :goto_3a

    :catch_30
    move-exception v1

    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "ResourceManager"

    const-string v4, "clearWhitelist exception"

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3a
    const/4 v1, 0x0

    return v1
.end method

.method public getPackagesFromWhitelist(II)[Ljava/lang/String;
    .registers 5

    sget v0, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p2, v0, :cond_a

    sget v0, Lcom/android/server/ResourceManager;->APM_TYPE:I

    if-eq p2, v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    invoke-static {p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->getWhitelist(II)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ResourceManager;->hashset_to_str_array(Ljava/util/HashSet;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isWhitelistApp(ILjava/lang/String;I)I
    .registers 7

    const/4 v0, -0x1

    :try_start_1
    sget v1, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p3, v1, :cond_a

    sget v1, Lcom/android/server/ResourceManager;->APM_TYPE:I

    if-eq p3, v1, :cond_a

    return v0

    :cond_a
    invoke-static {p1, p3}, Lcom/android/server/pm/SELinuxMMAC;->getWhitelist(II)Ljava/util/HashSet;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_1a

    if-eqz v2, :cond_18

    const/4 v0, 0x0

    return v0

    :cond_18
    nop

    return v0

    :catch_1a
    move-exception v1

    return v0
.end method

.method public removeAppFromBlacklist(ILjava/lang/String;I)I
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ResourceManager;->removeAppFromBlacklistInternal(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public removeAppFromWhitelist(ILjava/lang/String;I)I
    .registers 14

    const/4 v0, 0x0

    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_f

    sget-object v1, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "ResourceManager"

    const-string/jumbo v3, "enter removeAppFromWhitelist"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    sget v1, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    const/4 v2, -0x1

    if-eq p3, v1, :cond_19

    sget v1, Lcom/android/server/ResourceManager;->APM_TYPE:I

    if-eq p3, v1, :cond_19

    return v2

    :cond_19
    invoke-static {p2}, Lcom/android/server/ResourceManager;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_29

    sget-object v1, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "ResourceManager"

    const-string v4, " removeAppFromWhitelist failed, no packageName found"

    invoke-virtual {v1, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_29
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {p2, p1}, Lcom/android/server/ResourceManager;->getSignatureFromPackage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_40

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_3f

    sget-object v5, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "ResourceManager"

    const-string/jumbo v7, "removeAppFromWhitelist, signature is null, package not installed yet"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    const/4 v0, 0x1

    :cond_40
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/android/server/ResourceManager;->WHITELIST_MAC_PERM:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_47
    sget-boolean v6, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v6, :cond_63

    sget-object v6, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "ResourceManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " removeAppFromWhitelist tempPackage = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_63
    sget-boolean v6, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v6, :cond_71

    sget-object v6, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "ResourceManager"

    const-string/jumbo v8, "removeAppFromWhitelist ok!11"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_71
    invoke-static {v5, p2, p1, p3}, Lcom/android/server/ResourceManager;->removeWhitelistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_82

    sget-object v6, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "ResourceManager"

    const-string/jumbo v8, "removeEntryFromMac failed"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_82
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, p2, p1, v7, v0}, Lcom/android/server/ResourceManager;->loadContainerSetting(Ljava/lang/String;ILjava/lang/String;Z)I

    move-result v7
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_8d} :catch_a0

    if-ne v7, v2, :cond_90

    return v2

    :cond_90
    nop

    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_9f

    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "ResourceManager"

    const-string/jumbo v8, "leave removeAppFromWhitelist"

    invoke-virtual {v2, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9f
    return v6

    :catch_a0
    move-exception v6

    return v2
.end method
