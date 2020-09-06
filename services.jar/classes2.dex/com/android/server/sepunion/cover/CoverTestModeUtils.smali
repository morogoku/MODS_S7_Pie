.class public Lcom/android/server/sepunion/cover/CoverTestModeUtils;
.super Ljava/lang/Object;
.source "CoverTestModeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;
    }
.end annotation


# static fields
.field public static final SHIPPED:Z

.field private static final TAG:Ljava/lang/String;

.field public static final TEST_MODE_NONE:I = -0x1

.field private static sCurrentTestMode:I


# instance fields
.field private final COVER_TEST_MODE:Ljava/lang/String;

.field private mCallback:Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;

.field private mContext:Landroid/content/Context;

.field private mObserver:Landroid/database/ContentObserver;

.field private mTestModeChangeHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoverManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->TAG:Ljava/lang/String;

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->SHIPPED:Z

    const/4 v0, -0x1

    sput v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestMode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "cover_test_mode"

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->COVER_TEST_MODE:Ljava/lang/String;

    new-instance v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/sepunion/cover/CoverTestModeUtils$1;-><init>(Lcom/android/server/sepunion/cover/CoverTestModeUtils;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mTestModeChangeHandler:Landroid/os/Handler;

    sget-boolean v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->SHIPPED:Z

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->TAG:Ljava/lang/String;

    const-string v1, "This version has been shipped!! Then cover test mode is not available"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1e
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mCallback:Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;

    new-instance v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils$2;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/server/sepunion/cover/CoverTestModeUtils$2;-><init>(Lcom/android/server/sepunion/cover/CoverTestModeUtils;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mObserver:Landroid/database/ContentObserver;

    const-string v0, "cover_test_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->getTestModeFromSetting()I

    move-result v1

    sput v1, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestMode:I

    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    sget v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestMode:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/sepunion/cover/CoverTestModeUtils;)Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;
    .registers 2

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mCallback:Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/sepunion/cover/CoverTestModeUtils;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->getTestModeFromSetting()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/sepunion/cover/CoverTestModeUtils;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->updateCoverTestMode(I)V

    return-void
.end method

.method static getSmartCoverStateForTestMode(ZZ)Lcom/samsung/android/cover/CoverState;
    .registers 15

    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->getTestCoverType()I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_2b

    const-string v0, "1com.samsung.android.sdk.cover.hellocover"

    const/4 v1, 0x5

    new-array v9, v1, [B

    fill-array-data v9, :array_2e

    const-string v1, "##########"

    sget-object v2, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->TAG:Ljava/lang/String;

    const-string v3, "getSmartCoverStateForTestMode : make smartCoverState for test"

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Lcom/samsung/android/cover/CoverState;

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string v8, "1com.samsung.android.sdk.cover.hellocover"

    const-string v10, "##########"

    const/4 v11, 0x0

    move-object v2, v12

    move v3, p0

    move v6, p1

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/cover/CoverState;-><init>(ZIIZILjava/lang/String;[BLjava/lang/String;Z)V

    return-object v12

    :cond_2b
    const/4 v0, 0x0

    return-object v0

    nop

    :array_2e
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
    .end array-data
.end method

.method static getTestCoverType()I
    .registers 1

    sget-boolean v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->SHIPPED:Z

    if-eqz v0, :cond_6

    const/4 v0, -0x1

    return v0

    :cond_6
    sget v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestMode:I

    return v0
.end method

.method private getTestModeFromSetting()I
    .registers 4

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cover_test_mode"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static isTestMode()Z
    .registers 2

    sget-boolean v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->SHIPPED:Z

    if-nez v0, :cond_b

    sget v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private updateCoverTestMode(I)V
    .registers 7

    sget-object v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCoverTestMode() sCurrentTestMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", currentTestMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestMode:I

    if-ne v0, p1, :cond_26

    return-void

    :cond_26
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mCallback:Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;

    if-nez v0, :cond_2b

    return-void

    :cond_2b
    sget v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestMode:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_38

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mCallback:Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;

    sget v1, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestMode:I

    invoke-interface {v0, v1, v2}, Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;->onCoverTestModeChanged(IZ)V

    :cond_38
    sput p1, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestMode:I

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mTestModeChangeHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    const-string v0, " Current CoverTestModeUtils state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  SHIPPED="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->SHIPPED:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  sCurrentTestMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public setTestModeToSetting(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cover_test_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
