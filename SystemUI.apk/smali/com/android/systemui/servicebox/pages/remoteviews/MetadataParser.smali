.class public Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;
.super Ljava/lang/Object;
.source "MetadataParser.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field private static final CLASS_TYPE:Ljava/lang/reflect/Type;


# instance fields
.field private final mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mContext:Landroid/content/Context;

.field private final mExecutableInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/servicebox/pages/remoteviews/ExecutableInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsSystemUser:Z

.field private mJsonParser:Lcom/google/gson/Gson;

.field private mMetaDataHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser$1;

    invoke-direct {v0}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser$1;-><init>()V

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->CLASS_TYPE:Ljava/lang/reflect/Type;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mExecutableInfo:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mIsSystemUser:Z

    new-instance v0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser$2;-><init>(Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->updatePackage(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->removePackage(Ljava/lang/String;)V

    return-void
.end method

.method private addMetaDataInfo(Ljava/lang/String;Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MetaDataParser"

    const-string v1, "addMetaDataInfo() return : already added"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->isEnabledMenuShowingInSetting()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->isSystemUserOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mIsSystemUser:Z

    if-eqz v0, :cond_6

    :cond_1
    const/4 v0, 0x0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->isLegacy()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mContext:Landroid/content/Context;

    invoke-static {v1, p3}, Lcom/android/systemui/servicebox/pages/remoteviews/LegacyPackages;->getLegacySetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mContext:Landroid/content/Context;

    invoke-static {v3, p3}, Lcom/android/systemui/servicebox/pages/remoteviews/LegacyPackages;->disableLegacySetting(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p2}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->getDbKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->isDefaultOnMenuInSetting()Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    nop

    :cond_5
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-virtual {v3, p1, v1, v2}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->addSettingsObserver(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-virtual {v3, v1}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->isNotDefinedSettingValue(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->setSettingValuedEnabled(Ljava/lang/String;Z)Z

    :cond_6
    const-string v0, "MetaDataParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addMetaDataInfo() key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static getDbKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add_info_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    const-string v2, "_"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDbKeyForPageId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->getDbKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getJsonParser()Lcom/google/gson/Gson;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mJsonParser:Lcom/google/gson/Gson;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mJsonParser:Lcom/google/gson/Gson;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mJsonParser:Lcom/google/gson/Gson;

    return-object v0
.end method

.method private getMetaDataInfoList(Landroid/content/pm/ApplicationInfo;)Ljava/util/List;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v4, :cond_1

    return-object v3

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.samsung.systemui.facewidget.executable"

    const/4 v7, 0x0

    invoke-virtual {v4, v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_f

    iget-object v0, v1, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    move-object v11, v3

    :try_start_0
    invoke-virtual {v10, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v11, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    if-nez v11, :cond_2

    const-string v0, "MetaDataParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMetaDataInfoList - failed to get resource: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_2
    const-string v0, "com.samsung.systemui.permission.FACE_WIDGET"

    invoke-virtual {v10, v0, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v7

    :goto_1
    move v12, v0

    :try_start_1
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v11, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v0, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    move-object v13, v0

    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->getJsonParser()Lcom/google/gson/Gson;

    move-result-object v0

    sget-object v14, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->CLASS_TYPE:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v13, v14}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v14
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    const/4 v15, 0x2

    if-eqz v14, :cond_d

    if-eqz v12, :cond_5

    const/4 v3, 0x4

    if-gt v14, v3, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    move-object/from16 v28, v0

    move/from16 v30, v8

    goto/16 :goto_a

    :cond_5
    :goto_3
    if-nez v12, :cond_6

    if-le v14, v15, :cond_6

    goto :goto_2

    :cond_6
    :try_start_3
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v17
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v17, :cond_8

    :try_start_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v18, v17

    move-object/from16 v9, v18

    invoke-direct {v1, v9}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->isValidPageId(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_7

    const-string v3, "MetaDataParser"

    const-string v7, "getMetaDataInfoList wrong pageId[%s] / pkg[%s]"

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v9, v15, v16

    const/16 v16, 0x1

    aput-object v6, v15, v16

    invoke-static {v3, v7, v15}, Lcom/android/systemui/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    nop

    :try_start_5
    invoke-virtual {v13}, Ljava/io/Reader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    const/4 v3, 0x0

    return-object v3

    :catch_1
    move-exception v0

    move/from16 v30, v8

    goto/16 :goto_10

    :cond_7
    nop

    const/4 v7, 0x0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v0

    move/from16 v30, v8

    :goto_5
    const/4 v3, 0x0

    goto/16 :goto_e

    :catch_2
    move-exception v0

    move-object v3, v0

    move/from16 v30, v8

    goto/16 :goto_c

    :cond_8
    :try_start_6
    iget-object v3, v1, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mExecutableInfo:Ljava/util/Map;

    invoke-interface {v3, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/servicebox/pages/remoteviews/ExecutableInfo;

    iget-object v15, v9, Lcom/android/systemui/servicebox/pages/remoteviews/ExecutableInfo;->labelResName:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_9

    move-object/from16 v28, v0

    const/4 v0, 0x0

    goto :goto_7

    :cond_9
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v28, v0

    const-string v0, ":string/"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v9, Lcom/android/systemui/servicebox/pages/remoteviews/ExecutableInfo;->labelResName:Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v15, 0x0

    invoke-virtual {v11, v0, v15, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_7
    invoke-static {v6, v7}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->getPkgNameForPageId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v12, :cond_a

    new-instance v17, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;

    invoke-static {v6, v7}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->getDbKeyForPageId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    iget v1, v9, Lcom/android/systemui/servicebox/pages/remoteviews/ExecutableInfo;->menuInSetting:I

    iget-boolean v2, v9, Lcom/android/systemui/servicebox/pages/remoteviews/ExecutableInfo;->changeCurrentPage:Z

    move-object/from16 v29, v3

    iget-boolean v3, v9, Lcom/android/systemui/servicebox/pages/remoteviews/ExecutableInfo;->additionalInfo:Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move/from16 v30, v8

    :try_start_7
    iget-boolean v8, v9, Lcom/android/systemui/servicebox/pages/remoteviews/ExecutableInfo;->systemUserOnly:Z

    move-object/from16 v19, v17

    move-object/from16 v20, v15

    move-object/from16 v21, v7

    move/from16 v23, v0

    move/from16 v24, v1

    move/from16 v25, v2

    move/from16 v26, v3

    move/from16 v27, v8

    invoke-direct/range {v19 .. v27}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZZ)V

    move-object/from16 v1, v17

    goto :goto_8

    :cond_a
    move-object/from16 v29, v3

    move/from16 v30, v8

    new-instance v1, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;

    invoke-static {v6, v7}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->getDbKeyForPageId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    iget-boolean v2, v9, Lcom/android/systemui/servicebox/pages/remoteviews/ExecutableInfo;->systemUserOnly:Z

    move-object/from16 v19, v1

    move-object/from16 v20, v15

    move-object/from16 v21, v7

    move/from16 v23, v0

    move/from16 v24, v2

    invoke-direct/range {v19 .. v24}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    :goto_8
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "MetaDataParser"

    const-string v2, "getMetaDataInfoList %s %s %d"

    const/4 v3, 0x3

    new-array v8, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v15, v8, v3

    if-lez v0, :cond_b

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :cond_b
    const/4 v3, 0x0

    :goto_9
    const/16 v17, 0x1

    aput-object v3, v8, v17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v17, 0x2

    aput-object v3, v8, v17

    invoke-static {v1, v2, v8}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    nop

    move-object/from16 v0, v28

    move-object/from16 v3, v29

    move/from16 v8, v30

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v15, 0x2

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto/16 :goto_5

    :cond_c
    move/from16 v30, v8

    :try_start_8
    invoke-virtual {v13}, Ljava/io/Reader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_11

    :catchall_2
    move-exception v0

    move/from16 v30, v8

    move-object v1, v0

    const/4 v3, 0x0

    goto :goto_b

    :cond_d
    move-object/from16 v28, v0

    move/from16 v30, v8

    :goto_a
    :try_start_9
    const-string v0, "MetaDataParser"

    const-string v1, "getMetaDataInfoList - wrong page count: %d / %s / %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x0

    aput-object v3, v2, v7

    const/4 v3, 0x1

    aput-object v6, v2, v3

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v7, 0x2

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    nop

    :try_start_a
    invoke-virtual {v13}, Ljava/io/Reader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    const/4 v3, 0x0

    return-object v3

    :catchall_3
    move-exception v0

    const/4 v3, 0x0

    goto :goto_d

    :catch_3
    move-exception v0

    move-object v3, v0

    goto :goto_c

    :catchall_4
    move-exception v0

    move/from16 v30, v8

    move-object v1, v0

    :goto_b
    goto :goto_e

    :catch_4
    move-exception v0

    move/from16 v30, v8

    move-object v3, v0

    :goto_c
    :try_start_b
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catchall_5
    move-exception v0

    :goto_d
    move-object v1, v0

    :goto_e
    if-eqz v3, :cond_e

    :try_start_c
    invoke-virtual {v13}, Ljava/io/Reader;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_f

    :catch_5
    move-exception v0

    goto :goto_10

    :catch_6
    move-exception v0

    move-object v2, v0

    :try_start_d
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_f

    :cond_e
    invoke-virtual {v13}, Ljava/io/Reader;->close()V

    :goto_f
    throw v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    :catch_7
    move-exception v0

    move/from16 v30, v8

    :goto_10
    const-string v1, "MetaDataParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMetaDataInfoList - failed to load: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11
    goto :goto_12

    :cond_f
    move/from16 v30, v8

    const-string v0, "com.samsung.android.servicebox.remoteview.enable"

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_10

    new-instance v1, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;

    invoke-static {v6}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->getDbKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v6, v2, v0}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "MetaDataParser"

    const-string v2, "getMetaDataInfoList %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v6, v3, v7

    invoke-static {v1, v2, v3}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    :goto_12
    return-object v5
.end method

.method public static getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getPkgNameForPageId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isValidPageId(Ljava/lang/String;)Z
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x14

    if-gt v0, v3, :cond_0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "[0-9A-Za-z]{%d}"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    nop

    :goto_0
    return v1
.end method

.method public static synthetic lambda$loadAllMetaData$0(Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "MetaDataParser"

    const-string v2, "loadAllMetaData  no pkgMgr"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_3

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v3}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->getMetaDataInfoList(Landroid/content/pm/ApplicationInfo;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;

    invoke-virtual {v6}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->getPkgName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/systemui/servicebox/pages/remoteviews/LegacyPackages;->hasLegacyPackage(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    :goto_2
    invoke-direct {p0, v7, v6, v8}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->addMetaDataInfo(Ljava/lang/String;Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    goto :goto_0

    :cond_6
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->updateOrderDB(Z)V

    return-void

    :cond_7
    :goto_3
    const-string v2, "MetaDataParser"

    const-string v3, "loadAllMetaData packages is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private removeMetaDataInfo(Ljava/lang/String;)V
    .locals 3

    const-string v0, "MetaDataParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeMetaDataInfo() key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->removeSettingsObserver(Ljava/lang/String;)V

    return-void
.end method

.method private removePackage(Ljava/lang/String;)V
    .locals 6

    const-string v0, "MetaDataParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removePackage() key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->removeMetaDataInfo(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mExecutableInfo:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->getPkgNameForPageId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, v4}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->removeMetaDataInfo(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_1
    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mExecutableInfo:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->updateOrderDB()V

    :cond_4
    return-void
.end method

.method private updateMetaDataInfo(Ljava/lang/String;Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;)Z
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->isEnabledMenuShowingInSetting()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->isEnabledMenuShowingInSetting()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-virtual {v2, p1}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->removeSettingsObserver(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p2}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->getDbKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->isDefaultOnMenuInSetting()Z

    move-result v3

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->isEnabledMenuShowingInSetting()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p2}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->isEnabledMenuShowingInSetting()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->isSystemUserOnly()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mIsSystemUser:Z

    if-eqz v4, :cond_5

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-virtual {v4, p1, v2, v3}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->addSettingsObserver(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-virtual {v4, v2}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->isNotDefinedSettingValue(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-virtual {v4, v2, v3}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->setSettingValuedEnabled(Ljava/lang/String;Z)Z

    :cond_4
    const/4 v1, 0x1

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "MetaDataParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateMetaDataInfo() key = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", info = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_6
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method private updateOrderDB()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->updateOrderDB(Z)V

    return-void
.end method

.method private updateOrderDB(Z)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "MetaDataParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateOrderDB called "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->getServiceBoxPageOrderList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    const/4 v6, 0x0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string/jumbo v9, "servicebox_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {v8}, Lcom/android/systemui/servicebox/pages/remoteviews/LegacyPackages;->hasLegacyPackage(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, v0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mExecutableInfo:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    if-eqz v9, :cond_1

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v8, v11}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->getPkgNameForPageId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    invoke-virtual {v13, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;

    if-eqz v13, :cond_0

    invoke-virtual {v13}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->isEnabledMenuShowingInSetting()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v2, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "MetaDataParser"

    const-string/jumbo v14, "updateOrderDB legacy pkg=%s, new=%s, idx=%d"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v8, v15, v4

    aput-object v12, v15, v5

    const/16 v16, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v10, v14, v15}, Lcom/android/systemui/util/LogUtil;->dm(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v2, v6, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    iget-object v6, v0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, v0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;

    invoke-virtual {v8}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->isEnabledMenuShowingInSetting()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    if-eqz v9, :cond_4

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    goto :goto_3

    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    :goto_4
    if-ltz v6, :cond_7

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string/jumbo v8, "servicebox_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-interface {v3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-interface {v2, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget-object v10, v0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;

    if-eqz v10, :cond_8

    invoke-virtual {v10}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->isSystemUserOnly()Z

    move-result v11

    if-eqz v11, :cond_8

    iget-boolean v11, v0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mIsSystemUser:Z

    if-nez v11, :cond_8

    const-string v11, "MetaDataParser"

    const-string/jumbo v12, "updateOrderDB [%s] is disabled in current user"

    new-array v13, v5, [Ljava/lang/Object;

    aput-object v9, v13, v4

    invoke-static {v11, v12, v13}, Lcom/android/systemui/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_8
    if-eqz v10, :cond_a

    invoke-virtual {v10}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->isLegacy()Z

    move-result v11

    if-nez v11, :cond_a

    invoke-virtual {v10}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->getTitleResId()I

    move-result v11

    if-lez v11, :cond_a

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_9

    const-string v11, ";"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ":"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->getTitleResId()I

    move-result v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_b

    const-string v11, ";"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_d

    iget-object v4, v0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->saveCurrentFaceWidgetResourceIds(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_e

    iget-object v4, v0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->saveCurrentFaceWidgetsOrder(Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method private updatePackage(Ljava/lang/String;Z)V
    .locals 9

    const-string v0, "MetaDataParser"

    const-string/jumbo v1, "updatePackage() %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    if-nez v1, :cond_0

    const-string v0, "MetaDataParser"

    const-string v2, "no package found"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->getMetaDataInfoList(Landroid/content/pm/ApplicationInfo;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;

    invoke-virtual {v5}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->getPkgName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;

    if-nez v7, :cond_2

    invoke-direct {p0, v6, v5, v0}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->addMetaDataInfo(Ljava/lang/String;Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;Ljava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    invoke-direct {p0, v6, v5}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->updateMetaDataInfo(Ljava/lang/String;Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v3, 0x1

    :cond_3
    :goto_2
    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->updateOrderDB()V

    :cond_5
    return-void

    :cond_6
    :goto_3
    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->removePackage(Ljava/lang/String;)V

    return-void
.end method

.method private updateSettingsObserver()V
    .locals 6

    const-string v0, "MetaDataParser"

    const-string/jumbo v1, "updateSettingsObserver()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-virtual {v3, v1}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->removeSettingsObserver(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->isEnabledMenuShowingInSetting()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->isSystemUserOnly()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mIsSystemUser:Z

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->getDbKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->isDefaultOnMenuInSetting()Z

    move-result v5

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->addSettingsObserver(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    const-string v0, "  MetaDataParser"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mExecutableInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mExecutableInfo:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mExecutableInfo:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/servicebox/pages/remoteviews/ExecutableInfo;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "      "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    - isSystemUser: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mIsSystemUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    - MetaDataInfo {"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "      "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v0, "      }"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getMetadata()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getPageId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->isLegacy()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->getPageId()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public isEnabledChangeCurrentPage(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->isChangeCurrentPage()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isPermissionGranted(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->getPageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->isPermissionGrantedByPageId(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPermissionGrantedByPageId(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->isPermissionGranted()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isShowingInServiceBoxOnly(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->isEnabledMenuShowingInSetting()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSystemUserOnly(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->isSystemUserOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public loadAllMetaData(Ljava/lang/Runnable;)V
    .locals 5

    const-string v0, "MetaDataParser"

    const-string v1, "loadAllMetaData()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    const-string v0, "MetaDataParser"

    const-string v1, "loadAllMetaData() return : The data is already configured."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->setIsSystemUser(Z)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/systemui/util/SimpleAsyncTask;->getNewInstance()Lcom/android/systemui/util/SimpleAsyncTask;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Runnable;

    new-instance v4, Lcom/android/systemui/servicebox/pages/remoteviews/-$$Lambda$MetadataParser$8wpyX4CsYBMxzTeb5_jf_OzdnCs;

    invoke-direct {v4, p0}, Lcom/android/systemui/servicebox/pages/remoteviews/-$$Lambda$MetadataParser$8wpyX4CsYBMxzTeb5_jf_OzdnCs;-><init>(Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;)V

    aput-object v4, v3, v1

    aput-object p1, v3, v2

    invoke-virtual {v0, v3}, Lcom/android/systemui/util/SimpleAsyncTask;->submit([Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public setIsSystemUser(Z)V
    .locals 3

    const-string v0, "MetaDataParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIsSystemUser "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mIsSystemUser:Z

    return-void
.end method

.method public updateFaceWidgetInSettingMenu()V
    .locals 7

    const-string v0, "MetaDataParser"

    const-string/jumbo v1, "updateFaceWidgetInSettingMenu()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->getPagesOrderForCurrentUser()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->isEnabledMenuShowingInSetting()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->isSystemUserOnly()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mIsSystemUser:Z

    if-nez v6, :cond_3

    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->isEnabledMenuShowingInSetting()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    goto :goto_0

    :cond_5
    :goto_2
    goto :goto_3

    :cond_6
    const/4 v1, 0x1

    :goto_3
    const-string v2, "MetaDataParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "face_widget_order : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->updateSettingsObserver()V

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->updateOrderDB()V

    :cond_7
    return-void
.end method

.method public useAdditionInfo(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->mMetaDataHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataInfo;->useAdditionalInfo()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
