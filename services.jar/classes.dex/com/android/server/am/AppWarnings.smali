.class Lcom/android/server/am/AppWarnings;
.super Ljava/lang/Object;
.source "AppWarnings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppWarnings$ConfigHandler;,
        Lcom/android/server/am/AppWarnings$UiHandler;
    }
.end annotation


# static fields
.field private static final CONFIG_FILE_NAME:Ljava/lang/String; = "packages-warnings.xml"

.field public static final FLAG_HIDE_COMPILE_SDK:I = 0x2

.field public static final FLAG_HIDE_DEPRECATED_SDK:I = 0x4

.field public static final FLAG_HIDE_DISPLAY_SIZE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AppWarnings"


# instance fields
.field private mAlwaysShowUnsupportedCompileSdkWarningActivities:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mAms:Lcom/android/server/am/ActivityManagerService;

.field private final mAmsHandler:Lcom/android/server/am/AppWarnings$ConfigHandler;

.field private final mConfigFile:Landroid/util/AtomicFile;

.field private mDeprecatedTargetSdkVersionDialog:Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;

.field private final mPackageFlags:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiContext:Landroid/content/Context;

.field private final mUiHandler:Lcom/android/server/am/AppWarnings$UiHandler;

.field private mUnsupportedCompileSdkDialog:Lcom/android/server/am/UnsupportedCompileSdkDialog;

