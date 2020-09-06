.class Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SFinderLaunchPolicy"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SFinderLaunchPolicy"


# instance fields
.field private final FEATURE_NAME:Ljava/lang/String;

.field private final SFINDER_CLS:Ljava/lang/String;

.field private final SFINDER_PKG:Ljava/lang/String;

.field private mDeniedActivities:[Ljava/lang/String;

.field private mFeatureCached:Z

.field private mFeatureEnabled:Z

.field private mLaunchSFinder:Ljava/lang/Runnable;

.field private mSFinderIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .registers 6

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mFeatureEnabled:Z

    iput-boolean p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mFeatureCached:Z

    const-string v0, "com.sec.feature.findo"

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->FEATURE_NAME:Ljava/lang/String;

    const-string v0, "com.samsung.android.app.galaxyfinder"

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->SFINDER_PKG:Ljava/lang/String;

    const-string v0, "com.samsung.android.app.galaxyfinder.GalaxyFinderActivity"

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->SFINDER_CLS:Ljava/lang/String;

    const-string/jumbo v0, "{com.android.phone/com.android.phone.UsimDownload}"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mDeniedActivities:[Ljava/lang/String;

    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy$1;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mLaunchSFinder:Ljava/lang/Runnable;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mSFinderIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mSFinderIntent:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.app.galaxyfinder"

    const-string v3, "com.samsung.android.app.galaxyfinder.GalaxyFinderActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mSFinderIntent:Landroid/content/Intent;

    const-string v1, "callername"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/SamsungPhoneWindowManager;Lcom/android/server/policy/SamsungPhoneWindowManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;)Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mSFinderIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->launch()Z

    move-result v0

    return v0
.end method

.method private ensureFeatureCached()Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mFeatureCached:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.sec.feature.findo"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mFeatureEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mFeatureCached:Z

    :cond_1f
    return v1
.end method

.method private isDeniedActivity()Z
    .registers 10

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SystemKeyManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_c

    return v1

    :cond_c
    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mDeniedActivities:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_15
    if-ge v6, v4, :cond_23

    aget-object v7, v3, v6

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    return v1

    :cond_20
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    :cond_23
    return v5
.end method

.method private isLaunchable()Z
    .registers 11

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->ensureFeatureCached()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_87

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBootCompleted:Z

    if-nez v2, :cond_f

    goto/16 :goto_87

    :cond_f
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->isDeniedActivity()Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v4

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v5

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v6

    iget-boolean v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mFeatureEnabled:Z

    if-eqz v7, :cond_46

    if-nez v2, :cond_46

    if-eqz v3, :cond_46

    if-nez v4, :cond_46

    if-nez v5, :cond_46

    iget-object v7, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_44

    goto :goto_46

    :cond_44
    const/4 v1, 0x1

    return v1

    :cond_46
    :goto_46
    const-string v7, "SFinderLaunchPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isLaunchable mFeatureEnabled="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mFeatureEnabled:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " isDeniedActivity="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " isDeviceProvisioned="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " isKeyguardLocked="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " isFactoryMode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " isAutomaticTestMode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_87
    :goto_87
    const-string v2, "SFinderLaunchPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLaunchable: mBootCompleted="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-boolean v4, v4, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBootCompleted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " ensureFeatureCached="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private launch()Z
    .registers 3

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->ensureFeatureCached()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->isLaunchable()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mLaunchSFinder:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mLaunchSFinder:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_20
    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mFeatureEnabled:Z

    return v0
.end method
