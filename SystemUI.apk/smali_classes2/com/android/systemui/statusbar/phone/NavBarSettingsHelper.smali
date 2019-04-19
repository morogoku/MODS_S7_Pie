.class public Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;
.super Ljava/lang/Object;
.source "NavBarSettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;,
        Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$OnChangedCallback;
    }
.end annotation


# instance fields
.field private mCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$OnChangedCallback;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mItemLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

.field private mNavigationBarSettingsObserver:Landroid/database/ContentObserver;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$1;-><init>(Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mNavigationBarSettingsObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    new-instance v0, Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->setUpSettingsItem()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->readSettingsDB()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->registerSettingsObserver()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;)Lcom/android/systemui/statusbar/phone/util/LogWrapper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->broadcastChange(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;)Landroid/database/ContentObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mNavigationBarSettingsObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method private broadcastChange(Landroid/net/Uri;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "NavBarSettingsHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** broadcastChange for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    move-object v0, v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v2, "NavBarSettingsHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*** broadcastChange tempList.size() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$OnChangedCallback;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$OnChangedCallback;->onChanged(Landroid/net/Uri;)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v4, "NavBarSettingsHelper"

    const-string v5, "*** broadcastChange listener == null"

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v2, "NavBarSettingsHelper"

    const-string v3, "*** broadcastChange tempList == null"

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private readSettingsDB()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "NavBarSettingsHelper"

    const-string v2, "readSettingsDB()"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->read(Landroid/content/ContentResolver;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private registerSettingsObserver()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "NavBarSettingsHelper"

    const-string v2, "registerSettingsObserver()"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->registerObserver()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setUpSettingsItem()V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;

    const-string v3, "Global"

    const-string v4, "navigationbar_key_order"

    const-string v5, "Int"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;-><init>(Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;

    const-string v3, "Global"

    const-string v4, "navigationbar_color"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;-><init>(Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;

    const-string v3, "Global"

    const-string v4, "navigationbar_current_color"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;-><init>(Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;

    const-string v3, "Global"

    const-string v4, "navigationbar_use_theme_default"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;-><init>(Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;

    const-string v3, "Global"

    const-string v4, "navigationbar_theme_color"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;-><init>(Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;

    const-string v3, "Global"

    const-string v4, "navigationbar_hide_bar"

    const-string v5, "Int"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;-><init>(Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;

    const-string v3, "Global"

    const-string v4, "navigationbar_hide_bar_enabled"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;-><init>(Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;

    const-string v3, "Global"

    const-string v4, "navigation_bar_gesture_while_hidden"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;-><init>(Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;

    const-string v3, "Global"

    const-string v4, "navigation_bar_gesture_hint"

    const-string v5, "Int"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;-><init>(Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;

    const-string v3, "Global"

    const-string v4, "navigation_bar_gesture_disabled_by_policy"

    const-string v5, "Int"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;-><init>(Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;

    const-string v3, "System"

    const-string v4, "any_screen_enabled"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;-><init>(Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;

    const-string v3, "Secure"

    const-string v4, "car_mode_blocking_system_key"

    const-string v5, "Int"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;-><init>(Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getCarModeBlockingSystemKey()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNavigationBarColor()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getNavigationBarGestureDisabledByPolicy()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getNavigationBarGestureEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNavigationBarGestureHint()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNavigationBarHideEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNavigationBarHideSetting()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNavigationBarUseThemeDefault()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getOneHandModeEnabled()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->getIntValue()I

    move-result v0

    return v0
.end method

.method public isNavBarButtonOrderDefault()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->getIntValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method public onUserSwitched()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mNavigationBarSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->readSettingsDB()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->registerSettingsObserver()V

    return-void
.end method

.method public varargs registerCallback(Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "NavBarSettingsHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** register listener for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    array-length v0, p2

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    aget-object v5, p2, v3

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v6, "NavBarSettingsHelper"

    const-string v7, "Object tried to add another listener"

    new-instance v8, Ljava/lang/Exception;

    const-string v9, "Called by"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    if-nez v4, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    aget-object v6, p2, v3

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    aget-object v6, p2, v3

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    nop

    :goto_2
    move v1, v2

    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v3, "NavBarSettingsHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mListeners["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v1, 0x1

    goto :goto_2

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setNavigationBarColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "navigationbar_color"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public setNavigationBarCurrentColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "navigationbar_current_color"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public setNavigationBarGestureDisabledByPolicy(Z)V
    .locals 3

    move v0, p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "navigation_bar_gesture_disabled_by_policy"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public setNavigationBarHideEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "navigationbar_hide_bar_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public setNavigationBarThemeColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "navigationbar_theme_color"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public setNavigationBarUseThemeDefault(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "navigationbar_use_theme_default"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public unregisterAllCallbacks()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v1, "NavBarSettingsHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*** unregister all listener size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    :goto_1
    if-ltz v4, :cond_0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v3, "NavBarSettingsHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mListeners["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarSettingsHelper;->mLogWrapper:Lcom/android/systemui/statusbar/phone/util/LogWrapper;

    const-string v2, "NavBarSettingsHelper"

    const-string v3, "mListeners doesn\'t have any listeners"

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
