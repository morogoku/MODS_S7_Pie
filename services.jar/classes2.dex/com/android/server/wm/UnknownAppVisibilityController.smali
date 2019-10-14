.class Lcom/android/server/wm/UnknownAppVisibilityController;
.super Ljava/lang/Object;
.source "UnknownAppVisibilityController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final UNKNOWN_STATE_WAITING_RELAYOUT:I = 0x2

.field private static final UNKNOWN_STATE_WAITING_RESUME:I = 0x1

.field private static final UNKNOWN_STATE_WAITING_VISIBILITY_UPDATE:I = 0x3


# instance fields
.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mUnknownApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/AppWindowToken;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method public static synthetic lambda$FYhcjOhYWVp6HX5hr3GGaPg67Gc(Lcom/android/server/wm/UnknownAppVisibilityController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/UnknownAppVisibilityController;->notifyVisibilitiesUpdated()V

    return-void
.end method

.method private notifyVisibilitiesUpdated()V
    .registers 5

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_UNKNOWN_APP_VISIBILITY:Z

    if-eqz v0, :cond_b

    const-string v0, "WindowManager"

    const-string v1, "Visibility updated DONE"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_14
    if-ltz v1, :cond_2e

    iget-object v2, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2b

    iget-object v2, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    const/4 v0, 0x1

    :cond_2b
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    :cond_2e
    if-eqz v0, :cond_37

    iget-object v1, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    :cond_37
    return-void
.end method


# virtual methods
.method allResolved()Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    return v2

    :cond_16
    iget-object v0, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_1d
    if-ltz v0, :cond_33

    iget-object v3, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v4, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    return v2

    :cond_30
    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    :cond_33
    return v1
.end method

.method appRemovedOrHidden(Lcom/android/server/wm/AppWindowToken;)V
    .registers 5

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_UNKNOWN_APP_VISIBILITY:Z

    if-eqz v0, :cond_1a

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App removed or hidden appWindow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method clear()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Unknown visibilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_25
    if-ltz v0, :cond_55

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  app="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_25

    :cond_55
    return-void
.end method

.method getDebugMessage()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_d
    if-ltz v1, :cond_35

    const-string v2, "app="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_32

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_32
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    :cond_35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method notifyAppResumedFinished(Lcom/android/server/wm/AppWindowToken;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3b

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_UNKNOWN_APP_VISIBILITY:Z

    if-eqz v0, :cond_31

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App resume finished appWindow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    iget-object v0, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3b
    return-void
.end method

.method notifyLaunched(Lcom/android/server/wm/AppWindowToken;)V
    .registers 5

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_UNKNOWN_APP_VISIBILITY:Z

    if-eqz v0, :cond_1a

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App launched appWindow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method notifyRelayouted(Lcom/android/server/wm/AppWindowToken;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_UNKNOWN_APP_VISIBILITY:Z

    if-eqz v0, :cond_23

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App relayouted appWindow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    iget-object v0, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_46

    iget-object v1, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$UnknownAppVisibilityController$FYhcjOhYWVp6HX5hr3GGaPg67Gc;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$UnknownAppVisibilityController$FYhcjOhYWVp6HX5hr3GGaPg67Gc;-><init>(Lcom/android/server/wm/UnknownAppVisibilityController;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->notifyKeyguardFlagsChanged(Ljava/lang/Runnable;)V

    :cond_46
    return-void
.end method
