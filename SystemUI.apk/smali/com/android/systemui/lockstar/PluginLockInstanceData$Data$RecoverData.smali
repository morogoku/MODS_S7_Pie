.class public Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;
.super Ljava/lang/Object;
.source "PluginLockInstanceData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecoverData"
.end annotation


# instance fields
.field private mClock:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clock"
    .end annotation
.end field

.field private mNotification:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "notification"
    .end annotation
.end field

.field private mNotificationOrigin:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "notification_origin"
    .end annotation
.end field

.field private mWallpaperDynamic:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wallpaper_dynamic"
    .end annotation
.end field

.field private mWallpaperSource:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wallpaper_source"
    .end annotation
.end field

.field private mWallpaperType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wallpaper_type"
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;


# direct methods
.method public constructor <init>(Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;->this$0:Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;->mClock:Ljava/lang/Integer;

    nop

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;->mNotification:Ljava/lang/Integer;

    nop

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;->mNotificationOrigin:Ljava/lang/Integer;

    nop

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;->mWallpaperDynamic:Ljava/lang/Integer;

    nop

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;->mWallpaperType:Ljava/lang/Integer;

    nop

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;->mWallpaperSource:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getClock()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;->mClock:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;->mClock:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNotification()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;->mNotification:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;->mNotification:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNotificationOrigin()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;->mNotificationOrigin:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;->mNotificationOrigin:Ljava/lang/Integer;

    return-object v0
.end method

.method public getWallpaperDynamic()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;->mWallpaperDynamic:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, -0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;->mWallpaperDynamic:Ljava/lang/Integer;

    return-object v0
.end method

.method public getWallpaperSource()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;->mWallpaperSource:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;->mWallpaperSource:Ljava/lang/Integer;

    return-object v0
.end method

.method public getWallpaperType()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;->mWallpaperType:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;->mWallpaperType:Ljava/lang/Integer;

    return-object v0
.end method

.method public setClock(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;->mClock:Ljava/lang/Integer;

    return-void
.end method

.method public setNotification(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;->mNotification:Ljava/lang/Integer;

    return-void
.end method

.method public setNotificationOrigin(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;->mNotificationOrigin:Ljava/lang/Integer;

    return-void
.end method

.method public setWallpaperDynamic(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;->mWallpaperDynamic:Ljava/lang/Integer;

    return-void
.end method

.method public setWallpaperSource(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;->mWallpaperSource:Ljava/lang/Integer;

    return-void
.end method

.method public setWallpaperType(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data$RecoverData;->mWallpaperType:Ljava/lang/Integer;

    return-void
.end method
