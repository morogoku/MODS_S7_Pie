.class Lcom/android/server/desktopmode/DesktopModeLogger$LazyHolder;
.super Ljava/lang/Object;
.source "DesktopModeLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field static final SUPPORT_DMA:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeLogger$LazyHolder;->isDmaSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/desktopmode/DesktopModeLogger$LazyHolder;->SUPPORT_DMA:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isDmaSupported()Z
    .registers 7

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    const-string v2, "com.sec.android.diagmonagent"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    if-eqz v2, :cond_3a

    iget v3, v2, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    sget-boolean v4, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v4, :cond_32

    # getter for: Lcom/android/server/desktopmode/DesktopModeLogger;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeLogger;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "versionCode of DMA package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    const v4, 0x202fbf00

    if-lt v3, v4, :cond_39

    const/4 v1, 0x1

    nop

    :cond_39
    return v1

    :cond_3a
    return v1
.end method
