.class public Lcom/android/server/HarmonyEASService;
.super Landroid/content/IHarmonyEAS$Stub;
.source "HarmonyEASService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/HarmonyEASService$PackageHandler;,
        Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    }
.end annotation


# static fields
.field public static final HARMONY_EAS_SERVICE:Ljava/lang/String; = "harmony_eas_service"

.field private static final HARMONY_THIRDPARTY_APP_FILES:Ljava/lang/String; = "harmony_third_party_apps.xml"

.field private static final HARMONY_THIRDPARTY_APP_FILE_PATH:Ljava/lang/String; = "/data/system/harmony_third_party_apps.xml"

.field private static final SYSTEM_SECURE_DIR:Ljava/lang/String; = "/data/system/"

.field private static final TAG:Ljava/lang/String; = "HarmonyEASService"


# instance fields
.field final mContext:Landroid/content/Context;

.field private mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mPackageHandler:Landroid/os/Handler;

.field mUserMgr:Landroid/os/UserManager;

.field private final mUserToAppMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    invoke-direct {p0}, Landroid/content/IHarmonyEAS$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/HarmonyEASService;->mUserToAppMap:Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/HarmonyEASService$1;

    invoke-direct {v0, p0}, Lcom/android/server/HarmonyEASService$1;-><init>(Lcom/android/server/HarmonyEASService;)V

    iput-object v0, p0, Lcom/android/server/HarmonyEASService;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/HarmonyEASService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/HarmonyEASService$PackageHandler;

    invoke-direct {v0, p0}, Lcom/android/server/HarmonyEASService$PackageHandler;-><init>(Lcom/android/server/HarmonyEASService;)V

    iput-object v0, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/HarmonyEASService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/HarmonyEASService;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/HarmonyEASService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/HarmonyEASService;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/HarmonyEASService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/HarmonyEASService;->saveHash(I)V

    return-void
.end method

.method private declared-synchronized addHashForPackage(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p3}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mHashValueToPkgNameMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized addPackageAsUnknown(Ljava/lang/String;I)V
    .registers 10

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p2}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mUnknownPackageSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    iget-object v3, v1, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 v0, 0x1

    :cond_17
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_29

    iget-object v3, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p2, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_29
    .catchall {:try_start_2 .. :try_end_29} :catchall_2b

    :cond_29
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/HarmonyEASService;->mUserToAppMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    if-nez v0, :cond_17

    new-instance v1, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;-><init>(Lcom/android/server/HarmonyEASService$1;)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/HarmonyEASService;->mUserToAppMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_17
    iget-object v1, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    if-eqz v1, :cond_26

    iget-object v1, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_26

    invoke-direct {p0, v0, p1}, Lcom/android/server/HarmonyEASService;->loadHashVaues(Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;I)V

    :cond_26
    monitor-exit p0

    return-object v0

    :catchall_28
    move-exception v0

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method private loadHashVaues(Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;I)V
    .registers 19

    move-object/from16 v1, p1

    const/4 v2, 0x0

    invoke-static/range {p2 .. p2}, Lcom/android/server/HarmonyEASService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    iget-object v5, v1, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mHashValueToPkgNameMap:Ljava/util/HashMap;

    iget-object v0, v1, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mUnknownPackageSet:Ljava/util/HashSet;

    move-object v6, v0

    :try_start_e
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v0

    nop

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v7, v0

    const/4 v0, 0x0

    invoke-interface {v7, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_22
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v9, v8

    const/4 v10, 0x1

    if-eq v8, v10, :cond_2e

    const/4 v8, 0x2

    if-eq v9, v8, :cond_2e

    goto :goto_22

    :cond_2e
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string/jumbo v13, "third-party-apps"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_97

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    move v9, v13

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    :goto_4c
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    move v9, v14

    if-eq v14, v10, :cond_91

    const/4 v14, 0x3

    if-ne v9, v14, :cond_5c

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v13, :cond_91

    :cond_5c
    if-eq v9, v14, :cond_8f

    const/4 v10, 0x4

    if-ne v9, v10, :cond_62

    goto :goto_8f

    :cond_62
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    const-string/jumbo v10, "hash"

    invoke-interface {v7, v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v11, v10

    const-string/jumbo v10, "isUnsigned"

    invoke-interface {v7, v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    move v12, v10

    monitor-enter p0
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_7c} :catch_b3
    .catchall {:try_start_e .. :try_end_7c} :catchall_af

    :try_start_7c
    invoke-virtual {v4, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v12, :cond_87

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_87
    monitor-exit p0
    :try_end_88
    .catchall {:try_start_7c .. :try_end_88} :catchall_8c

    :try_start_88
    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8b} :catch_b3
    .catchall {:try_start_88 .. :try_end_8b} :catchall_af

    goto :goto_8f

    :catchall_8c
    move-exception v0

    :try_start_8d
    monitor-exit p0
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    :try_start_8e
    throw v0
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_8f} :catch_b3
    .catchall {:try_start_8e .. :try_end_8f} :catchall_af

    :cond_8f
    :goto_8f
    const/4 v10, 0x1

    goto :goto_4c

    :cond_91
    :try_start_91
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_95

    :cond_94
    :goto_94
    goto :goto_bd

    :catch_95
    move-exception v0

    goto :goto_bd

    :cond_97
    :try_start_97
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "harmony eas settings do not start with proper tag: found "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_af} :catch_b3
    .catchall {:try_start_97 .. :try_end_af} :catchall_af

    :catchall_af
    move-exception v0

    move-object v7, v2

    move-object v2, v0

    goto :goto_be

    :catch_b3
    move-exception v0

    :try_start_b4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b7
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_af

    if-eqz v2, :cond_94

    :try_start_b9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_bc} :catch_95

    goto :goto_94

    :goto_bd
    return-void

    :goto_be
    nop

    if-eqz v7, :cond_c7

    :try_start_c1
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c4} :catch_c5

    goto :goto_c7

    :catch_c5
    move-exception v0

    nop

    :cond_c7
    :goto_c7
    throw v2
