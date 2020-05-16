.class public Lcom/android/systemui/util/SettingsHelper;
.super Ljava/lang/Object;
.source "SettingsHelper.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/util/SettingsHelper$ItemMap;,
        Lcom/android/systemui/util/SettingsHelper$Item;,
        Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui/util/SettingsHelper;


# instance fields
.field private mCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSettingsObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;-><init>(Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/util/SettingsHelper$1;)V

    iput-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v0, Lcom/android/systemui/util/SettingsHelper$1;

    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/util/SettingsHelper$1;-><init>(Lcom/android/systemui/util/SettingsHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    sput-object p0, Lcom/android/systemui/util/SettingsHelper;->sInstance:Lcom/android/systemui/util/SettingsHelper;

    invoke-direct {p0}, Lcom/android/systemui/util/SettingsHelper;->setUpSettingsItem()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/util/-$$Lambda$SettingsHelper$apbmXCb2kdRq692aqXS3vBFo2ys;

    invoke-direct {v1, p0}, Lcom/android/systemui/util/-$$Lambda$SettingsHelper$apbmXCb2kdRq692aqXS3vBFo2ys;-><init>(Lcom/android/systemui/util/SettingsHelper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/util/SettingsHelper;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/util/SettingsHelper;)Lcom/android/systemui/util/SettingsHelper$ItemMap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/util/SettingsHelper;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/SettingsHelper;->broadcastChange(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/util/SettingsHelper;)Landroid/database/ContentObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method private broadcastChange(Landroid/net/Uri;)V
    .locals 3

    const-string v0, "SettingsHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** broadcastChange for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    move-object v0, v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;->onChanged(Landroid/net/Uri;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getInstance()Lcom/android/systemui/util/SettingsHelper;
    .locals 1

    sget-object v0, Lcom/android/systemui/util/SettingsHelper;->sInstance:Lcom/android/systemui/util/SettingsHelper;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/util/SettingsHelper;->sInstance:Lcom/android/systemui/util/SettingsHelper;

    goto :goto_0

    :cond_0
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    :goto_0
    return-object v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/util/SettingsHelper;->readSettingsDB()V

    invoke-direct {p0}, Lcom/android/systemui/util/SettingsHelper;->registerSettingsObserver()V

    return-void
.end method

.method public static synthetic lambda$onUserSwitched$1(Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/util/SettingsHelper;->registerSettingsObserver()V

    return-void
.end method

.method private readSettingsDB()V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    iget-object v3, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v3}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->updateMapAll(Landroid/content/ContentResolver;)V

    const-string v2, "SettingsHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readSettingsDB() COMPLETED elapsed= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private registerSettingsObserver()V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->registerAllObserver()V

    const-string v2, "SettingsHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerSettingsObserver() COMPLETED elapsed= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setUpSettingsItem()V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "white_lockscreen_statusbar"

    const-string v5, "Int"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "white_lockscreen_wallpaper"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "lockscreen_wallpaper"

    const-string v5, "Int"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "lockscreen_wallpaper_transparent"

    const-string v5, "Int"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "opne_theme_effect_lockscreen_wallpaper"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "dualclock_menu_settings"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "emergency_mode"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "easy_mode_switch"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "ultra_powersaving_mode"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "access_control_enabled"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "sidesync_source_connect"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "intelligent_sleep_mode"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "powersaving_switch"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "psm_switch"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "automatic_unlock"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "any_screen_running"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "set_shortcuts_mode"

    const-string v5, "Int"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "lockscreen_wallpaper_path"

    const-string v5, "String"

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "theme_font_clock"

    const-string v5, "String"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "theme_font_numeric"

    const-string v5, "String"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "theme_font_system"

    const-string v5, "String"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "time_12_24"

    const-string v5, "String"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "homecity_timezone"

    const-string v5, "String"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "current_sec_theme_package_open_theme"

    const-string v5, "String"

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "current_sec_appicon_theme_package"

    const-string v5, "String"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "current_sec_active_themepackage"

    const-string v5, "String"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "Global"

    const-string v4, "airplane_mode_on"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "Global"

    const-string v4, "white_cover_wallpaper"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "Global"

    const-string v4, "low_power"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "Secure"

    const-string v4, "lock_screen_show_notifications"

    const-string v5, "Int"

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "Secure"

    const-string v4, "speak_password"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "Secure"

    const-string v4, "high_text_contrast_enabled"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "Secure"

    const-string v4, "auto_swipe_main_user"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "Secure"

    const-string v4, "shared_device_status"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "phone1_on"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "phone2_on"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "lock_application_shortcut"

    const-string v5, "String"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "Global"

    const-string v4, "tap_to_icon"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "lock_fmm_Message"

    const-string v5, "String"

    const/4 v6, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "lock_fmm_phone"

    const-string v5, "String"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "show_button_background"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "simple_status_bar"

    const-string v5, "Int"

    invoke-static {}, Lcom/android/systemui/Rune;->getSimpleStatsuBarDefaultValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "Secure"

    const-string v4, "sem_perfomance_mode"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "additional_information_val"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "add_info_music_control"

    const-string v5, "Int"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "add_info_today_schedule"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "add_info_alarm"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v11, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "Global"

    const-string v4, "lockscreen_aod_servicebox_page"

    const-string v5, "String"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, v11

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZ)V

    invoke-virtual {v0, v11}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "servicebox_page_gravity"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "aod_servicebox_page_gravity"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "data_usage_reminder"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "action_memo_on_off_screen"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "screen_off_memo"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "Secure"

    const-string v4, "lock_function_val"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "aod_mode"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "rapid_key_input"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "white_lockscreen_navigationbar"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "face_widget_order"

    const-string v5, "String"

    const/4 v6, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "Global"

    const-string v4, "lockscreen_aod_staying_music_page"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "reserve_battery_on"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "aod_lock_music_facewidget_blacklist"

    const-string v5, "String"

    const/4 v6, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "aod_lock_music_media_key_code"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "Secure"

    const-string v4, "n_digits_pin_enabled"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "Global"

    const-string v4, "navigationbar_hide_bar_enabled"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "system_locales"

    const-string v5, "String"

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "display_battery_percentage"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "voicecall_type"

    const-string v5, "Int"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "Secure"

    const-string v4, "show_keyboard_button"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "lock_noticard_opacity"

    const-string v5, "Int"

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "voicecall_type2"

    const-string v5, "Int"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "lock_adaptive_color"

    const-string v5, "Int"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "lock_clock_adaptive_colors"

    const-string v5, "String"

    const/4 v6, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "roaming_clock_option"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "face_widgets_option"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "lockscreen_notifications_option"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "lockscreen_minimizing_notification"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "lockstar_enabled"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "notification_text_color_inversion"

    const-string v5, "Int"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "knox_finger_print_plus"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "Global"

    const-string v4, "mobile_data_question"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "Global"

    const-string v4, "notification_freeform_menuitem"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "Global"

    const-string v4, "navigationbar_unlock_with_home_button"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "Secure"

    const-string v4, "user_setup_complete"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "Secure"

    const-string v4, "isBikeMode"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "missing_phone_lock"

    const-string v5, "String"

    const/4 v6, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "screen_transition_effect"

    const-string v5, "Int"

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_FINGERPRINT_UNLOCK_VI:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "Secure"

    const-string v4, "fingerprint_always_on"

    const-string v5, "Int"

    sget-boolean v1, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_SEC_WOF:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "Secure"

    const-string v4, "fingerprint_always_on_notification"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "use_iris_firstlock"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "Secure"

    const-string v4, "face_without_swipe_to_unlock"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "Secure"

    const-string v4, "intelligentscan_without_swipe_to_unlock"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "Secure"

    const-string v4, "iris_stay_on_lock_screen"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "Secure"

    const-string v4, "face_stay_on_lock_screen"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "Secure"

    const-string v4, "intelligentscan_stay_on_lock_screen"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "Secure"

    const-string v4, "display_cutout_hide_notch"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "Secure"

    const-string v4, "enable_reserve_max_mode"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "covert_on"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "screen_brightness_mode"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "display_outdoor_mode"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "shown_max_brightness_dialog"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "pms_notification_panel_brightness_adjustment"

    const-string v5, "Int"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    sget-boolean v0, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_INDICATOR_HIDE_NETWORK_INFORMATION:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "status_bar_show_network_information"

    const-string v5, "Int"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "lock_shortcut_type"

    const-string v5, "String"

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "lift_to_wake"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "Global"

    const-string v4, "mode_ringer_time_on"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "reduce_animations"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "haptic_feedback_enabled"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "any_screen_running"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "Global"

    const-string v4, "sehome_portrait_mode_only"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "lock_screen_allow_rotation"

    const-string v5, "Int"

    sget-boolean v1, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "Global"

    const-string v4, "call_auto_rotation"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_GESTURE:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "Global"

    const-string v4, "navigation_bar_gesture_while_hidden"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "Secure"

    const-string v4, "accessibility_display_magnification_navbar_enabled"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "show_a11y_button"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "any_screen_enabled"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "one_handed_op_wakeup_type"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    :cond_1
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_BIXBY_ON_POWER_KEY:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "Global"

    const-string v4, "power_key_mapping"

    const-string v5, "Int"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    :cond_2
    sget-boolean v0, Lcom/android/systemui/Rune;->IS_ADAPTIVE_BRIGHTNESS_AVAILABLE:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "adaptive_brightness"

    const-string v5, "Int"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    new-instance v8, Lcom/android/systemui/util/SettingsHelper$Item;

    const-string v3, "Secure"

    const-string v4, "enabled_accessibility_services"

    const-string v5, "String"

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->add(Lcom/android/systemui/util/SettingsHelper$Item;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    invoke-virtual {v0, p2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->dumpAll(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public forceBroadcastWhiteKeyguardWallpaper()V
    .locals 1

    const-string v0, "white_lockscreen_wallpaper"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/util/SettingsHelper;->broadcastChange(Landroid/net/Uri;)V

    return-void
.end method

.method public getAODServiceBoxPageGravity()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "aod_servicebox_page_gravity"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getActiveThemePackage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "current_sec_active_themepackage"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFMMMessage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "lock_fmm_Message"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFMMPhone()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "lock_fmm_phone"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHomeTimeZone()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "homecity_timezone"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLockNoticardOpacity()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "lock_noticard_opacity"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getLockShortcutType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "lock_shortcut_type"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const-string v1, "fixed"

    return-object v1
.end method

.method public getLockStarValue()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "lockstar_enabled"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getLockscreenMinimizingNotification()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "lockscreen_minimizing_notification"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getLockscreenWallpaperTransparent()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "lockscreen_wallpaper_transparent"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getLockscreenWallpaperType()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "lockscreen_wallpaper"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getMultiSIMDeviceSIM1On()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "phone1_on"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getMultiSIMDeviceSIM2On()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "phone2_on"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getNDigitsPIN()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "n_digits_pin_enabled"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getNotificationTextColorInversion()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "notification_text_color_inversion"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getOpenThemeNumericFont()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "theme_font_numeric"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceBoxMediaKeyEventFromAod()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "aod_lock_music_media_key_code"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getServiceBoxPageGravity()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "servicebox_page_gravity"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getServiceBoxPageOrder()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "face_widget_order"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceBoxSharePageName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "lockscreen_aod_servicebox_page"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSharedDeviceEnabled()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "shared_device_status"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getShortcutAppList()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "lock_application_shortcut"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceCallType(I)I
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "voicecall_type"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "voicecall_type2"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    return v0
.end method

.method public is24HourModeEnabled()Z
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "time_12_24"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, "12"

    iget-object v1, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v2

    instance-of v3, v2, Ljava/text/SimpleDateFormat;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Ljava/text/SimpleDateFormat;

    invoke-virtual {v3}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x48

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_1

    const-string v0, "24"

    :cond_1
    const-string v1, "24"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isAccessControlEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "access_control_enabled"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isAccessibilityDisplayMagnificationNaviBarEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "accessibility_display_magnification_navbar_enabled"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isAdaptiveBrightnessEnabled()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "adaptive_brightness"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    return v0
.end method

.method public isAdaptiveColorMode()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "lock_adaptive_color"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isAirplaneModeOn()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "airplane_mode_on"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAodEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "aod_mode"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAutoWipeEnable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "auto_swipe_main_user"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isAutomaticUnlockEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "automatic_unlock"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isBrightnessEyeStrainDialogEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "shown_max_brightness_dialog"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCallScreenRotationAllowed()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "call_auto_rotation"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isDataUsageReminderEnabled()Z
    .locals 4

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_DATA_USAGE_REMINDER:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v3, "data_usage_reminder"

    invoke-virtual {v0, v3}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v2, v0, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1
.end method

.method public isDisplayCutoutHideNotch()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "display_cutout_hide_notch"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isDisplayOutdoorMode()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "display_outdoor_mode"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isDualClock()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "dualclock_menu_settings"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isEasyModeOn()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "easy_mode_switch"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isEmergencyMode()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "emergency_mode"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isEnableReserveMaxMode()Z
    .locals 4

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_POWER_PLANNING_DOWNLOADABLE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "enable_reserve_max_mode"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v3, "emergency_mode"

    invoke-virtual {v0, v3}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    nop

    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v3, "enable_reserve_max_mode"

    invoke-virtual {v0, v3}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v3, "emergency_mode"

    invoke-virtual {v0, v3}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    nop

    :goto_1
    return v1
.end method

.method public isEnabledBiometricUnlockVI()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "screen_transition_effect"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabledFaceRecognitionFirstScreen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEnabledFaceStayOnLock()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "face_stay_on_lock_screen"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isEnabledIntelligentScanStayOnLock()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "intelligentscan_stay_on_lock_screen"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isEnabledIrisOnFirstScreen()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "use_iris_firstlock"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isEnabledIrisStayOnLock()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "iris_stay_on_lock_screen"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isEnabledRapidKeyEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "rapid_key_input"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabledRapidKeyInput()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isVoiceAssistantEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledRapidKeyEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isGoogleTalkbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabledServiceBoxAlarmPage()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "add_info_alarm"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabledServiceBoxMusicPage()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "add_info_music_control"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabledServiceBoxTodaysPage()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "add_info_today_schedule"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabledSmartScanRecognitionFirstScreen()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "intelligentscan_without_swipe_to_unlock"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isEnabledWof()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "fingerprint_always_on"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGoogleTalkbackEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "enabled_accessibility_services"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "(?i).*com.google.android.marvin.talkback.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isHapticFeedbackEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "haptic_feedback_enabled"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHighPerformanceMode()Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_HIGH_PERFORMANCE_MODE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "sem_perfomance_mode"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHomeScreenRotationAllowed()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "sehome_portrait_mode_only"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIconSquicleMode()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "tap_to_icon"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isLiftToWakeEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "lift_to_wake"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isLiveWallpaperEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "lockscreen_wallpaper"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLock2StepVerificationEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "knox_finger_print_plus"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isLockFunctionsEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "lock_function_val"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLockScreenRotationAllowed()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "lock_screen_allow_rotation"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isMagnifierWindowEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "show_a11y_button"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isMobileDataConnectionPopupShowing()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "mobile_data_question"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isNavigationBarForceHide()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "navigationbar_hide_bar_enabled"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNavigationBarGestureWhileHidden()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "navigation_bar_gesture_while_hidden"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isNetworkInfoBlocked()Z
    .locals 3

    sget-boolean v0, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_INDICATOR_HIDE_NETWORK_INFORMATION:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v2, "status_bar_show_network_information"

    invoke-virtual {v0, v2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public isNormalInHighPerformanceMode()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "sem_perfomance_mode"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNotificationIconEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "simple_status_bar"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNotificationIconsOnlyOn()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "lockscreen_minimizing_notification"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isNotificationLaunchFreeformEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "notification_freeform_menuitem"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isOneHandModeEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "any_screen_enabled"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOneHandModeEnabledGestureType()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "one_handed_op_wakeup_type"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOneHandModeRunning()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "any_screen_running"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOpenThemeLook()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->getActiveThemePackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->getLockscreenWallpaperTransparent()I

    move-result v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isPowerSavingMode()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "powersaving_switch"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v2, "psm_switch"

    invoke-virtual {v0, v2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v2, "low_power"

    invoke-virtual {v0, v2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isReduceAnimation()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "reduce_animations"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScreenAutoBrightnessMode()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "screen_brightness_mode"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isScreenOffMemoEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "action_memo_on_off_screen"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "screen_off_memo"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isShortcutsVisibleForMDM()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "set_shortcuts_mode"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShowBatteryPercentInStatusBar()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "display_battery_percentage"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShowButtonBackground()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "show_button_background"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isShowFaceWidgetOnAod()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "face_widgets_option"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isShowFaceWidgetOnKeyguard()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "face_widgets_option"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isShowKeyboardButton()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "show_keyboard_button"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShowNotificationOnKeyguard()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "lock_screen_show_notifications"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v2, "lockscreen_notifications_option"

    invoke-virtual {v0, v2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isShowRoamingClockOnKeyguard()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "roaming_clock_option"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isShownWofNotification()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "fingerprint_always_on_notification"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSideSyncEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "sidesync_source_connect"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSimpleStatusBarEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "simple_status_bar"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSmartStayEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "intelligent_sleep_mode"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSystemBrightnessEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "pms_notification_panel_brightness_adjustment"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isTempMuteSettingValueOn()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "mode_ringer_time_on"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isTypoNotificationOn()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "lockscreen_minimizing_notification"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUltraPowerSavingMode()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "ultra_powersaving_mode"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isUserSetupComplete()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "user_setup_complete"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isVoiceAssistantEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "enabled_accessibility_services"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "(?i).*com.samsung.accessibility/com.samsung.android.app.talkback.TalkBackService.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isWhiteCoverWallpaper()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "white_cover_wallpaper"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isWhiteKeyguardNavigationBar()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "white_lockscreen_navigationbar"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isWhiteKeyguardStatusBar()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "white_lockscreen_statusbar"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isWhiteKeyguardWallpaper()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "white_lockscreen_wallpaper"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onUserSwitched()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/util/SettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/systemui/util/SettingsHelper;->readSettingsDB()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/util/-$$Lambda$SettingsHelper$RxFKn0ieVjwrmKvvyKtE2hhaG_M;

    invoke-direct {v1, p0}, Lcom/android/systemui/util/-$$Lambda$SettingsHelper$RxFKn0ieVjwrmKvvyKtE2hhaG_M;-><init>(Lcom/android/systemui/util/SettingsHelper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public varargs registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "SettingsHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** register listener for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, p2

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/android/systemui/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    aget-object v4, p2, v2

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "SettingsHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Object tried to add another listener : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x5

    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    if-nez v3, :cond_1

    iget-object v4, p0, Lcom/android/systemui/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    aget-object v5, p2, v2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    aget-object v5, p2, v2

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetServiceBoxMediaKeyEvent()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_lock_music_media_key_code"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "aod_lock_music_media_key_code"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public setAODServiceBoxPageGravity(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_servicebox_page_gravity"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "aod_servicebox_page_gravity"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public varargs setAdaptiveColors([I)Z
    .locals 6

    const/4 v0, 0x4

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    const-string v1, "SettingsHelper"

    const-string v3, "setAdaptiveColors() failed ; must contain 4 colors"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    nop

    :goto_0
    if-ge v2, v3, :cond_2

    aget v4, p1, v2

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    if-ge v2, v4, :cond_1

    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "SettingsHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAdaptiveColors "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_clock_adaptive_colors"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    const/4 v2, 0x1

    return v2
.end method

.method public setCallScreenRotationAllowed(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "call_auto_rotation"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setHomeScreenRotationAllowed(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sehome_portrait_mode_only"

    xor-int/lit8 v2, p1, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setHomeTimeZone(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "homecity_timezone"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public setLockScreenRotationAllowed(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/Rune;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_allow_rotation"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public setNavigationBarGestureWhileHidden(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigation_bar_gesture_while_hidden"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setServiceBoxPageGravity(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "servicebox_page_gravity"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "servicebox_page_gravity"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public setServiceBoxSharePageName(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_aod_servicebox_page"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "lockscreen_aod_servicebox_page"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setStringValue(Ljava/lang/String;)V

    return-void
.end method

.method public setShowBatteryPercentInStatusBar(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_battery_percentage"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "display_battery_percentage"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public setShownWofNotification(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_always_on_notification"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "fingerprint_always_on_notification"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public setTempMuteSettingValue(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mode_ringer_time_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setVoiceCallType(II)V
    .locals 3

    const/4 v0, -0x2

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voicecall_type"

    invoke-static {v1, v2, p1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "voicecall_type"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voicecall_type2"

    invoke-static {v1, v2, p1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "voicecall_type2"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    :goto_0
    return-void
.end method

.method public setWhiteKeyguardNavigationBar(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "white_lockscreen_navigationbar"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "white_lockscreen_navigationbar"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public setWhiteKeyguardStatusBar(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "white_lockscreen_statusbar"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "white_lockscreen_statusbar"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public setWhiteKeyguardWallpaper(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "white_lockscreen_wallpaper"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mItemLists:Lcom/android/systemui/util/SettingsHelper$ItemMap;

    const-string v1, "white_lockscreen_wallpaper"

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->get(Ljava/lang/String;)Lcom/android/systemui/util/SettingsHelper$Item;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "SettingsHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** unregister listener for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/systemui/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    :goto_1
    if-ltz v4, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p1, :cond_0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    iget-object v5, p0, Lcom/android/systemui/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