.field private mUnsupportedDisplaySizeDialog:Lcom/android/server/am/UnsupportedDisplaySizeDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/io/File;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppWarnings;->mAlwaysShowUnsupportedCompileSdkWarningActivities:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/android/server/am/AppWarnings;->mAms:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/AppWarnings;->mUiContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/am/AppWarnings$ConfigHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/AppWarnings$ConfigHandler;-><init>(Lcom/android/server/am/AppWarnings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/AppWarnings;->mAmsHandler:Lcom/android/server/am/AppWarnings$ConfigHandler;

    new-instance v0, Lcom/android/server/am/AppWarnings$UiHandler;

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/AppWarnings$UiHandler;-><init>(Lcom/android/server/am/AppWarnings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/AppWarnings;->mUiHandler:Lcom/android/server/am/AppWarnings$UiHandler;

    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "packages-warnings.xml"

    invoke-direct {v1, p5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v2, "warnings-config"

    invoke-direct {v0, v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    invoke-direct {p0}, Lcom/android/server/am/AppWarnings;->readConfigFromFileAmsThread()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/AppWarnings;Lcom/android/server/am/ActivityRecord;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/AppWarnings;->showUnsupportedDisplaySizeDialogUiThread(Lcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/AppWarnings;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/AppWarnings;->hideUnsupportedDisplaySizeDialogUiThread()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/AppWarnings;Lcom/android/server/am/ActivityRecord;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/AppWarnings;->showUnsupportedCompileSdkDialogUiThread(Lcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/AppWarnings;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/AppWarnings;->hideDialogsForPackageUiThread(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/AppWarnings;Lcom/android/server/am/ActivityRecord;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/AppWarnings;->showDeprecatedTargetSdkDialogUiThread(Lcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/AppWarnings;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/AppWarnings;->writeConfigToFileAmsThread()V

    return-void
.end method

.method private getPackageFlags(Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private hideDialogsForPackageUiThread(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    invoke-virtual {v0}, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_13
    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    invoke-virtual {v0}, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/server/am/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    :cond_1a
    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mUnsupportedCompileSdkDialog:Lcom/android/server/am/UnsupportedCompileSdkDialog;

    if-eqz v0, :cond_33

    if-eqz p1, :cond_2c

    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mUnsupportedCompileSdkDialog:Lcom/android/server/am/UnsupportedCompileSdkDialog;

    invoke-virtual {v0}, Lcom/android/server/am/UnsupportedCompileSdkDialog;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    :cond_2c
    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mUnsupportedCompileSdkDialog:Lcom/android/server/am/UnsupportedCompileSdkDialog;

    invoke-virtual {v0}, Lcom/android/server/am/UnsupportedCompileSdkDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/server/am/AppWarnings;->mUnsupportedCompileSdkDialog:Lcom/android/server/am/UnsupportedCompileSdkDialog;

    :cond_33
    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mDeprecatedTargetSdkVersionDialog:Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;

    if-eqz v0, :cond_4c

    if-eqz p1, :cond_45

    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mDeprecatedTargetSdkVersionDialog:Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;

    invoke-virtual {v0}, Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    :cond_45
    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mDeprecatedTargetSdkVersionDialog:Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;

    invoke-virtual {v0}, Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/server/am/AppWarnings;->mDeprecatedTargetSdkVersionDialog:Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;

    :cond_4c
    return-void
.end method

.method private hideUnsupportedDisplaySizeDialogUiThread()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    invoke-virtual {v0}, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    :cond_c
    return-void
.end method

.method private readConfigFromFileAmsThread()V
    .registers 13

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/am/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    move-object v1, v2

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    :goto_1a
    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v3, v5, :cond_26

    if-eq v3, v4, :cond_26

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4
    :try_end_24
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_24} :catch_9c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_24} :catch_8c
    .catchall {:try_start_2 .. :try_end_24} :catchall_8a

    move v3, v4

    goto :goto_1a

    :cond_26
    if-ne v3, v4, :cond_30

    if-eqz v1, :cond_2f

    :try_start_2a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_2f

    :catch_2e
    move-exception v0

    :cond_2f
    :goto_2f
    return-void

    :cond_30
    :try_start_30
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "packages"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_82

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v3, v7

    :cond_42
    if-ne v3, v5, :cond_7b

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-ne v7, v5, :cond_7b

    const-string/jumbo v7, "package"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7b

    const-string/jumbo v7, "name"

    invoke-interface {v2, v0, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7b

    const-string/jumbo v8, "flags"

    invoke-interface {v2, v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_68
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_30 .. :try_end_68} :catch_9c
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_68} :catch_8c
    .catchall {:try_start_30 .. :try_end_68} :catchall_8a

    const/4 v9, 0x0

    if-eqz v8, :cond_72

    :try_start_6b
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10
    :try_end_6f
    .catch Ljava/lang/NumberFormatException; {:try_start_6b .. :try_end_6f} :catch_71
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6b .. :try_end_6f} :catch_9c
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6f} :catch_8c
    .catchall {:try_start_6b .. :try_end_6f} :catchall_8a

    move v9, v10

    goto :goto_72

    :catch_71
    move-exception v10

    :cond_72
    :goto_72
    :try_start_72
    iget-object v10, p0, Lcom/android/server/am/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7b
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7
    :try_end_7f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_72 .. :try_end_7f} :catch_9c
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_7f} :catch_8c
    .catchall {:try_start_72 .. :try_end_7f} :catchall_8a

    move v3, v7

    if-ne v3, v4, :cond_42

    :cond_82
    if-eqz v1, :cond_aa

    :try_start_84
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_88

    :goto_87
    goto :goto_aa

    :catch_88
    move-exception v0

    goto :goto_87

    :catchall_8a
    move-exception v0

    goto :goto_ab

    :catch_8c
    move-exception v0

    if-eqz v1, :cond_96

    :try_start_8f
    const-string v2, "AppWarnings"

    const-string v3, "Error reading package metadata"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_96
    .catchall {:try_start_8f .. :try_end_96} :catchall_8a

    :cond_96
    if-eqz v1, :cond_aa

    :try_start_98
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_88

    goto :goto_87

    :catch_9c
    move-exception v0

    :try_start_9d
    const-string v2, "AppWarnings"

    const-string v3, "Error reading package metadata"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a4
    .catchall {:try_start_9d .. :try_end_a4} :catchall_8a

    if-eqz v1, :cond_aa

    :try_start_a6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_88

    goto :goto_87

    :cond_aa
    :goto_aa
    return-void

    :goto_ab
    if-eqz v1, :cond_b2

    :try_start_ad
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_b1

    goto :goto_b2

    :catch_b1
    move-exception v2

    :cond_b2
    :goto_b2
    throw v0
.end method

.method private removePackageAndHideDialogs(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mUiHandler:Lcom/android/server/am/AppWarnings$UiHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppWarnings$UiHandler;->hideDialogsForPackage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/android/server/am/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/am/AppWarnings;->mAmsHandler:Lcom/android/server/am/AppWarnings$ConfigHandler;

    invoke-virtual {v1}, Lcom/android/server/am/AppWarnings$ConfigHandler;->scheduleWrite()V

    monitor-exit v0

    return-void

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private showDeprecatedTargetSdkDialogUiThread(Lcom/android/server/am/ActivityRecord;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mDeprecatedTargetSdkVersionDialog:Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mDeprecatedTargetSdkVersionDialog:Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;

    invoke-virtual {v0}, Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/AppWarnings;->mDeprecatedTargetSdkVersionDialog:Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;

    :cond_c
    if-eqz p1, :cond_29

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/AppWarnings;->hasPackageFlag(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mUiContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;-><init>(Lcom/android/server/am/AppWarnings;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    iput-object v1, p0, Lcom/android/server/am/AppWarnings;->mDeprecatedTargetSdkVersionDialog:Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;

    iget-object v1, p0, Lcom/android/server/am/AppWarnings;->mDeprecatedTargetSdkVersionDialog:Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;

    invoke-virtual {v1}, Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;->show()V

    :cond_29
    return-void
.end method

.method private showUnsupportedCompileSdkDialogUiThread(Lcom/android/server/am/ActivityRecord;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mUnsupportedCompileSdkDialog:Lcom/android/server/am/UnsupportedCompileSdkDialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mUnsupportedCompileSdkDialog:Lcom/android/server/am/UnsupportedCompileSdkDialog;

    invoke-virtual {v0}, Lcom/android/server/am/UnsupportedCompileSdkDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/AppWarnings;->mUnsupportedCompileSdkDialog:Lcom/android/server/am/UnsupportedCompileSdkDialog;

    :cond_c
    if-eqz p1, :cond_29

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/AppWarnings;->hasPackageFlag(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mUiContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/am/UnsupportedCompileSdkDialog;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/am/UnsupportedCompileSdkDialog;-><init>(Lcom/android/server/am/AppWarnings;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    iput-object v1, p0, Lcom/android/server/am/AppWarnings;->mUnsupportedCompileSdkDialog:Lcom/android/server/am/UnsupportedCompileSdkDialog;

    iget-object v1, p0, Lcom/android/server/am/AppWarnings;->mUnsupportedCompileSdkDialog:Lcom/android/server/am/UnsupportedCompileSdkDialog;

    invoke-virtual {v1}, Lcom/android/server/am/UnsupportedCompileSdkDialog;->show()V

    :cond_29
    return-void
.end method

.method private showUnsupportedDisplaySizeDialogUiThread(Lcom/android/server/am/ActivityRecord;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    invoke-virtual {v0}, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    :cond_c
    if-eqz p1, :cond_29

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/AppWarnings;->hasPackageFlag(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mUiContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/am/UnsupportedDisplaySizeDialog;-><init>(Lcom/android/server/am/AppWarnings;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    iput-object v1, p0, Lcom/android/server/am/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    iget-object v1, p0, Lcom/android/server/am/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/am/UnsupportedDisplaySizeDialog;

    invoke-virtual {v1}, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->show()V

    :cond_29
    return-void
.end method

.method private writeConfigToFileAmsThread()V
    .registers 11

    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/am/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_99

    const/4 v0, 0x0

    move-object v2, v0

    :try_start_d
    iget-object v3, p0, Lcom/android/server/am/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v4, "packages"

    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_5d

    goto :goto_3e

    :cond_5d
    const-string/jumbo v8, "package"

    invoke-interface {v3, v0, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "name"

    invoke-interface {v3, v0, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "flags"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v0, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "package"

    invoke-interface {v3, v0, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3e

    :cond_7a
    const-string/jumbo v4, "packages"

    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_88} :catch_89

    goto :goto_98

    :catch_89
    move-exception v0

    const-string v3, "AppWarnings"

    const-string v4, "Error writing package metadata"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v2, :cond_98

    iget-object v3, p0, Lcom/android/server/am/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_98
    :goto_98
    return-void

    :catchall_99
    move-exception v1

    :try_start_9a
    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    throw v1
.end method


# virtual methods
.method alwaysShowUnsupportedCompileSdkWarning(Landroid/content/ComponentName;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mAlwaysShowUnsupportedCompileSdkWarningActivities:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method hasPackageFlag(Ljava/lang/String;I)Z
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/am/AppWarnings;->getPackageFlags(Ljava/lang/String;)I

    move-result v0

    and-int/2addr v0, p2

    if-ne v0, p2, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public onDensityChanged()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mUiHandler:Lcom/android/server/am/AppWarnings$UiHandler;

    invoke-virtual {v0}, Lcom/android/server/am/AppWarnings$UiHandler;->hideUnsupportedDisplaySizeDialog()V

    return-void
.end method

.method public onPackageDataCleared(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/AppWarnings;->removePackageAndHideDialogs(Ljava/lang/String;)V

    return-void
.end method

.method public onPackageUninstalled(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/AppWarnings;->removePackageAndHideDialogs(Ljava/lang/String;)V

    return-void
.end method

.method public onResumeActivity(Lcom/android/server/am/ActivityRecord;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppWarnings;->showUnsupportedDisplaySizeDialogIfNeeded(Lcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method public onStartActivity(Lcom/android/server/am/ActivityRecord;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppWarnings;->showUnsupportedCompileSdkDialogIfNeeded(Lcom/android/server/am/ActivityRecord;)V

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppWarnings;->showUnsupportedDisplaySizeDialogIfNeeded(Lcom/android/server/am/ActivityRecord;)V

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppWarnings;->showDeprecatedTargetDialogIfNeeded(Lcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method setPackageFlag(Ljava/lang/String;IZ)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/am/AppWarnings;->getPackageFlags(Ljava/lang/String;)I

    move-result v1

    if-eqz p3, :cond_c

    or-int v2, v1, p2

    goto :goto_e

    :cond_c
    not-int v2, p2

    and-int/2addr v2, v1

    :goto_e
    if-eq v1, v2, :cond_26

    if-eqz v2, :cond_1c

    iget-object v3, p0, Lcom/android/server/am/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    :cond_1c
    iget-object v3, p0, Lcom/android/server/am/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_21
    iget-object v3, p0, Lcom/android/server/am/AppWarnings;->mAmsHandler:Lcom/android/server/am/AppWarnings$ConfigHandler;

    invoke-virtual {v3}, Lcom/android/server/am/AppWarnings$ConfigHandler;->scheduleWrite()V

    :cond_26
    monitor-exit v0

    return-void

    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public showDeprecatedTargetDialogIfNeeded(Lcom/android/server/am/ActivityRecord;)V
    .registers 4

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sget v1, Landroid/os/Build$VERSION;->MIN_SUPPORTED_TARGET_SDK_INT:I

    if-ge v0, v1, :cond_d

    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mUiHandler:Lcom/android/server/am/AppWarnings$UiHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppWarnings$UiHandler;->showDeprecatedTargetDialog(Lcom/android/server/am/ActivityRecord;)V

    :cond_d
    return-void
.end method

.method public showUnsupportedCompileSdkDialogIfNeeded(Lcom/android/server/am/ActivityRecord;)V
    .registers 8

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersion:I

    if-eqz v0, :cond_54

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    if-nez v0, :cond_d

    goto :goto_54

    :cond_d
    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mAlwaysShowUnsupportedCompileSdkWarningActivities:Ljava/util/HashSet;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    return-void

    :cond_18
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersion:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "REL"

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const-string v3, "REL"

    sget-object v4, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v2, :cond_38

    if-lt v0, v1, :cond_4e

    :cond_38
    if-eqz v3, :cond_3c

    if-lt v1, v0, :cond_4e

    :cond_3c
    if-eqz v2, :cond_53

    if-eqz v3, :cond_53

    if-ne v1, v0, :cond_53

    sget-object v4, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_53

    :cond_4e
    iget-object v4, p0, Lcom/android/server/am/AppWarnings;->mUiHandler:Lcom/android/server/am/AppWarnings$UiHandler;

    invoke-virtual {v4, p1}, Lcom/android/server/am/AppWarnings$UiHandler;->showUnsupportedCompileSdkDialog(Lcom/android/server/am/ActivityRecord;)V

    :cond_53
    return-void

    :cond_54
    :goto_54
    return-void
.end method

.method public showUnsupportedDisplaySizeDialogIfNeeded(Lcom/android/server/am/ActivityRecord;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/AppWarnings;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    if-eq v1, v2, :cond_19

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    iget v2, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-le v1, v2, :cond_19

    iget-object v1, p0, Lcom/android/server/am/AppWarnings;->mUiHandler:Lcom/android/server/am/AppWarnings$UiHandler;

    invoke-virtual {v1, p1}, Lcom/android/server/am/AppWarnings$UiHandler;->showUnsupportedDisplaySizeDialog(Lcom/android/server/am/ActivityRecord;)V

    :cond_19
    return-void
.end method