.end method

.method private static makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .registers 7

    if-nez p0, :cond_5

    const-string v0, "/data/system/harmony_third_party_apps.xml"

    goto :goto_15

    :cond_5
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "harmony_third_party_apps.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_15
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1
.end method

.method private saveHash(I)V
    .registers 16

    invoke-direct {p0, p1}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mUnknownPackageSet:Ljava/util/HashSet;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/android/server/HarmonyEASService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v5

    :try_start_e
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v3, v6

    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v4, v6

    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string/jumbo v7, "utf-8"

    invoke-interface {v6, v4, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v6, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v9, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v6, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v7, "third-party-apps"

    invoke-interface {v6, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v11, 0x0

    nop

    :goto_4a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object v9, v12

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object v11, v12

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    move v8, v12

    invoke-interface {v6, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v12, "hash"

    invoke-interface {v6, v10, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v12, "isUnsigned"

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6, v10, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_4a

    :cond_7a
    const-string/jumbo v12, "third-party-apps"

    invoke-interface {v6, v10, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-static {v3}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v5}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_8c} :catch_9a
    .catchall {:try_start_e .. :try_end_8c} :catchall_98

    :try_start_8c
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_92

    :catch_90
    move-exception v6

    goto :goto_96

    :goto_92
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_95} :catch_90

    goto :goto_97

    :goto_96
    goto :goto_ac

    :cond_97
    :goto_97
    goto :goto_ac

    :catchall_98
    move-exception v6

    goto :goto_ad

    :catch_9a
    move-exception v6

    :try_start_9b
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v5}, Lcom/android/internal/util/JournaledFile;->rollback()V
    :try_end_a1
    .catchall {:try_start_9b .. :try_end_a1} :catchall_98

    if-eqz v4, :cond_a6

    :try_start_a3
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    :cond_a6
    if-eqz v3, :cond_97

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_ab} :catch_90

    goto :goto_97

    :goto_ac
    return-void

    :goto_ad
    nop

    if-eqz v4, :cond_b6

    :try_start_b0
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_b6

    :catch_b4
    move-exception v7

    goto :goto_bb

    :cond_b6
    :goto_b6
    if-eqz v3, :cond_bb

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_bb} :catch_b4

    :cond_bb
    :goto_bb
    throw v6
.end method


# virtual methods
.method clearDataForUser(I)V
    .registers 5

    monitor-enter p0

    if-nez p1, :cond_7

    :try_start_3
    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    goto :goto_25

    :cond_7
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "harmony_third_party_apps.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v1, p0, Lcom/android/server/HarmonyEASService;->mUserToAppMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/server/HarmonyEASService;->mUserToAppMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_23
    monitor-exit p0

    return-void

    :goto_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_5

    throw v0
.end method

.method public getHashValueFromPackageName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    invoke-direct {p0, p2}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v1, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_11

    :cond_f
    const-string v1, ""

    :goto_11
    if-eqz v1, :cond_15

    move-object v2, v1

    goto :goto_17

    :cond_15
    const-string v2, ""

    :goto_17
    return-object v2
