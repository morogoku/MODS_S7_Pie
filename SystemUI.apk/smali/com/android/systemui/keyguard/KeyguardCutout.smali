.class public Lcom/android/systemui/keyguard/KeyguardCutout;
.super Ljava/lang/Object;
.source "KeyguardCutout.java"


# static fields
.field private static sInstance:Lcom/android/systemui/keyguard/KeyguardCutout;


# instance fields
.field private mDisplayCutout:Landroid/view/DisplayCutout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardCutout;

    invoke-direct {v0}, Lcom/android/systemui/keyguard/KeyguardCutout;-><init>()V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardCutout;->sInstance:Lcom/android/systemui/keyguard/KeyguardCutout;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/systemui/keyguard/KeyguardCutout;
    .locals 2

    const-class v0, Lcom/android/systemui/keyguard/KeyguardCutout;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/systemui/keyguard/KeyguardCutout;->sInstance:Lcom/android/systemui/keyguard/KeyguardCutout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getSidePadding()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardCutout;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardCutout;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardCutout;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    const-string v1, "KeyguardCutout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSidePadding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setDisplayCutout(Landroid/view/DisplayCutout;)V
    .locals 3

    const-string v0, "KeyguardCutout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDisplayCutout "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardCutout;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-static {}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->getInstance()Lcom/android/systemui/keyguard/KeyguardSideMargin;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardCutout;->getSidePadding()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->setCutoutPadding(I)V

    return-void
.end method