.end method

.method public getPackageNameFromHash(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    invoke-direct {p0, p2}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v1, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mHashValueToPkgNameMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_11

    :cond_f
    const-string v1, ""

    :goto_11
    if-eqz v1, :cond_15

    move-object v2, v1

    goto :goto_17

    :cond_15
    const-string v2, ""

    :goto_17
    return-object v2
.end method

.method public getThirdPartyApps(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public getUnknownSourcesPackages(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mUnknownPackageSet:Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method handlePackagesChanged(I)V
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/HarmonyEASService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    monitor-enter p0

    :try_start_9
    invoke-direct {p0, p1}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_4a

    const/4 v1, 0x0

    :try_start_25
    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_25 .. :try_end_29} :catch_2e
    .catchall {:try_start_25 .. :try_end_29} :catchall_4a

    if-nez v5, :cond_2d

    const/4 v1, 0x1

    const/4 v0, 0x1

    :cond_2d
    goto :goto_31

    :catch_2e
    move-exception v5

    const/4 v1, 0x1

    const/4 v0, 0x1

    :goto_31
    if-eqz v1, :cond_39

    :try_start_33
    invoke-virtual {p0, v4, p1}, Lcom/android/server/HarmonyEASService;->removeInstallationPackageExtras(Ljava/lang/String;I)V

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    :cond_39
    goto :goto_17

    :cond_3a
    if-eqz v0, :cond_48

    iget-object v4, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7, p1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_48
    monitor-exit p0

    return-void

    :catchall_4a
    move-exception v3

    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_33 .. :try_end_4c} :catchall_4a

    throw v3
.end method

.method declared-synchronized handleUserChanged(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/HarmonyEASService;->mUserToAppMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/HarmonyEASService;->mUserToAppMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    :cond_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isPackageUnknownSource(Ljava/lang/String;I)Z
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p2}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mUnknownPackageSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public removeInstallationPackage(Ljava/lang/String;I)V
    .registers 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_36

    const/4 v0, -0x1

    if-ne p2, v0, :cond_33

    iget-object v0, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1, v3}, Lcom/android/server/HarmonyEASService;->removeInstallationPackageExtras(Ljava/lang/String;I)V

    goto :goto_20

    :cond_32
    goto :goto_36

    :cond_33
    invoke-virtual {p0, p1, p2}, Lcom/android/server/HarmonyEASService;->removeInstallationPackageExtras(Ljava/lang/String;I)V

    :cond_36
    :goto_36
    return-void
.end method

.method public removeInstallationPackageExtras(Ljava/lang/String;I)V
    .registers 11

    invoke-direct {p0, p2}, Lcom/android/server/HarmonyEASService;->getAppDetailsOfUserId(I)Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mThirdPartyPackageMap:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mHashValueToPkgNameMap:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/android/server/HarmonyEASService$ThirdPartyAppDetails;->mUnknownPackageSet:Ljava/util/HashSet;

    monitor-enter p0

    :try_start_b
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_30

    iget-object v4, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/HarmonyEASService;->mPackageHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p2, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_30
    move-exception v4

    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v4
.end method

.method public setInstallationPackageHashValue(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_59

    const/4 v0, 0x1

    if-eq v0, p3, :cond_10

    return-void

    :cond_10
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v2, p4, :cond_24

    iget-object v2, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    if-eqz v2, :cond_24

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/util/ArrayList;

    :cond_24
    if-eqz v0, :cond_56

    const-string v2, "HarmonyEASService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating for all "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_44
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/HarmonyEASService;->addHashForPackage(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_44

    :cond_56
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/HarmonyEASService;->addHashForPackage(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_59
    return-void
.end method

.method public setInstallationPackageUnknown(Ljava/lang/String;II)V
    .registers 9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_59

    const/4 v0, 0x1

    if-eq v0, p2, :cond_10

    return-void

    :cond_10
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v2, p3, :cond_24

    iget-object v2, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    if-eqz v2, :cond_24

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/server/HarmonyEASService;->mUserMgr:Landroid/os/UserManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/util/ArrayList;

    :cond_24
    if-eqz v0, :cond_56

    const-string v2, "HarmonyEASService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating for all "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_44
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p1, v4}, Lcom/android/server/HarmonyEASService;->addPackageAsUnknown(Ljava/lang/String;I)V

    goto :goto_44

    :cond_56
    invoke-direct {p0, p1, p3}, Lcom/android/server/HarmonyEASService;->addPackageAsUnknown(Ljava/lang/String;I)V

    :cond_59
    return-void
.end method
